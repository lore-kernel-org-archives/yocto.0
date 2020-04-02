Subject: Building dependencies in yocto for GO language project
To: yocto@lists.yoctoproject.org
From: salman.isd@gmail.com
X-Originating-Location: Bielefeld, North Rhine-Westphalia, DE (37.201.144.70)
X-Originating-Platform: Windows Chrome 80
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Apr 2020 13:36:29 -0700
Message-ID: <g3dN.1585859789125968899.BrNs@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="YhxFJ1qvRU6zN6rhIWMz"

--YhxFJ1qvRU6zN6rhIWMz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am trying to build a GO project using yocto using the following recipe

DESCRIPTION =3D "An Identity Provider for ORY Hydra over LDAP"

SECTION =3D "examples"

HOMEPAGE =3D "https://github.com/i-core/werther"

LICENSE =3D "MIT"

LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dc22a4ad704abf6=
e006791a40249a18cb"

GO_IMPORT =3D "github.com/i-core/werther"

SRC_URI =3D "git://${GO_IMPORT}"

SRCREV =3D "${AUTOREV}"

FILES_${PN} +=3D "${GOBIN_FINAL}/*"

inherit go

DEPENDS +=3D "go-dep"

*But I'm running into this error*

ERROR: werther-1.1.1-r0 do_compile: Function failed: do_compile (log file =
is located at /tmp/tala/tmp/work/cortexa9-neon-tala-linux-gnueabi/werther/1=
.1.1-r0/temp/log.do_compile.10723)

ERROR: Logfile of failure stored in: /tmp/tala/tmp/work/cortexa9-neon-tala=
-linux-gnueabi/werther/1.1.1-r0/temp/log.do_compile.10723

Log data follows:

| DEBUG: Executing shell function do_compile

| src/github.com/i-core/werther/internal/ldapclient/ldapclient.go:20:2: ca=
nnot find package "github.com/coocood/freecache" in any of:

| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /tmp/=
tala/tmp/work/cortexa9-neon-tala-linux-gnueabi/werther/1.1.1-r0/recipe-sysr=
oot/usr/lib/go/src/github.com/coocood/freecache (from $GOROOT)

| =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /tmp/=
tala/tmp/work/cortexa9-neon-tala-linux-gnueabi/werther/1.1.1-r0/build/src/g=
ithub.com/coocood/freecache (from $GOPATH)

"github.com/coocood/freecache" is used by the project I am trying to build=
. There are other dependencies which are also not found (I have omitted the=
m from the above error message).
Basically my question is how I can I resolve these dependencies. I dont th=
ink I need to create and put separate recipes for all these go packages.

--YhxFJ1qvRU6zN6rhIWMz
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-num=
eric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; lin=
e-height: inherit; font-family: Arial, &#39;Helvetica Neue&#39;, Helvetica,=
 sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inherit=
; clear: both; color: #242729;">I am trying to build a GO project using yoc=
to using the following recipe</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">DESCRIPTION =3D &#34;=
An Identity Provider for ORY Hydra over LDAP&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">SECTION =3D &#34;exam=
ples&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">HOMEPAGE =3D &#34;htt=
ps://github.com/i-core/werther&#34;<br/><br/></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">LICENSE =3D &#34;MIT&=
#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">LIC_FILES_CHKSUM =3D =
&#34;file://src/${GO_IMPORT}/LICENSE;md5=3Dc22a4ad704abf6e006791a40249a18cb=
&#34;<br/><br/></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">GO_IMPORT =3D &#34;gi=
thub.com/i-core/werther&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">SRC_URI =3D &#34;git:=
//${GO_IMPORT}&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">SRCREV =3D &#34;${AUT=
OREV}&#34;<br/><br/></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">FILES_${PN} +=3D &#34=
;${GOBIN_FINAL}/*&#34;</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">inherit go</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">DEPENDS +=3D &#34;go-=
dep&#34;</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, &#39;Helvetica Neue&#39;, Helvetica=
, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inheri=
t; clear: both; color: #242729;"><br/><strong>But I&#39;m running into this=
 error</strong></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">ERROR: werther-1.1.1-=
r0 do_compile: Function failed: do_compile (log file is located at /tmp/tal=
a/tmp/work/cortexa9-neon-tala-linux-gnueabi/werther/1.1.1-r0/temp/log.do_co=
mpile.10723)</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">ERROR: Logfile of fai=
lure stored in: /tmp/tala/tmp/work/cortexa9-neon-tala-linux-gnueabi/werther=
/1.1.1-r0/temp/log.do_compile.10723</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">Log data follows:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">| DEBUG: Executing sh=
ell function do_compile</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">| src/github.com/i-co=
re/werther/internal/ldapclient/ldapclient.go:20:2: cannot find package &#34=
;github.com/coocood/freecache&#34; in any of:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">| =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /tmp/tala/tmp/work/cortex=
a9-neon-tala-linux-gnueabi/werther/1.1.1-r0/recipe-sysroot/usr/lib/go/src/g=
ithub.com/coocood/freecache (from $GOROOT)</p>
<p style=3D"margin-bottom: 1em; padding: 0px; border: 0px; font-variant-nu=
meric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: Arial, &#39;Helvetica Neue&#39;, Helvetica=
, sans-serif; font-size: 15px; vertical-align: baseline; box-sizing: inheri=
t; clear: both; color: #242729;">=C2=A0</p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;">| =C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /tmp/tala/tmp/work/cortex=
a9-neon-tala-linux-gnueabi/werther/1.1.1-r0/build/src/github.com/coocood/fr=
eecache (from $GOPATH)<br/><br/>&#34;github.com/coocood/freecache&#34; is u=
sed by the project I am trying to build. There are other dependencies which=
 are also not found (I have omitted them from the above error message).<br/=
>Basically my question is how I can I resolve these dependencies. I dont th=
ink I need to create and put separate recipes for all these go packages.<br=
/><br/><br/></p>

--YhxFJ1qvRU6zN6rhIWMz--
