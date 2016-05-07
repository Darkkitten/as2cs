compilation_unit := import_definition_place, namespace_declaration, 
    LBRACE, class_definition_place, RBRACE
IMPORT := "using"
NAMESPACE := "namespace"

class_base_clause := ts, COLON, class_base
class_extends := ts, class_identifier
interface_first := ts, interface_identifier
interface_type_list_follows := ts?, COMMA, ts, interface_identifier, interface_next_place
FINAL := "sealed"

function_modified := ts, namespace_modifiers, return_type, ts, function_signature
function_default := ts, return_type, ts, function_signature

variable_declaration := ts?, argument_declaration
argument_declared := data_type, ts, identifier
argument_initialized := data_type, ts, identifier, argument_initializer
collection_prefix := LIST
ARRAY_LIST := "ArrayList"
LIST := "List"
HASH_TABLE := "Hashtable"
STRING_HASH_TABLE := "Hashtable"
strict_equal_expression := REFERENCE_EQUAL, ts?, LPAREN, ts?, expression, COMMA, ts, expression, ts?, RPAREN
strict_not_equal_expression := LNOT, ts?, REFERENCE_EQUAL, ts?, LPAREN, ts?, expression, COMMA, ts, expression, ts?, RPAREN
REFERENCE_EQUAL := "object.ReferenceEquals"
contains_expression := 
    container_expression, ts?, DOT, ts?, CONTAINS, ts?, LPAREN, ts?, contained_expression, ts?, RPAREN
contains_not_expression := LNOT, ts?, 
    container_expression, ts?, DOT, ts?, CONTAINS, ts?, LPAREN, ts?, contained_expression, ts?, RPAREN
CONTAINS := "Contains"
container_expression := container_address
container_address := identifier, container_subaddress*
container_subaddress := ts?, DOT, ts?, container_identifier
container_identifier := ?-CONTAINS, alphaunder, alphanumunder*

float_format := float, float_suffix

literal_keyword := NULL
INTEGER := "int"
STRING := "string"
BOOLEAN := "bool"
FLOAT := "float"
float_suffix := "f" / "F"
OBJECT := "object"
UNDEFINED := NULL

