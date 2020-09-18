Subject: Re: Yocto recipe for Tailscale #yocto #golang
To: yocto@lists.yoctoproject.org
From: "Mike Thompson" <mthompson@dustyrobotics.com>
X-Originating-Location: US (157.22.13.92)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 18 Sep 2020 16:46:59 -0700
References: <554d231986639cbe9b6a77c36b41a9947e0458a3.camel@delisys.ch>
In-Reply-To: <554d231986639cbe9b6a77c36b41a9947e0458a3.camel@delisys.ch>
Message-ID: <23477.1600472819113950080@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Kcm5Ci6tgi0zMJSa3WpN"

--Kcm5Ci6tgi0zMJSa3WpN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

OK, I'm making some progress a Bitbake recipe for the Tailscale client buil=
t using Go from various samples I found in the OpenEmbedded layers.

However, I'm running into import issues during compilation and I'm hoping =
a person familiar with Go might be able to provide some hints. From what I =
can tell, Go packages to are allowed to declare that they must be imported =
using a specific name ( https://golang.org/cmd/go/#hdr-Import_path_checking=
 ) and it seems that declaration is included in the Tailscale source code.

Is there a way to craft the Bitbake recipe to honor that requirement for t=
he Tailscale Go source code?

Currently, my Bitbake recipe for Tailscale looks as shown below.

tailscale_1.0.5.bb
-----------------------------------------------------------------
SUMMARY =3D "Tailscale client and daemon for Linux"
HOMEPAGE =3D "github.com/tailscale/tailscale"
LICENSE =3D "DWTFYW"
LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c4452985=
6a0f35a5ad43e51cc5"

GO_IMPORT =3D "github.com/tailscale/tailscale"
SRC_URI =3D "git://${GO_IMPORT};nobranch=3D1;tag=3Dv${PV}"

inherit go

GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale"

RDEPENDS_${PN}-dev +=3D "bash"
-----------------------------------------------------------------

The Bitbake output with the import error is below:

-----------------------------------------------------------------
$ bitbake tailscale
...
NOTE: Executing Tasks
ERROR: tailscale-1.0.5-r0 do_compile: Execution of '/home/mike/Development=
/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5=
-r0/temp/run.do_compile.10615' failed with exit code 1:
can't load package: package github.com/tailscale/tailscale/cmd/tailscale: =
code in directory /home/mike/Development/markbot_linux/build_markbot/tmp/wo=
rk/corei7-64-dusty-linux/tailscale/1.0.5-r0/build/src/github.com/tailscale/=
tailscale/cmd/tailscale expects import "tailscale.com/cmd/tailscale"
can't load package: package .: no Go files in /home/mike/Development/markb=
ot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/bu=
ild
WARNING: exit code 1 from a shell command.

ERROR: Logfile of failure stored in: /home/mike/Development/markbot_linux/=
build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/temp/log.do=
_compile.10615
Log data follows:
| DEBUG: Executing shell function do_compile
| can't load package: package github.com/tailscale/tailscale/cmd/tailscale=
: code in directory /home/mike/Development/markbot_linux/build_markbot/tmp/=
work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build/src/github.com/tailscal=
e/tailscale/cmd/tailscale expects import "tailscale.com/cmd/tailscale"
| can't load package: package .: no Go files in /home/mike/Development/mar=
kbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/=
build
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of '/home/mike/Development/markbot_linux/build_markbot/=
tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/temp/run.do_compile.10615=
' failed with exit code 1:
| can't load package: package github.com/tailscale/tailscale/cmd/tailscale=
: code in directory /home/mike/Development/markbot_linux/build_markbot/tmp/=
work/corei7-64-dusty-linux/tailscale/1.0.5-r0/build/src/github.com/tailscal=
e/tailscale/cmd/tailscale expects import "tailscale.com/cmd/tailscale"
| can't load package: package .: no Go files in /home/mike/Development/mar=
kbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0.5-r0/=
build
| WARNING: exit code 1 from a shell command.
|
ERROR: Task (/home/mike/Development/markbot_linux/sources/meta-markbot/rec=
ipes-tailscale/tailscale/tailscale_1.0.5.bb:do_compile) failed with exit co=
de '1'
NOTE: Tasks Summary: Attempted 2253 tasks of which 2245 didn't need to be =
rerun and 1 failed.
-----------------------------------------------------------------

Thanks,

Mike Thompson

--Kcm5Ci6tgi0zMJSa3WpN
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>OK, I'm making some progress a Bitbake recipe for the Tailscale client=
 built using Go from various samples I found in the OpenEmbedded layers.</d=
iv>
<div>&nbsp;</div>
<div>However, I'm running into import issues during compilation and I'm ho=
ping a person familiar with Go might be able to provide some hints.&nbsp;<s=
pan style=3D"color: #242729; font-family: Arial, 'Helvetica Neue', Helvetic=
a, sans-serif; font-size: 15px;">From what I can tell, Go packages to are a=
llowed to&nbsp;</span><a style=3D"box-sizing: inherit; background-color: #f=
fffff; color: var(--blue-700); text-decoration-line: underline; margin: 0px=
; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-ea=
st-asian: inherit; font-stretch: inherit; line-height: inherit; font-family=
: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 15px; vertical=
-align: baseline; cursor: pointer;" href=3D"https://golang.org/cmd/go/#hdr-=
Import_path_checking" rel=3D"nofollow noreferrer">declare that they must be=
 imported using a specific name</a><span style=3D"color: #242729; font-fami=
ly: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 15px;">&nbsp=
;and it seems that declaration is included in the Tailscale source code.</s=
pan></div>
<div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;"><span style=3D"color: #242729; font-f=
amily: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 15px;">Is=
 there a way to craft the Bitbake recipe to honor that requirement for the =
