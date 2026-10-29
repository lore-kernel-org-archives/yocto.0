Subject: create-spdx-3.0: SPDX agent variables (supplier/authors) are not part of the SPDX task signatures
To: yocto@lists.yoctoproject.org
From: m.webert@devtronic.tech
X-Originating-Location: Schweinfurt, Bavaria, DE (93.188.26.119)
X-Originating-Platform: Windows Edge 156
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Oct 2026 07:53:31 -0700
Message-ID: <StmM.1793285611391362979.WYmm@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XUSjsV10WVVgeP4L6C9d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Thu, 29 Oct 2026 14:53:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66793

--XUSjsV10WVVgeP4L6C9d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I just worked on customizing the SPDX json output that is created during my=
 build and I wondered why changing the SPDX agent variables is not enough. =
It seems like those values that end up in the SBOMs are restored from a cac=
he.

Is this known/done by purpose?

Thanks,
Markus

Some AI created information that might help as well:
The agent variables (SPDX_AUTHORS / SPDX_AUTHORS_<name>*, SPDX_IMAGE_SUPPLI=
ER, SPDX_SDK_SUPPLIER_, SPDX_PACKAGE_SUPPLIER_) are read indirectly: oe.sbo=
m30.ObjectSet.new_agent() builds the variable names (<BASE>_name, <BASE>_ty=
pe, <BASE>id<type>, <BASE>ref) at runtime, so BitBake cannot see them. The =
SPDX tasks' vardeps only contain SPDX3_VAR_DEPS, which does not include the=
m, and do_create_image_sbom_spdx has no vardeps for SPDX_IMAGE_SUPPLIER eit=
her.

To reproduce (wrynose 636e5d3; master b62d5e6 has the same SPDX3_VAR_DEPS a=
part from the SPDX_INCLUDE_* additions):

Build an image with the defaults.
Set e.g. SPDX_AUTHORS =3D "example" SPDX_AUTHORS_example_name =3D "Example =
Ltd" SPDX_AUTHORS_example_type =3D "organization" SPDX_IMAGE_SUPPLIER_ref =
=3D "SPDX_AUTHORS_example"
Rebuild. The per-recipe do_create_*spdx tasks are not re-run, and the image=
 supplier only appears if the image itself is rebuilt for another reason.
In our case, the resulting image SBOM contained both Organization agents, "=
Example Ltd" (new) and "OpenEmbedded" (the default author of per-recipe doc=
uments restored from sstate).

This looks like the same class of problem that aa5b220ca9b9 ("create-spdx-3=
.0: track SPDX_INCLUDE_SOURCES in do_create_spdx's sstate signature") fixed=
 for SPDX_INCLUDE_SOURCES. A fix could add the agent variables to SPDX3_VAR=
_DEPS and to the vardeps of do_create_image_sbom_spdx and the SDK SBOM task=
. Since the SPDX_AUTHORS_<name>_* names are derived from SPDX_AUTHORS, and =
*_ref can point to other agents, the list probably needs to be computed rat=
her than hard-coded.

--XUSjsV10WVVgeP4L6C9d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,<br /><br />I just worked on customizing the SPDX json output that =
is created during my build and I wondered why changing the SPDX agent varia=
bles is not enough. It seems like those values that end up in the SBOMs are=
 restored from a cache.</div>
<div>&nbsp;</div>
<div>Is this known/done by purpose?<br /><br />Thanks,<br />Markus</div>
<div>&nbsp;</div>
<div>Some AI created information that might help as well:<br />The agent va=
riables (SPDX_AUTHORS / SPDX_AUTHORS_&lt;name&gt;*, SPDX_IMAGE_SUPPLIER, SP=
DX_SDK_SUPPLIER_, SPDX_PACKAGE_SUPPLIER_) are read indirectly: oe.sbom30.Ob=
jectSet.new_agent() builds the variable names (&lt;BASE&gt;_name, &lt;BASE&=
gt;_type, &lt;BASE&gt;id&lt;type&gt;, &lt;BASE&gt;ref) at runtime, so BitBa=
ke cannot see them. The SPDX tasks' vardeps only contain SPDX3_VAR_DEPS, wh=
ich does not include them, and do_create_image_sbom_spdx has no vardeps for=
 SPDX_IMAGE_SUPPLIER either.<br /><br />To reproduce (wrynose 636e5d3; mast=
er b62d5e6 has the same SPDX3_VAR_DEPS apart from the SPDX_INCLUDE_* additi=
ons):<br /><br />Build an image with the defaults.<br />Set e.g. SPDX_AUTHO=
RS =3D "example" SPDX_AUTHORS_example_name =3D "Example Ltd" SPDX_AUTHORS_e=
xample_type =3D "organization" SPDX_IMAGE_SUPPLIER_ref =3D "SPDX_AUTHORS_ex=
ample"<br />Rebuild. The per-recipe do_create_*spdx tasks are not re-run, a=
nd the image supplier only appears if the image itself is rebuilt for anoth=
er reason.<br />In our case, the resulting image SBOM contained both Organi=
zation agents, "Example Ltd" (new) and "OpenEmbedded" (the default author o=
f per-recipe documents restored from sstate).<br /><br />This looks like th=
e same class of problem that aa5b220ca9b9 ("create-spdx-3.0: track SPDX_INC=
LUDE_SOURCES in do_create_spdx's sstate signature") fixed for SPDX_INCLUDE_=
SOURCES. A fix could add the agent variables to SPDX3_VAR_DEPS and to the v=
ardeps of do_create_image_sbom_spdx and the SDK SBOM task. Since the SPDX_A=
UTHORS_&lt;name&gt;_* names are derived from SPDX_AUTHORS, and *_ref can po=
int to other agents, the list probably needs to be computed rather than har=
d-coded.</div>

--XUSjsV10WVVgeP4L6C9d--
