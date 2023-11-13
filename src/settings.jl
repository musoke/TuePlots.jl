Base.@kwdef struct TuePlotsSetting
    width::Any
    width_half::Any
    base_fontsize::Any
    font::Any
end

"""
Dict of available TuePlots settings.

Use with [`MakieCore.Theme`](@ref) or [`get_plotsjl_theme_kwargs`](@ref).
"""
SETTINGS = Dict(
    :ICML => TuePlotsSetting( # 2022
        width = 6.75,
        width_half = 3.25,
        base_fontsize = 9,
        font = "Times",
    ),
    :AISTATS => TuePlotsSetting( # 2023
        width = 6.75,
        width_half = 3.25,
        base_fontsize = 10,
        font = "Times",
    ),
    :NEURIPS => TuePlotsSetting( # 2023
        width = 5.5,
        width_half = nothing,
        base_fontsize = 10,
        font = "Times New Roman",
    ),
    :JMLR => TuePlotsSetting(
        width = 6,
        width_half = nothing,
        base_fontsize = 10.95,
        font = "TeX Computer Modern",
    ),
    :CVPR => TuePlotsSetting( # 2024
        width = 6.875,
        width_half = 3.25,
        base_fontsize = 9,
        font = "Times New Roman",
    ),
    :ICLR => TuePlotsSetting( # 2024
        width = 5.5,
        width_half = nothing,
        base_fontsize = 10,
        font = "Times New Roman",
    ),
    :UAI => TuePlotsSetting( # 2023
        width = 6.75,
        width_half = 3.25,
        base_fontsize = 10,
        font = "Times",
    ),
    :AAAI => TuePlotsSetting( # 2024
        width = 6.975,
        width_half = 3.3,
        base_fontsize = 10,
        font = "TeX Computer Modern",
    ),
    :TMLR => TuePlotsSetting(
        width = 6.5,
        width_half = 3.25,
        base_fontsize = 10,
        font = "Times",
    ),
)

"""
    get_available_settings()

Return a list of settings available in TuePlots.jl.

Effectively this function just returns the keys of [`SETTINGS`](@ref).
"""
get_available_settings() = keys(SETTINGS) |> collect |> sort