Tailscale Go source code?</span></div>
</div>
<div>&nbsp;</div>
<div>Currently, my Bitbake recipe for Tailscale looks as shown below.&nbsp=
;&nbsp;</div>
<div>&nbsp;</div>
<div>tailscale_1.0.5.bb</div>
<div>-----------------------------------------------------------------</di=
v>
<div>SUMMARY =3D "Tailscale client and daemon for Linux"</div>
<div>HOMEPAGE =3D "github.com/tailscale/tailscale"</div>
<div>LICENSE =3D "DWTFYW"</div>
<div>LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c44=
529856a0f35a5ad43e51cc5"</div>
<div>&nbsp;</div>
<div>GO_IMPORT =3D "github.com/tailscale/tailscale"</div>
<div>SRC_URI =3D "git://${GO_IMPORT};nobranch=3D1;tag=3Dv${PV}"</div>
<div>&nbsp;</div>
<div>inherit go</div>
<div>&nbsp;</div>
<div>GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale"</div>
<div>&nbsp;</div>
<div>RDEPENDS_${PN}-dev +=3D "bash"</div>
<div>-----------------------------------------------------------------</di=
v>
<div>&nbsp;</div>
<div>The Bitbake output with the import error is below:</div>
<div>&nbsp;</div>
<div>
<div style=3D"line-height: 1.42857;">-------------------------------------=
----------------------------</div>
<div style=3D"line-height: 1.42857;">
<div style=3D"line-height: 1.42857;">
<div style=3D"line-height: 1.42857;">$ bitbake tailscale</div>
<div style=3D"line-height: 1.42857;">...</div>
<div style=3D"line-height: 1.42857;">NOTE: Executing Tasks</div>
<div style=3D"line-height: 1.42857;">ERROR: tailscale-1.0.5-r0 do_compile:=
 Execution of '/home/mike/Development/markbot_linux/build_markbot/tmp/work/=
corei7-64-dusty-linux/tailscale/1.0.5-r0/temp/run.do_compile.10615' failed =
with exit code 1:</div>
<div style=3D"line-height: 1.42857;">can't load package: package github.co=
m/tailscale/tailscale/cmd/tailscale: code in directory /home/mike/Developme=
nt/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1.0=
.5-r0/build/src/github.com/tailscale/tailscale/cmd/tailscale expects import=
 "tailscale.com/cmd/tailscale"</div>
<div style=3D"line-height: 1.42857;">can't load package: package .: no Go =
files in /home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7=
-64-dusty-linux/tailscale/1.0.5-r0/build</div>
<div style=3D"line-height: 1.42857;">WARNING: exit code 1 from a shell com=
mand.</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">ERROR: Logfile of failure stored in: =
/home/mike/Development/markbot_linux/build_markbot/tmp/work/corei7-64-dusty=
-linux/tailscale/1.0.5-r0/temp/log.do_compile.10615</div>
<div style=3D"line-height: 1.42857;">Log data follows:</div>
<div style=3D"line-height: 1.42857;">| DEBUG: Executing shell function do_=
compile</div>
<div style=3D"line-height: 1.42857;">| can't load package: package github.=
com/tailscale/tailscale/cmd/tailscale: code in directory /home/mike/Develop=
ment/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1=
.0.5-r0/build/src/github.com/tailscale/tailscale/cmd/tailscale expects impo=
rt "tailscale.com/cmd/tailscale"</div>
<div style=3D"line-height: 1.42857;">| can't load package: package .: no G=
o files in /home/mike/Development/markbot_linux/build_markbot/tmp/work/core=
i7-64-dusty-linux/tailscale/1.0.5-r0/build</div>
<div style=3D"line-height: 1.42857;">| WARNING: exit code 1 from a shell c=
ommand.</div>
<div style=3D"line-height: 1.42857;">| ERROR: Execution of '/home/mike/Dev=
elopment/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailsca=
le/1.0.5-r0/temp/run.do_compile.10615' failed with exit code 1:</div>
<div style=3D"line-height: 1.42857;">| can't load package: package github.=
com/tailscale/tailscale/cmd/tailscale: code in directory /home/mike/Develop=
ment/markbot_linux/build_markbot/tmp/work/corei7-64-dusty-linux/tailscale/1=
.0.5-r0/build/src/github.com/tailscale/tailscale/cmd/tailscale expects impo=
rt "tailscale.com/cmd/tailscale"</div>
<div style=3D"line-height: 1.42857;">| can't load package: package .: no G=
o files in /home/mike/Development/markbot_linux/build_markbot/tmp/work/core=
i7-64-dusty-linux/tailscale/1.0.5-r0/build</div>
<div style=3D"line-height: 1.42857;">| WARNING: exit code 1 from a shell c=
ommand.</div>
<div style=3D"line-height: 1.42857;">|&nbsp;</div>
<div style=3D"line-height: 1.42857;">ERROR: Task (/home/mike/Development/m=
arkbot_linux/sources/meta-markbot/recipes-tailscale/tailscale/tailscale_1.0=
.5.bb:do_compile) failed with exit code '1'</div>
<div style=3D"line-height: 1.42857;">NOTE: Tasks Summary: Attempted 2253 t=
asks of which 2245 didn't need to be rerun and 1 failed.</div>
<div>-----------------------------------------------------------------</di=
v>
</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Thanks,</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
<div style=3D"line-height: 1.42857;">Mike Thompson</div>
<div style=3D"line-height: 1.42857;">&nbsp;</div>
</div>
</div>

--Kcm5Ci6tgi0zMJSa3WpN--
