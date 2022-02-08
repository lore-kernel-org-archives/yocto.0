Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCF6C433F5
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 20:41:22 +0000 (UTC)
Subject: Can't Locate Module in @INC - you may need to install the Module
 issue...
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Boston, Massachusetts, US (136.226.72.101)
X-Originating-Platform: Windows Chrome 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Feb 2022 12:41:21 -0800
Message-ID: <vy65.1644352881708274599.4rmH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="O8bqwb2zVRcgEeUwmT5s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 20:41:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56112

--O8bqwb2zVRcgEeUwmT5s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I'm getting an error trying create/use a recipe i created for Pearl Module =
Const::Fast
https://cpan.metacpan.org/authors/id/L/LE/LEONT/Const-Fast-0.014.tar.gz

*It has a Build.PL file as follows:*
use 5.0.0.8
use Module::Build::Tiny 0.21;
Build_PL();

I have built ModuleBuild::Tiny as well. *(meta-cpan has a recipe for Build:=
:Tiny* )=C2=A0 And (think I) am placing it as a dependency for Const::Fast.=
 however...
My issue (or my first Issue)=C2=A0 I guess is how to populate Module Build:=
:Tiny into *recipe-sysroot-native.*

When I attempt to build my recipe I get an error as follows:
Can't locate Module/Build/Tiny.pm in @INC (you may need to install the Modu=
le::Build::Tiny module) (@INC contains: < list of paths it is looking for>)

Paths @INC (in build/tmp/work) is using to fine Module/Build/Tiny.pm are al=
ong these lines:
/all-poky-linux/const-fast-perl/0.014-r0/ *recipe-sysroot-native* /<paths b=
elow>
/usr/lib/perl5/site_perl/5.34.0/x86_64-linux
/usr/lib/perl5/site_perl/5.34.0
/usr/lib/perl5/vendor_perl/5.34.0
/usr/lib/perl5/5.34.0/x86_64-linux
/usr/lib/perl5/5.34.0

/x86_64-linux/perl-native/5.34.0-r0/ *recipe-sysroot-nativ* e/usr/lib/perl5=
/<paths below>
/site_perl/5.34.0/x86_64-linux
/site_perl/5.34.0
/vendor_perl/5.34.0/x86_64-linux
/vendor_perl/5.34.0
/5.34.0/x86_64-linux
/5.34.0) at Build.PL line 2.
#| BEGIN failed--compilation aborted at Build.PL line 2.

Paths the module is found are along these lines (found via manual search):
#./all-poky-linux/module-build-tiny-perl/0.021-r0/sysroot-destdir/usr/lib/p=
erl5/vendor_perl/5.34.0/Module/Build/Tiny.pm
./all-poky-linux/module-build-tiny-perl/0.021-r0/package/usr/lib/perl5/vend=
or_perl/5.34.0/Module/Build/Tiny.pm

*My const-fast Recipe is as follows=C2=A0 const-fast-perl_014.bb:*

DESCRIPTION =3D "This module provides Const::Fast Functionality"
SECTION =3D "libs"
LICENSE =3D "Artisticv1 | GPLv1+"
PR =3D "r0"
MAINTAINER=3D "Poky <poky@yoctoproject.org>"
HOMEPAGE=3D "https://metacpan.org/release/Const-Fast"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Artistic-1.0;md5=3Dcda03=
bbdc3c1951996392b872397b798 \
file://${COMMON_LICENSE_DIR}/GPL-1.0-or-later;md5=3D30c0b8a5048cc2f4be5ff15=
ef0d8cf61"
SRC_URI =3D "https://cpan.metacpan.org/authors/id/L/LE/LEONT/Const-Fast-0.0=
14.tar.gz"
SRC_URI[sha256sum] =3D "f805953a08c57846a16a4d85d7b766398afaf7c36c1465fcb1d=
ea09e5fa394db"
S =3D "${WORKDIR}/Const-Fast-${PV}"
inherit cpan_build allarch
RDEPENDS_${PN} +=3D "extutils-config-perl"
RDEPENDS_${PN} +=3D "extutils-helpers-perl"
RDEPENDS_${PN} +=3D "extutils-installpaths-perl"
DEPENDS +=3D "extutils-config-perl-native"
DEPENDS +=3D "extutils-helpers-perl-native"
DEPENDS +=3D "extutils-installpaths-perl-native"
DEPENDS +=3D "libmodule-build-perl module-build-tiny-perl"
BBCLASSEXTEND =3D "native"

*My module-build-tiny-perl_0.021.bb is as follows:*

