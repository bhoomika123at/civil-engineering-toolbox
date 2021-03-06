<%inherit file="../base.mako"/>

<%block name="content">
    <h4>Concrete Flexural Analysis</h4>
    <div class="row">
        <div class="col-md-6">
            <form role="form" action="/structure/concrete/flexural-analysis" method="get">
                ${text("fc", fc, "Concrete strength, $f_c'$", "MPa")}
                ${text("fyr", fyr, "Reinf.yield strength ($f_{yr}$)", "MPa")}
                ${text("height", height, "Height (h)", "mm")}
                ${text("width", width, "Width (b)", "mm")}
                ${text("n", n, "# (n)", "")}
                ${text("diameter", diameter, "Diameter (D)", "mm")}
                ${text("cover", cover, "Cover", "mm")}
                <div class="row">
                    <div class="col-md-6">
                        <input type="submit" class="btn btn-primary" value="Analyze"><br>
                    </div>
                </div>
            </form>
        </div>
        <div id='plot' class="col-md-6">
            <img src="/static/picture/structure/rectangle concrete.svg" /><br>
            $\rho$ = ${rho} <br>
            $\rho_{max}$ = ${rho_max} <br>
            $A_{s,min}$ = ${As_min} mm2<br>
            $A_s$ = ${As} mm2<br>
            $A_{s,max}$ = ${As_max} mm2<br>
            $\varepsilon_s$ = ${eps_s}<br>
            $\phi$ = ${phi}<br>
            Mn = ${mn} KNm<br>
            $\phi$Mn = ${phi*mn} KNm<br>
        </div>
    </div>
</%block>

<%block name="css">
</%block>

<%block name="javascript">
</%block>

<%def name="text(name, val, title, unit)">
    <div class="row">
        <div class="col-md-6">
            <label for="${name}">${title}</label>
         </div>
        <div class="col-md-6">
            <input type="text" name="${name}" id="${name}" value="${val}"> ${unit}
        </div>
    </div>
</%def>