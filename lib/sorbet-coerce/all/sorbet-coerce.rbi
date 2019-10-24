# typed: true
# sorbet-coerce-0.1.3
#   https://github.com/chanzuckerberg/sorbet-coerce
module T
  module Coerce
    extend T::Sig
    extend T::Generic

    Elem = type_member

    sig { params(args: T.untyped).returns(Elem) }
    def from(args); end
  end

  module Private
    module Types
      class TypeAlias
        def aliased_type; end
      end
    end
  end
end
