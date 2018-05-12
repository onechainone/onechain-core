onechain-core 
==============
* [Getting Started](#getting-started)
* [Support](#support)
* [Using the API](#using-the-api)
* [Accessing restricted API's](#accessing-restricted-apis)
* [FAQ](#faq)
* [License](#license)


**NOTE:** The official onechain-core git repository location, default branch, and submodule remotes were recently changed. Existing
repositories can be updated with the following steps:

    git remote set-url origin https://github.com/onechainone/onechain-core.git
    git checkout master
    git remote set-head origin --auto
    git pull
    git submodule sync --recursive
    git submodule update --init --recursive

Getting Started
---------------

We recommend building on Ubuntu 16.04 LTS, and the build dependencies may be installed with:

    sudo apt-get update
    sudo apt-get install autoconf cmake git libboost-all-dev libssl-dev

To build after all dependencies are installed:

    git clone https://github.com/onechainone/onechain-core.git
    cd onechain-core
    chmod 755 libraries/fc/vendor/secp256k1-zkp/autogen.sh
    mkdir build
    cd build
    cmake ..
    make -j 2

To set up a onechain node,you need to do:

    cd build
    mkdir programs/witness_node/one-rpc-mainnet/data -p
    cp ../config.ini programs/witness_node/one-rpc-mainnet/data/
    cp ../genesis.json programs/witness_node/one-rpc-mainnet/
    cd programs/witness_node 
    ./witness_node --data-dir=one-rpc-mainnet/data --genesis-json=one-rpc-mainnet/genesis.json


**NOTE:** onechain-core requires an [OpenSSL](https://www.openssl.org/) version in the 1.0.x series. OpenSSL 1.1.0 and newer are NOT supported. If your system OpenSSL version is newer, then you will need to manually provide an older version of OpenSSL and specify it to CMake using `-DOPENSSL_INCLUDE_DIR`, `-DOPENSSL_SSL_LIBRARY`, and `-DOPENSSL_CRYPTO_LIBRARY`.

**NOTE:** onechain-core requires a [Boost](http://www.boost.org/) version in the range [1.57, 1.60]. Versions earlier than
1.57 or newer than 1.60 are NOT supported. If your system Boost version is newer, then you will need to manually build
an older version of Boost and specify it to CMake using `DBOOST_ROOT`.

After building, the witness node can be launched with:

    ./programs/witness_node/witness_node

The node will automatically create a data directory including a config file. It may take several hours to fully synchronize
the blockchain. After syncing, you can exit the node using Ctrl+C and setup the command-line wallet by editing
`witness_node_data_dir/config.ini` as follows:

    rpc-endpoint = 127.0.0.1:8090

After starting the witness node again, in a separate terminal you can run:

    ./programs/cli_wallet/cli_wallet

Set your inital password:

    >>> set_password <PASSWORD>
    >>> unlock <PASSWORD>

To import your initial balance:

    >>> import_balance <ACCOUNT NAME> [<WIF_KEY>] true

If you send private keys over this connection, `rpc-endpoint` should be bound to localhost for security.


Using the API
-------------

We provide several different API's.  Each API has its own ID.
When running `witness_node`, initially two API's are available:
API 0 provides read-only access to the database, while API 1 is
used to login and gain access to additional, restricted API's.

Here is an example using `wscat` package from `npm` for websockets:

    $ npm install -g wscat
    $ wscat -c ws://127.0.0.1:8090
    > {"id":1, "method":"call", "params":[0,"get_accounts",[["1.2.0"]]]}
    < {"id":1,"result":[{"id":"1.2.0","annotations":[],"membership_expiration_date":"1969-12-31T23:59:59","registrar":"1.2.0","referrer":"1.2.0","lifetime_referrer":"1.2.0","network_fee_percentage":2000,"lifetime_referrer_fee_percentage":8000,"referrer_rewards_percentage":0,"name":"committee-account","owner":{"weight_threshold":1,"account_auths":[],"key_auths":[],"address_auths":[]},"active":{"weight_threshold":6,"account_auths":[["1.2.5",1],["1.2.6",1],["1.2.7",1],["1.2.8",1],["1.2.9",1],["1.2.10",1],["1.2.11",1],["1.2.12",1],["1.2.13",1],["1.2.14",1]],"key_auths":[],"address_auths":[]},"options":{"memo_key":"GPH1111111111111111111111111111111114T1Anm","voting_account":"1.2.0","num_witness":0,"num_committee":0,"votes":[],"extensions":[]},"statistics":"2.7.0","whitelisting_accounts":[],"blacklisting_accounts":[]}]}

We can do the same thing using an HTTP client such as `curl` for API's which do not require login or other session state:

    $ curl --data '{"jsonrpc": "2.0", "method": "call", "params": [0, "get_accounts", [["1.2.0"]]], "id": 1}' http://127.0.0.1:8090/rpc
    {"id":1,"result":[{"id":"1.2.0","annotations":[],"membership_expiration_date":"1969-12-31T23:59:59","registrar":"1.2.0","referrer":"1.2.0","lifetime_referrer":"1.2.0","network_fee_percentage":2000,"lifetime_referrer_fee_percentage":8000,"referrer_rewards_percentage":0,"name":"committee-account","owner":{"weight_threshold":1,"account_auths":[],"key_auths":[],"address_auths":[]},"active":{"weight_threshold":6,"account_auths":[["1.2.5",1],["1.2.6",1],["1.2.7",1],["1.2.8",1],["1.2.9",1],["1.2.10",1],["1.2.11",1],["1.2.12",1],["1.2.13",1],["1.2.14",1]],"key_auths":[],"address_auths":[]},"options":{"memo_key":"GPH1111111111111111111111111111111114T1Anm","voting_account":"1.2.0","num_witness":0,"num_committee":0,"votes":[],"extensions":[]},"statistics":"2.7.0","whitelisting_accounts":[],"blacklisting_accounts":[]}]}

API 0 is accessible using regular JSON-RPC:

    $ curl --data '{"jsonrpc": "2.0", "method": "get_accounts", "params": [["1.2.0"]], "id": 1}' http://127.0.0.1:8090/rpc

Accessing restricted API's
--------------------------

You can restrict API's to particular users by specifying an `apiaccess` file in `config.ini`.  Here is an example `apiaccess` file which allows
user `bytemaster` with password `supersecret` to access four different API's, while allowing any other user to access the three public API's
necessary to use the wallet:

    {
       "permission_map" :
       [
          [
             "bytemaster",
             {
                "password_hash_b64" : "9e9GF7ooXVb9k4BoSfNIPTelXeGOZ5DrgOYMj94elaY=",
                "password_salt_b64" : "INDdM6iCi/8=",
                "allowed_apis" : ["database_api", "network_broadcast_api", "history_api", "network_node_api"]
             }
          ],
          [
             "*",
             {
                "password_hash_b64" : "*",
                "password_salt_b64" : "*",
                "allowed_apis" : ["database_api", "network_broadcast_api", "history_api"]
             }
          ]
       ]
    }

Passwords are stored in `base64` as salted `sha256` hashes.  A simple Python script, `saltpass.py` is avaliable to obtain hash and salt values from a password.
A single asterisk `"*"` may be specified as username or password hash to accept any value.

With the above configuration, here is an example of how to call `add_node` from the `network_node` API:

    {"id":1, "method":"call", "params":[1,"login",["bytemaster", "supersecret"]]}
    {"id":2, "method":"call", "params":[1,"network_node",[]]}
    {"id":3, "method":"call", "params":[2,"add_node",["127.0.0.1:9090"]]}

Note, the call to `network_node` is necessary to obtain the correct API identifier for the network API.  It is not guaranteed that the network API identifier will always be `2`.


FAQ
---

- Is there a way to generate help with parameter names and method descriptions?

    Yes. Documentation of the code base, including APIs, can be generated using Doxygen. Simply run `doxygen` in this directory.

    If both Doxygen and perl are available in your build environment, the CLI wallet's `help` and `gethelp`
    commands will display help generated from the doxygen documentation.

    If your CLI wallet's `help` command displays descriptions without parameter names like
        `signed_transaction transfer(string, string, string, string, string, bool)`
    it means CMake was unable to find Doxygen or perl during configuration.  If found, the
    output should look like this:
        `signed_transaction transfer(string from, string to, string amount, string asset_symbol, string memo, bool broadcast)`

- Is there a way to allow external program to drive `cli_wallet` via websocket, JSONRPC, or HTTP?

    Yes. External programs may connect to the CLI wallet and make its calls over a websockets API. To do this, run the wallet in
    server mode, i.e. `cli_wallet -s "127.0.0.1:9999"` and then have the external program connect to it over the specified port
    (in this example, port 9999).

- Is there a way to access methods which require login over HTTP?

    No.  Login is inherently a stateful process (logging in changes what the server will do for certain requests, that's kind
    of the point of having it).  If you need to track state across HTTP RPC calls, you must maintain a session across multiple
    connections.  This is a famous source of security vulnerabilities for HTTP applications.  Additionally, HTTP is not really
    designed for "server push" notifications, and we would have to figure out a way to queue notifications for a polling client.

    Websockets solves all these problems.  If you need to access Graphene's stateful methods, you need to use Websockets.

- What is the meaning of `a.b.c` numbers?

    The first number specifies the *space*.  Space 1 is for protocol objects, 2 is for implementation objects.
    Protocol space objects can appear on the wire, for example in the binary form of transactions.
    Implementation space objects cannot appear on the wire and solely exist for implementation
    purposes, such as optimization or internal bookkeeping.

    The second number specifies the *type*.  The type of the object determines what fields it has. 

    The third number specifies the *instance*.  The instance of the object is different for each individual
    object.

- The answer to the previous question was really confusing.  Can you make it clearer?

    All account ID's are of the form `1.2.x`.  If you were the 9735th account to be registered,
    your account's ID will be `1.2.9735`.  Account `0` is special (it's the "committee account,"
    which is controlled by the committee members and has a few abilities and restrictions other accounts
    do not).

    All asset ID's are of the form `1.3.x`.  If you were the 29th asset to be registered,
    your asset's ID will be `1.3.29`.  Asset `0` is special (it's BTS, which is considered the "core asset").

    The first and second number together identify the kind of thing you're talking about (`1.2` for accounts,
    `1.3` for assets).  The third number identifies the particular thing.

- How do I get the `network_add_nodes` command to work?  Why is it so complicated?

    You need to follow the instructions in the "Accessing restricted API's" section to
    allow a username/password access to the `network_node` API.  Then you need
    to pass the username/password to the `cli_wallet` on the command line or in a config file.

    It's set up this way so that the default configuration is secure even if the RPC port is
    publicly accessible.  It's fine if your `witness_node` allows the general public to query
    the database or broadcast transactions (in fact, this is how the hosted web UI works).  It's
    less fine if your `witness_node` allows the general public to control which p2p nodes it's
    connecting to.  Therefore the API to add p2p connections needs to be set up with proper access
    controls.
 
License
-------
onechain-core Core is under the MIT license. See [LICENSE](https://github.com/onechainone/onechain-core/LICENSE.txt)
for more information.
