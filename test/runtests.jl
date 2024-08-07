using LeMoPath

using Aqua: test_all

using Test: @test

test_all(LeMoPath; deps_compat = false)

# ----------------------------------------------------------------------------------------------- #

# ---- #

for sl in (1, 2, 3)

    LeMoPath.wait("missing_file", 2; sl)

end

# ---- #

LeMoPath.open(homedir())
