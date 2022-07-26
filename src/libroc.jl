# Copyright © 2022 Alexander L. Hayes
# Copyright © ???? ??????????????????

module LIBROC

# TODO(hayesall): Fix this and make compatible across OS.
libroc64 = joinpath("src", "libroc64.so")


function delong_auc(y_true::Vector{Int64}, y_pred::Vector{Float64})

    pos = y_pred[y_true .== 1]
    neg = y_pred[y_true .== 0]

    return _delong_auc(neg, pos)
end

function _delong_auc(neg::Vector{Float64}, pos::Vector{Float64})

    auc = Ref{Float64}(0.0)

    # TODO(hayesall): The "magic number" 1 might be the "if positivity is for larger values, 0 otherwise"

    # TODO(hayesall): The `auc_var` does not appear to be the same as
    #                 the `SE` value reported by the Java tool.
    auc_var = Ref{Float64}(0.0)

    ccall((:__roc_nonparametric_MOD_delonganddelong, libroc64),
        Cvoid,
        (Ref{Int64}, Ref{Int64}, Ref{Int64}, Ptr{Float64}, Ptr{Float64}, Ref{Float64}, Ref{Float64}),
        length(neg), length(pos), 1, neg, pos, auc, auc_var
    )

    return auc.x
end

end # module
