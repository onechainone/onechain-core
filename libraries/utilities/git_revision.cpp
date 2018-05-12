#include <stdint.h>
#include <graphene/utilities/git_revision.hpp>

#define GRAPHENE_GIT_REVISION_SHA "5e67be7d6d9f64f1f80e33f964934d61d9c0618f"
#define GRAPHENE_GIT_REVISION_UNIX_TIMESTAMP 1499717049
#define GRAPHENE_GIT_REVISION_DESCRIPTION "2.0.170606-15-g5e67be7"

namespace graphene { namespace utilities {

const char* const git_revision_sha = GRAPHENE_GIT_REVISION_SHA;
const uint32_t git_revision_unix_timestamp = GRAPHENE_GIT_REVISION_UNIX_TIMESTAMP;
const char* const git_revision_description = GRAPHENE_GIT_REVISION_DESCRIPTION;

} } // end namespace graphene::utilities
