module LeMoPath

function open(pa)

    try

        run(`open --background $pa`)

    catch

        @warn "Could not open $pa."

    end

end

function wait(pa, ma = 4; sl = 1)

    su = 0

    while (su < ma && !ispath(pa))

        sleep(sl)

        @info "Waiting for $pa ($(su += sl) / $ma)"

    end

end

end
