# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `protocol-http1` gem.
# Please instead update this file by running `bin/tapioca gem protocol-http1`.

# source://protocol-http1//lib/protocol/http1/version.rb#6
module Protocol; end

# source://protocol-http1//lib/protocol/http1/version.rb#7
module Protocol::HTTP1; end

# source://protocol-http1//lib/protocol/http1/error.rb#24
class Protocol::HTTP1::BadHeader < ::Protocol::HTTP1::Error; end

# The request was parsed correctly, but was invalid for some other reason.
#
# source://protocol-http1//lib/protocol/http1/error.rb#21
class Protocol::HTTP1::BadRequest < ::Protocol::HTTP1::Error; end

# source://protocol-http1//lib/protocol/http1/error.rb#27
class Protocol::HTTP1::BadResponse < ::Protocol::HTTP1::Error; end

# source://protocol-http1//lib/protocol/http1/body/chunked.rb#10
module Protocol::HTTP1::Body; end

# source://protocol-http1//lib/protocol/http1/body/chunked.rb#11
class Protocol::HTTP1::Body::Chunked < ::Protocol::HTTP::Body::Readable
  # @return [Chunked] a new instance of Chunked
  #
  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#14
  def initialize(stream, headers); end

  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#28
  def close(error = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#24
  def empty?; end

  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#65
  def inspect; end

  # Follows the procedure outlined in https://tools.ietf.org/html/rfc7230#section-4.1.3
  #
  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#39
  def read; end

  private

  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#75
  def read_line; end

  # @return [Boolean]
  #
  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#71
  def read_line?; end

  # source://protocol-http1//lib/protocol/http1/body/chunked.rb#79
  def read_trailer; end
end

# source://protocol-http1//lib/protocol/http1/body/chunked.rb#12
Protocol::HTTP1::Body::Chunked::CRLF = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/body/fixed.rb#11
class Protocol::HTTP1::Body::Fixed < ::Protocol::HTTP::Body::Readable
  # @return [Fixed] a new instance of Fixed
  #
  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#12
  def initialize(stream, length); end

  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#25
  def close(error = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#21
  def empty?; end

  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#56
  def inspect; end

  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#48
  def join; end

  # Returns the value of attribute length.
  #
  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#18
  def length; end

  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#35
  def read; end

  # Returns the value of attribute remaining.
  #
  # source://protocol-http1//lib/protocol/http1/body/fixed.rb#19
  def remaining; end
end

# source://protocol-http1//lib/protocol/http1/body/remainder.rb#11
class Protocol::HTTP1::Body::Remainder < ::Protocol::HTTP::Body::Readable
  # block_size may be removed in the future. It is better managed by stream.
  #
  # @return [Remainder] a new instance of Remainder
  #
  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#15
  def initialize(stream); end

  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#38
  def call(stream); end

  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#23
  def close(error = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#19
  def empty?; end

  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#50
  def inspect; end

  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#46
  def join; end

  # TODO this is a bit less efficient in order to maintain compatibility with `IO`.
  #
  # source://protocol-http1//lib/protocol/http1/body/remainder.rb#31
  def read; end
end

# source://protocol-http1//lib/protocol/http1/body/remainder.rb#12
Protocol::HTTP1::Body::Remainder::BLOCK_SIZE = T.let(T.unsafe(nil), Integer)

# source://protocol-http1//lib/protocol/http1/connection.rb#25
Protocol::HTTP1::CHUNKED = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#28
Protocol::HTTP1::CLOSE = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#27
Protocol::HTTP1::CONNECTION = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#22
Protocol::HTTP1::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#46
class Protocol::HTTP1::Connection
  # @return [Connection] a new instance of Connection
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#51
  def initialize(stream, persistent = T.unsafe(nil)); end

  # Close the connection and underlying stream.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#113
  def close; end

  # The number of requests processed.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#65
  def count; end

  # source://protocol-http1//lib/protocol/http1/connection.rb#401
  def extract_content_length(headers); end

  # Effectively close the connection and return the underlying IO.
  #
  # @return [IO] the underlying non-blocking IO.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#102
  def hijack!; end

  # Whether the connection is persistent.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#62
  def persistent; end

  # @return [Boolean]
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#67
  def persistent?(version, method, headers); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#462
  def read_body(headers, remainder = T.unsafe(nil)); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#378
  def read_chunked_body(headers); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#382
  def read_fixed_body(length); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#390
  def read_head_body(length); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#195
  def read_headers; end

  # source://protocol-http1//lib/protocol/http1/connection.rb#155
  def read_line; end

  # @return [Boolean]
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#151
  def read_line?; end

  # source://protocol-http1//lib/protocol/http1/connection.rb#386
  def read_remainder_body; end

  # source://protocol-http1//lib/protocol/http1/connection.rb#159
  def read_request; end

  # source://protocol-http1//lib/protocol/http1/connection.rb#447
  def read_request_body(method, headers); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#179
  def read_response(method); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#411
  def read_response_body(method, status, headers); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#394
  def read_tunnel_body; end

  # Returns the value of attribute stream.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#59
  def stream; end

  # source://protocol-http1//lib/protocol/http1/connection.rb#347
  def write_body(version, body, head = T.unsafe(nil), trailer = T.unsafe(nil)); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#327
  def write_body_and_close(body, head); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#293
  def write_chunked_body(body, head, trailer = T.unsafe(nil)); end

  # Write the appropriate header for connection persistence.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#88
  def write_connection_header(version); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#254
  def write_empty_body(body); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#261
  def write_fixed_length_body(body, length, head); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#131
  def write_headers(headers); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#117
  def write_request(authority, method, path, version, headers); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#124
  def write_response(version, status, headers, reason = T.unsafe(nil)); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#234
  def write_tunnel_body(version, body = T.unsafe(nil)); end

  # @param protocol [String] the protocol to upgrade to.
  #
  # source://protocol-http1//lib/protocol/http1/connection.rb#213
  def write_upgrade_body(protocol, body = T.unsafe(nil)); end

  # source://protocol-http1//lib/protocol/http1/connection.rb#96
  def write_upgrade_header(upgrade); end
end

# source://protocol-http1//lib/protocol/http1/connection.rb#399
Protocol::HTTP1::Connection::CONNECT = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#47
Protocol::HTTP1::Connection::CRLF = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#398
Protocol::HTTP1::Connection::HEAD = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#48
Protocol::HTTP1::Connection::HTTP10 = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#49
Protocol::HTTP1::Connection::HTTP11 = T.let(T.unsafe(nil), String)

# The specified content length and the given content's length do not match.
#
# source://protocol-http1//lib/protocol/http1/error.rb#17
class Protocol::HTTP1::ContentLengthError < ::Protocol::HTTP1::Error; end

# source://protocol-http1//lib/protocol/http1/error.rb#10
class Protocol::HTTP1::Error < ::Protocol::HTTP::Error; end

# HTTP/1.x header parser:
#
# source://protocol-http1//lib/protocol/http1/connection.rb#39
Protocol::HTTP1::FIELD_NAME = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/connection.rb#40
Protocol::HTTP1::FIELD_VALUE = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/connection.rb#41
Protocol::HTTP1::HEADER = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/connection.rb#31
Protocol::HTTP1::HOST = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/error.rb#13
class Protocol::HTTP1::InvalidRequest < ::Protocol::HTTP1::Error; end

# source://protocol-http1//lib/protocol/http1/connection.rb#29
Protocol::HTTP1::KEEP_ALIVE = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#36
Protocol::HTTP1::REQUEST_LINE = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/reason.rb#10
module Protocol::HTTP1::Reason; end

# source://protocol-http1//lib/protocol/http1/reason.rb#11
Protocol::HTTP1::Reason::DESCRIPTIONS = T.let(T.unsafe(nil), Hash)

# HTTP/1.x request line parser:
#
# source://protocol-http1//lib/protocol/http1/connection.rb#35
Protocol::HTTP1::TOKEN = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/connection.rb#24
Protocol::HTTP1::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#32
Protocol::HTTP1::UPGRADE = T.let(T.unsafe(nil), String)

# source://protocol-http1//lib/protocol/http1/connection.rb#43
Protocol::HTTP1::VALID_FIELD_NAME = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/connection.rb#44
Protocol::HTTP1::VALID_FIELD_VALUE = T.let(T.unsafe(nil), Regexp)

# source://protocol-http1//lib/protocol/http1/version.rb#8
Protocol::HTTP1::VERSION = T.let(T.unsafe(nil), String)