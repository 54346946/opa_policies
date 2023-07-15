# The "system" namespace is reserved for internal use
# by OPA. Authorization policy must be defined under
# system.authz as follows:
package system.authz

default allow := true

# import future.keywords.in

# # Tokens may defined in policy or pushed into OPA as data.
# tokens := {
#     "ul-secret-token-admin": {
#         "roles": ["admin"]
#     },
#     "ul-secret-token-ult": {
#         "roles": ["Upstream Leadership Team"]
#     },
#     "ul-secret-token-dt": {
#         "roles": ["Dev Team"]
#     }
# }

# default allow := false           # Reject requests by default.

# allow {                         # Allow request if...
#     input.identity == "ul-secret-token"  # Identity is the secret root key.
# }

# allow {                        # Allow request if...
#     tokens[input.identity]     # Identity exists in "tokens".
# }

# allow {                         # Allow request if come from PETHLAB.COM...
#     some user in io.jwt.decode(input.identity)
#     t := trim(user.unique_name, " ")
#     x := split(t, "@")
#     x[1] == "PETHLAB.COM"
# }
