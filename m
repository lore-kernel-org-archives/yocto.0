Subject: Re: Yocto recipe for Tailscale #yocto #golang
To: yocto@lists.yoctoproject.org
From: "Mike Thompson" <mthompson@dustyrobotics.com>
X-Originating-Location: San Carlos, California, US (73.222.39.199)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 19 Sep 2020 03:13:36 -0700
References: <8132db85-5881-636e-c091-d84c47efe4fe@gmail.com>
In-Reply-To: <8132db85-5881-636e-c091-d84c47efe4fe@gmail.com>
Message-ID: <1315.1600510416708828939@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="XjhiMQM1PzqtbOidRn6b"

--XjhiMQM1PzqtbOidRn6b
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Inheriting from go-mod didn't make any difference that I could tell.

This is what I have so far for the Tailscale recipe.=C2=A0 I'm resolving d=
ependencies with individual Bitbake files that pull in each dependency as I=
 find them.

---------------------------------------------

# tailscale_1.0.5.bb

SUMMARY =3D "Tailscale client and daemon for Linux"

HOMEPAGE =3D "github.com/tailscale/tailscale"

LICENSE =3D "CLOSED"

LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c4452985=
6a0f35a5ad43e51cc5"

SRC_URI =3D "git://github.com/tailscale/tailscale.git;nobranch=3D1;tag=3Dv=
${PV}"

DEPENDS +=3D "github.com-apenwarr-fixconsole \

github.com-coreos-go-iptable \

github.com-godbus-dbus \

github.com-golang-groupcache \

github.com-jsimonetti-rtnetlink \

github.com-klauspost-compress \

github.com-mdlayher-netlink \

github.com-pborman-getopt \

github.com-peterbourgon-ff \

github.com-tailscale-wireguard-go \

github.com-tcnksm-go-httpstat \

github.com-toqueteos-webbrowser \

golang.org-x \

go4.org-mem \

inet.af-netaddr \

rsc.io-goversion \

"

inherit go

inherit go-mod

GO_IMPORT =3D "tailscale.com"

GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale"

RDEPENDS_${PN}-dev +=3D "bash"

---------------------------------------------

Unfortunately, the golang.org-x.bb recipe is turning into an endless sourc=
e of dependencies during do_compile stage.=C2=A0 I feel I must be on the wr=
ong track.

Is there a way to package up the following so that just what is needed by =
Tailscale is included, but dependencies not needed by Tailscale are ignored=
?

---------------------------------------------
# golang.org-x.bb
DESCRIPTION =3D "Go X libraries"

SRC_URI =3D "\
git://github.com/golang/mod.git;protocol=3Dhttps;name=3Dmod;destsuffix=3D$=
{PN}-${PV}/src/golang.org/x/mod \
git://github.com/golang/net.git;protocol=3Dhttps;name=3Dnet;destsuffix=3D$=
{PN}-${PV}/src/golang.org/x/net \
git://github.com/golang/sys.git;protocol=3Dhttps;name=3Dsys;destsuffix=3D$=
{PN}-${PV}/src/golang.org/x/sys \
git://github.com/golang/text.git;protocol=3Dhttps;name=3Dtext;destsuffix=
=3D${PN}-${PV}/src/golang.org/x/text \
git://github.com/golang/time.git;protocol=3Dhttps;name=3Dtime;destsuffix=
=3D${PN}-${PV}/src/golang.org/x/time \
git://github.com/golang/sync.git;protocol=3Dhttps;name=3Dsync;destsuffix=
=3D${PN}-${PV}/src/golang.org/x/sync \
git://github.com/golang/tools.git;protocol=3Dhttps;name=3Dtools;destsuffix=
=
=3D${PN}-${PV}/src/golang.org/x/tools \
git://github.com/golang/build.git;protocol=3Dhttps;name=3Dbuild;destsuffix=
=
=3D${PN}-${PV}/src/golang.org/x/build \
git://github.com/golang/oauth2.git;protocol=3Dhttps;name=3Doauth2;destsuff=
ix=3D${PN}-${PV}/src/golang.org/x/oauth2 \
git://github.com/golang/crypto.git;protocol=3Dhttps;name=3Dcrypto;destsuff=
ix=3D${PN}-${PV}/src/golang.org/x/crypto \
git://github.com/golang/xerrors.git;protocol=3Dhttps;name=3Dxerrors;destsu=
ffix=3D${PN}-${PV}/src/golang.org/x/xerrors \
"
SRCREV_FORMAT =3D "golang"
SRCREV_mod =3D "${AUTOREV}"
SRCREV_net =3D "${AUTOREV}"
SRCREV_sys =3D "${AUTOREV}"
SRCREV_text =3D "${AUTOREV}"
SRCREV_time =3D "${AUTOREV}"
SRCREV_sync =3D "${AUTOREV}"
SRCREV_tools =3D "${AUTOREV}"
SRCREV_build =3D "${AUTOREV}"
SRCREV_oauth2 =3D "${AUTOREV}"
SRCREV_crypto =3D "${AUTOREV}"
SRCREV_xerrors =3D "${AUTOREV}"

LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0b=
cf8506ecda2f7b4f302"

inherit go
GO_IMPORT =3D "golang.org/x"
---------------------------------------------

Thanks,

Mike Thompson