DESCRIPTION =3D "Many Perl distributions use a Build.PL file instead of a M=
akefile.PL file \
to drive distribution configuration, build, test and installation. \
Traditionally, Build.PL uses Module::Build as the underlying build system. =
\
This module provides a simple, lightweight, drop-in replacement."
SECTION =3D "libs"
LICENSE =3D "Artisticv1 | GPLv1+"
PR =3D "r0"
MAINTAINER=3D "Poky <poky@yoctoproject.org>"
HOMEPAGE=3D "https://metacpan.org/release/Module-Build-Tiny"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Artistic-1.0;md5=3Dcda03=
bbdc3c1951996392b872397b798 \
file://${COMMON_LICENSE_DIR}/GPL-1.0-or-later;md5=3D30c0b8a5048cc2f4be5ff15=
ef0d8cf61"
SRC_URI =3D "https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Build-T=
iny-0.021.tar.gz"
SRC_URI[sha256sum] =3D "65e516c2e99d63100fdf4dbfa35489d0562718a0e8d2b885e9d=
aaa7bc174b43e"
RDEPENDS_${PN} +=3D "extutils-config-perl"
RDEPENDS_${PN} +=3D "extutils-helpers-perl"
RDEPENDS_${PN} +=3D "extutils-installpaths-perl"
DEPENDS +=3D "extutils-config-perl-native"
DEPENDS +=3D "extutils-helpers-perl-native"
DEPENDS +=3D "extutils-installpaths-perl-native"
S =3D "${WORKDIR}/Module-Build-Tiny-${PV}"
inherit cpan_build allarch
BBCLASSEXTEND =3D "native"

Regards,

Bruce

