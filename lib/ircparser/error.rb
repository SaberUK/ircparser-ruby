# IRCParser - Internet Relay Chat Message Parser
#
#   Copyright (C) 2015-2020 Sadie Powell <sadie@witchery.services>
#
# Permission to use, copy, modify, and/or distribute this software for any purpose with or without
# fee is hereby granted, provided that the above copyright notice and this permission notice appear
# in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS
# SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
# AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
# NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE
# OF THIS SOFTWARE.

module IRCParser

	# Public: The exception which is thrown when parsing fails.
	class Error < StandardError

		# Public: The value which failed to parse correctly.
		attr_reader :value

		# Public: Initialises a new parse error with the specified invalid value.
		#
		# value - The value which failed to parse correctly.
		def initialize value
			@value = value
		end

		# Public: The reason this error was raised.
		def to_s
			return "#{@value} -- #{super}"
		end
	end
end
