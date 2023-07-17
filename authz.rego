# The "system" namespace is reserved for internal use
# by OPA. Authorization policy must be defined under
# system.authz as follows:
package system.authz

default allow := true

# default allow := false 

# allow {
#     input.identity == "ul-secret-token"
# }
