Subject: core-image-sato -staticdev issue
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (106.51.242.123)
X-Originating-Platform: Linux Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 25 Apr 2021 09:30:30 -0700
Message-ID: <sVB3.1619368230886684119.k1sU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DDHj6hnnhfkaybBvyy0j"

--DDHj6hnnhfkaybBvyy0j
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,

I am newly facing this when I want to build core-image-sato image. how can=
 I fix this issue can anybody know please suggest me.

local.conf I enabled EXTRA_IMAGE_FEATURES +=3D=C2=A0 "staticdev-pkgs"=C2=
=A0 but same issue I am facing.

Loading cache: 100% |
Loaded 0 entries from dependency cache.
Parsing recipes: 100% |###################################################=
###########################################################################=
#########| Time: 0:00:17
Parsing of 3450 .bb files complete (0 cached, 3450 parsed). 5058 targets, =
469 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES '-staticdev' (sources/openembedded-core/meta/reci=
pes-sato/images/core-image-sato.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target '-staticdev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['-staticdev']
ERROR: Required build target 'core-image-sato' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-sato', '-staticd=
ev']

Summary: There were 2 ERROR messages shown, returning a non-zero exit code=
.

--
Regards,
Sateesh

--DDHj6hnnhfkaybBvyy0j
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Guys,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 I am newly facing this when I want to build core-image-sato image. how can=
 I fix this issue can anybody know please suggest me.<br /><br />local.conf=
 I enabled EXTRA_IMAGE_FEATURES +=3D&nbsp; "staticdev-pkgs"&nbsp; but same =
issue I am facing.<br /><br />
<div>Loading cache: 100% |&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>Loaded 0 entries from dependency cache.</div>
<div>Parsing recipes: 100% |##############################################=
###########################################################################=
##############| Time: 0:00:17</div>
<div>Parsing of 3450 .bb files complete (0 cached, 3450 parsed). 5058 targ=
ets, 469 skipped, 0 masked, 0 errors.</div>
<div>NOTE: Resolving any missing task queue dependencies</div>
<div>ERROR: Nothing RPROVIDES '-staticdev' (sources/openembedded-core/meta=
/recipes-sato/images/core-image-sato.bb RDEPENDS on or otherwise requires i=
t)</div>
<div>NOTE: Runtime target '-staticdev' is unbuildable, removing...</div>
<div>Missing or unbuildable dependency chain was: ['-staticdev']</div>
<div>ERROR: Required build target 'core-image-sato' has no buildable provi=
ders.</div>
<div>Missing or unbuildable dependency chain was: ['core-image-sato', '-st=
aticdev']</div>
<div>&nbsp;</div>
<div>Summary: There were 2 ERROR messages shown, returning a non-zero exit=
 code.</div>
<div>&nbsp;</div>
-- <br />Regards,<br />Sateesh

--DDHj6hnnhfkaybBvyy0j--
