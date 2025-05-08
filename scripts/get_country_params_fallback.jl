function get_country_params(country::String)
    cc_int = 1
    cc_freq = 1
    country == "Jamaica"  # placeholder

    return (
        sigma_ey = 0.026,
        rho_y = 0.96,
        beta=0.925, 
        wc_par_asymm=0.725, 
        beta_RA = 0.865, 
        wc_par_asymm_RA=0.78, 
        delta = 0.0564,
        sigma_eh = 0.02,
        mean_h = 1 - cc_int * 0.023,
        p_hu = cc_freq * 0.103,
        f_CAT = 0.55,
        Π_cat = 0.0571,
        share = 0.0
    )
end