--O8bqwb2zVRcgEeUwmT5s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello All,<br /><br /></div>
<div>I'm getting an error trying create/use a recipe i created for Pearl Mo=
dule Const::Fast</div>
<div><a href=3D"https://cpan.metacpan.org/authors/id/L/LE/LEONT/Const-Fast-=
0.014.tar.gz" target=3D"_blank" rel=3D"noopener">https://cpan.metacpan.org/=
authors/id/L/LE/LEONT/Const-Fast-0.014.tar.gz</a><br /><br /></div>
<div><strong>It has a Build.PL file as follows:</strong></div>
<div>use 5.0.0.8</div>
<div><span style=3D"color: #ff0000;">use Module::Build::Tiny 0.21;</span></=
div>
<div>Build_PL();</div>
<div>&nbsp;</div>
<div>I have built ModuleBuild::Tiny as well. <strong>(meta-cpan has a recip=
e for Build::Tiny</strong>)&nbsp; And (think I) am placing it as a dependen=
cy for Const::Fast. however...&nbsp; <br />My issue (or my first Issue)&nbs=
p; I guess is how to populate Module Build::Tiny into<strong> recipe-sysroo=
t-native.</strong></div>
<div>&nbsp;</div>
<div>When I attempt to build my recipe I get an error as follows:</div>
<div><span style=3D"color: #ff0000;">&nbsp;Can't locate Module/Build/Tiny.p=
m in @INC (you may need to install the Module::Build::Tiny module) (@INC co=
ntains: &lt; list of paths it is looking for&gt;)</span></div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">Paths @INC (in build/tmp/w=
ork) is using to fine Module/Build/Tiny.pm are along these lines:</span></d=
iv>
<div>/all-poky-linux/const-fast-perl/0.014-r0/<strong>recipe-sysroot-native=
</strong>/&lt;paths below&gt;</div>
<div><span style=3D"white-space: pre;"> </span>/usr/lib/perl5/site_perl/5.3=
4.0/x86_64-linux&nbsp;</div>
<div><span style=3D"white-space: pre;"> </span>/usr/lib/perl5/site_perl/5.3=
4.0&nbsp;</div>
<div><span style=3D"white-space: pre;"> </span>/usr/lib/perl5/vendor_perl/5=
.34.0&nbsp;</div>
<div><span style=3D"white-space: pre;"> </span>/usr/lib/perl5/5.34.0/x86_64=
-linux&nbsp;</div>
<div><span style=3D"white-space: pre;"> </span>/usr/lib/perl5/5.34.0&nbsp;<=
/div>
<div>&nbsp;</div>
<div>/x86_64-linux/perl-native/5.34.0-r0/<strong>recipe-sysroot-nativ</stro=
ng>e/usr/lib/perl5/&lt;paths below&gt;</div>
<div><span style=3D"white-space: pre;"> </span>/site_perl/5.34.0/x86_64-lin=
ux&nbsp;</div>
<div><span style=3D"white-space: pre;"> </span>/site_perl/5.34.0&nbsp;</div=
>
<div><span style=3D"white-space: pre;"> </span>/vendor_perl/5.34.0/x86_64-l=
inux</div>
<div><span style=3D"white-space: pre;"> </span>/vendor_perl/5.34.0</div>
<div><span style=3D"white-space: pre;"> </span>/5.34.0/x86_64-linux</div>
<div><span style=3D"white-space: pre;"> </span>/5.34.0) at Build.PL line 2.=
</div>
<div>#| BEGIN failed--compilation aborted at Build.PL line 2.</div>
<div>&nbsp;</div>
<div><span style=3D"text-decoration: underline;">Paths the module is found =
are along these lines (found via manual search):</span></div>
<div>#./all-poky-linux/module-build-tiny-perl/0.021-r0/sysroot-destdir/usr/=
lib/perl5/vendor_perl/5.34.0/Module/Build/Tiny.pm</div>
<div>./all-poky-linux/module-build-tiny-perl/0.021-r0/package/usr/lib/perl5=
/vendor_perl/5.34.0/Module/Build/Tiny.pm</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div><strong>My const-fast Recipe is as follows&nbsp; const-fast-perl_014.b=
b:</strong></div>
<div>&nbsp;</div>
<div>DESCRIPTION =3D "This module provides Const::Fast Functionality"</div>
<div>SECTION =3D "libs"</div>
<div>LICENSE =3D "Artisticv1 | GPLv1+"</div>
<div>PR =3D "r0"</div>
<div>MAINTAINER=3D<span style=3D"white-space: pre;"> </span>"Poky &lt;poky@=
yoctoproject.org&gt;"</div>
<div>HOMEPAGE=3D<span style=3D"white-space: pre;"> </span>"https://metacpan=
.org/release/Const-Fast"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Artistic-1.0;md5=3D=
cda03bbdc3c1951996392b872397b798 \</div>
<div>file://${COMMON_LICENSE_DIR}/GPL-1.0-or-later;md5=3D30c0b8a5048cc2f4be=
5ff15ef0d8cf61"</div>
<div>SRC_URI =3D "https://cpan.metacpan.org/authors/id/L/LE/LEONT/Const-Fas=
t-0.014.tar.gz"</div>
<div>SRC_URI[sha256sum] =3D "f805953a08c57846a16a4d85d7b766398afaf7c36c1465=
fcb1dea09e5fa394db"</div>
<div>S =3D "${WORKDIR}/Const-Fast-${PV}"</div>
<div>inherit cpan_build allarch</div>
<div>RDEPENDS_${PN} +=3D "extutils-config-perl"</div>
<div>RDEPENDS_${PN} +=3D "extutils-helpers-perl"</div>
<div>RDEPENDS_${PN} +=3D "extutils-installpaths-perl"</div>
<div>DEPENDS +=3D "extutils-config-perl-native"</div>
<div>DEPENDS +=3D "extutils-helpers-perl-native"</div>
<div>DEPENDS +=3D "extutils-installpaths-perl-native"</div>
<div>DEPENDS +=3D "libmodule-build-perl module-build-tiny-perl"</div>
<div>BBCLASSEXTEND =3D "native"</div>
<div>&nbsp;</div>
<div><strong>My module-build-tiny-perl_0.021.bb is as follows:</strong></di=
v>
<div>&nbsp;</div>
<div>DESCRIPTION =3D "Many Perl distributions use a Build.PL file instead o=
f a Makefile.PL file \</div>
<div>to drive distribution configuration, build, test and installation. \</=
div>
<div>Traditionally, Build.PL uses Module::Build as the underlying build sys=
tem. \</div>
<div>This module provides a simple, lightweight, drop-in replacement."</div=
>
<div>SECTION =3D "libs"</div>
<div>LICENSE =3D "Artisticv1 | GPLv1+"</div>
<div>PR =3D "r0"</div>
<div>MAINTAINER=3D<span style=3D"white-space: pre;"> </span>"Poky &lt;poky@=
yoctoproject.org&gt;"</div>
<div>HOMEPAGE=3D<span style=3D"white-space: pre;"> </span>"https://metacpan=
.org/release/Module-Build-Tiny"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/Artistic-1.0;md5=3D=
cda03bbdc3c1951996392b872397b798 \</div>
<div>file://${COMMON_LICENSE_DIR}/GPL-1.0-or-later;md5=3D30c0b8a5048cc2f4be=
5ff15ef0d8cf61"</div>
<div>SRC_URI =3D "https://cpan.metacpan.org/authors/id/L/LE/LEONT/Module-Bu=
ild-Tiny-0.021.tar.gz"</div>
<div>SRC_URI[sha256sum] =3D "65e516c2e99d63100fdf4dbfa35489d0562718a0e8d2b8=
85e9daaa7bc174b43e"</div>
<div>RDEPENDS_${PN} +=3D "extutils-config-perl"</div>
<div>RDEPENDS_${PN} +=3D "extutils-helpers-perl"</div>
<div>RDEPENDS_${PN} +=3D "extutils-installpaths-perl"</div>
<div>DEPENDS +=3D "extutils-config-perl-native"</div>
<div>DEPENDS +=3D "extutils-helpers-perl-native"</div>
<div>DEPENDS +=3D "extutils-installpaths-perl-native"</div>
<div>S =3D "${WORKDIR}/Module-Build-Tiny-${PV}"</div>
<div>inherit cpan_build allarch</div>
<div>BBCLASSEXTEND =3D "native"<br /><br />Regards,<br /><br />Bruce</div>

--O8bqwb2zVRcgEeUwmT5s--

