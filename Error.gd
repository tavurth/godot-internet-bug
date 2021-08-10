extends Node2D

const error_names = [
	"OK", # error value of zero is not an error
	"FAILED",
	"ERR_UNAVAILABLE",
	"ERR_UNCONFIGURED",
	"ERR_UNAUTHORIZED",
	"ERR_PARAMETER_RANGE_ERROR",
	"ERR_OUT_OF_MEMORY",
	"ERR_FILE_NOT_FOUND",
	"ERR_FILE_BAD_DRIVE",
	"ERR_FILE_BAD_PATH",
	"ERR_FILE_NO_PERMISSION",
	"ERR_FILE_ALREADY_IN_USE",
	"ERR_FILE_CANT_OPEN",
	"ERR_FILE_CANT_WRITE",
	"ERR_FILE_CANT_READ",
	"ERR_FILE_UNRECOGNIZED",
	"ERR_FILE_CORRUPT",
	"ERR_FILE_MISSING_DEPENDENCIES",
	"ERR_FILE_EOF",
	"ERR_CANT_OPEN",
	"ERR_CANT_CREATE",
	"ERR_QUERY_FAILED",
	"ERR_ALREADY_IN_USE",
	"ERR_LOCKED",
	"ERR_TIMEOUT",
	"ERR_CANT_CONNECT",
	"ERR_CANT_RESOLVE",
	"ERR_CONNECTION_ERROR",
	"ERR_CANT_ACQUIRE_RESOURCE",
	"ERR_CANT_FORK",
	"ERR_INVALID_DATA",
	"ERR_INVALID_PARAMETER",
	"ERR_ALREADY_EXISTS",
	"ERR_DOES_NOT_EXIST",
	"ERR_DATABASE_CANT_READ",
	"ERR_DATABASE_CANT_WRITE",
	"ERR_COMPILATION_FAILED",
	"ERR_METHOD_NOT_FOUND",
	"ERR_LINK_FAILED",
	"ERR_SCRIPT_FAILED",
	"ERR_CYCLIC_LINK",
	"ERR_INVALID_DECLARATION",
	"ERR_DUPLICATE_SYMBOL",
	"ERR_PARSE_ERROR",
	"ERR_BUSY",
	"ERR_SKIP",
	"ERR_HELP",
	"ERR_BUG",
	"ERR_PRINTER_ON_FIRE"
]

func string_name(error):
	return error_names[error]