--XjhiMQM1PzqtbOidRn6b
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Inheriting from go-mod didn't make any difference that I could tell.</p>
<p>&nbsp;</p>
<p>This is what I have so far for the Tailscale recipe.&nbsp; I'm resolvin=
g dependencies with individual Bitbake files that pull in each dependency a=
s I find them.</p>
<p>&nbsp;</p>
<p>---------------------------------------------</p>
<p style=3D"line-height: 1.42857;"># tailscale_1.0.5.bb</p>
<p>SUMMARY =3D "Tailscale client and daemon for Linux"</p>
<p>HOMEPAGE =3D "github.com/tailscale/tailscale"</p>
<p>&nbsp;</p>
<p>LICENSE =3D "CLOSED"</p>
<p>LIC_FILES_CHKSUM =3D "file://src/${GO_IMPORT}/LICENSE;md5=3Dd995c1c4452=
9856a0f35a5ad43e51cc5"</p>
<p>&nbsp;</p>
<p>SRC_URI =3D "git://github.com/tailscale/tailscale.git;nobranch=3D1;tag=
=3Dv${PV}"</p>
<p>&nbsp;</p>
<p>DEPENDS +=3D "github.com-apenwarr-fixconsole \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-coreos-go-iptable =
\</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-godbus-dbus \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-golang-groupcache =
\</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-jsimonetti-rtnetli=
nk \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-klauspost-compress=
 \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-mdlayher-netlink \=
</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-pborman-getopt \</=
p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-peterbourgon-ff \<=
/p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-tailscale-wireguar=
d-go \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-tcnksm-go-httpstat=
 \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; github.com-toqueteos-webbrows=
er \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; golang.org-x \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; go4.org-mem \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; inet.af-netaddr \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; rsc.io-goversion \</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"</p>
<p>&nbsp;</p>
<p>inherit go</p>
<p>inherit go-mod</p>
<p>GO_IMPORT =3D "tailscale.com"</p>
<p>GO_INSTALL =3D "${GO_IMPORT}/cmd/tailscale"</p>
<p>&nbsp;</p>
<p>RDEPENDS_${PN}-dev +=3D "bash"</p>
<div>
<p style=3D"line-height: 1.42857;">---------------------------------------=
------</p>
</div>
<div>Unfortunately, the golang.org-x.bb recipe is turning into an endless =
source of dependencies during do_compile stage.&nbsp; I feel I must be on t=
he wrong track.</div>
<div>&nbsp;</div>
<div>Is there a way to package up the following so that just what is neede=
d by Tailscale is included, but dependencies not needed by Tailscale are ig=
nored?</div>
<div>&nbsp;</div>
<div>---------------------------------------------</div>
<div># golang.org-x.bb</div>
<div>DESCRIPTION =3D "Go X libraries"</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "\</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/mod.git;pro=
tocol=3Dhttps;name=3Dmod;destsuffix=3D${PN}-${PV}/src/golang.org/x/mod \</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/net.git;pro=
tocol=3Dhttps;name=3Dnet;destsuffix=3D${PN}-${PV}/src/golang.org/x/net \</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/sys.git;pro=
tocol=3Dhttps;name=3Dsys;destsuffix=3D${PN}-${PV}/src/golang.org/x/sys \</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/text.git;pr=
otocol=3Dhttps;name=3Dtext;destsuffix=3D${PN}-${PV}/src/golang.org/x/text \=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/time.git;pr=
otocol=3Dhttps;name=3Dtime;destsuffix=3D${PN}-${PV}/src/golang.org/x/time \=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/sync.git;pr=
otocol=3Dhttps;name=3Dsync;destsuffix=3D${PN}-${PV}/src/golang.org/x/sync \=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/tools.git;p=
rotocol=3Dhttps;name=3Dtools;destsuffix=3D${PN}-${PV}/src/golang.org/x/tool=
s \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/build.git;p=
rotocol=3Dhttps;name=3Dbuild;destsuffix=3D${PN}-${PV}/src/golang.org/x/buil=
d \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/oauth2.git;=
protocol=3Dhttps;name=3Doauth2;destsuffix=3D${PN}-${PV}/src/golang.org/x/oa=
uth2 \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/crypto.git;=
protocol=3Dhttps;name=3Dcrypto;destsuffix=3D${PN}-${PV}/src/golang.org/x/cr=
ypto \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;git://github.com/golang/xerrors.git=
;protocol=3Dhttps;name=3Dxerrors;destsuffix=3D${PN}-${PV}/src/golang.org/x/=
xerrors \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"</div>
<div>SRCREV_FORMAT =3D "golang"</div>
<div>SRCREV_mod =3D "${AUTOREV}"</div>
<div>SRCREV_net =3D "${AUTOREV}"</div>
<div>SRCREV_sys =3D "${AUTOREV}"</div>
<div>SRCREV_text =3D "${AUTOREV}"</div>
<div>SRCREV_time =3D "${AUTOREV}"</div>
<div>SRCREV_sync =3D "${AUTOREV}"</div>
<div>SRCREV_tools =3D "${AUTOREV}"</div>
<div>SRCREV_build =3D "${AUTOREV}"</div>
<div>SRCREV_oauth2 =3D "${AUTOREV}"</div>
<div>SRCREV_crypto =3D "${AUTOREV}"</div>
<div>SRCREV_xerrors =3D "${AUTOREV}"</div>
<div>&nbsp;</div>
<div>LICENSE =3D "MIT"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade6=
98e0bcf8506ecda2f7b4f302"</div>
<div>&nbsp;</div>
<div>inherit go</div>
<div>GO_IMPORT =3D "golang.org/x"</div>
<div>---------------------------------------------</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>&nbsp;</div>
<div>Mike Thompson</div>

--XjhiMQM1PzqtbOidRn6b--
