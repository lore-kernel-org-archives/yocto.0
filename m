Return-Path: <j.casas@falconelectronica.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2DFEC4332F
	for <webhook@archiver.kernel.org>; Sat,  4 Nov 2023 13:17:34 +0000 (UTC)
Subject: Missing -lgpiod during linking an application that uses libgpiod
To: yocto@lists.yoctoproject.org
From: =?UTF-8?B?SmF2aWVyIENhc2FzIE1hcsOtbg==?= <j.casas@falconelectronica.com>
X-Originating-Location: Barcelona, Catalonia, ES (139.47.38.236)
X-Originating-Platform: Windows Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 04 Nov 2023 06:17:34 -0700
Message-ID: <DXPs.1699103854360132283.pwwX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WiWlx3ITC8yrKpR1V9BD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 04 Nov 2023 13:17:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61612

--WiWlx3ITC8yrKpR1V9BD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I=E2=80=99m building a Qt application to controls a few GPIOs so, in my rec=
ipe, I add libgpiod to the DEPENDS variable, but even then the =E2=80=93lgp=
iod is missing in the linking stage and the build fails with several =E2=80=
=98undefined reference=E2=80=99 errors to the gpiod functions:

| /build/tmp/work/cortexa53-crypto-imx-ked-linux/testapp/0.1-r0/recipe-sysr=
oot-native/usr/bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/aa=
rch64-ked-linux/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/inou=
.c:48: undefined reference to `gpiod_chip_get_line'

| /build/tmp/work/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sy=
sroot-native/usr/bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/=
aarch64-ked-linux/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/in=
ou.c:55: undefined reference to `gpiod_line_request_output'

| /build/tmp/work/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sy=
sroot-native/usr/bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/=
aarch64-ked-linux/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/in=
ou.c:61: undefined reference to `gpiod_line_set_value'

| /build/tmp/work/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sy=
sroot-native/usr/bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/=
aarch64-ked-linux/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/in=
ou.c:67: undefined reference to `gpiod_line_release'

| /build/tmp/work/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sy=
sroot-native/usr/bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/=
aarch64-ked-linux/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/in=
ou.c:69: undefined reference to `gpiod_chip_close'

This is my recipe:

SUMMARY =3D "GPIO QT TEST APPLICATION"

DESCRIPTION =3D "GPIO user interface build with QT"

LICENSE =3D "GPLv2"

LIC_FILES_CHKSUM =3D " file://${COREBASE}/meta/files/common-licenses/GPL-2.=
0-only;md5=3D801f80980d171dd6425610833a22dbe6 ( file://$%7bCOREBASE%7d/meta=
/files/common-licenses/GPL-2.0-only;md5=3D801f80980d171dd6425610833a22dbe6 =
) "

SRC_URI =3D "<source files added here>"

DEPENDS +=3D "qtbase qtdeclarative qtmultimedia qtwebengine *libgpiod* "

RDEPENDS:${PN} +=3D "qtxmlpatterns qtdeclarative-qmlplugins qtbase-plugins =
ttf-dejavu-sans qtquickcontrols qtquickcontrols2 qtfreevirtualkeyboard "

S =3D "${WORKDIR}"

do_install:append () {

install -d ${D}${bindir}

install -m 0775 qt_testgpio ${D}${bindir}

}

FILES:${PN} +=3D "${bindir}/qt_testgpio"

FILES:${PN} +=3D "/opt/*"

inherit qmake5

What am I missing? Shouldn=E2=80=99t the inclusion of libpgiod library to t=
he DEPENDS variable result in the addition of =E2=80=93lgpiod to the link c=
ommand? I tried to add LDFLAGS:append =3D =E2=80=9C =E2=80=93lgpiod=E2=80=
=9D but it didn=E2=80=99t solve the problem.

Any help will be appreciated.

Kind regards,

Javi

--WiWlx3ITC8yrKpR1V9BD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Hi,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">I=E2=80=99m building a Qt application to=
 controls a few GPIOs so, in my recipe, I add libgpiod to the DEPENDS varia=
ble, but even then the =E2=80=93lgpiod is missing in the linking stage and =
the build fails with several =E2=80=98undefined reference=E2=80=99 errors t=
o the gpiod functions:</span></p>
<br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">| /build/tmp/work=
/cortexa53-crypto-imx-ked-linux/testapp/0.1-r0/recipe-sysroot-native/usr/bi=
n/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/aarch64-ked-linux/1=
1.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/inou.c:48: undefined =
reference to `gpiod_chip_get_line&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">| /build/tmp/work=
/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sysroot-native/usr/=
bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/aarch64-ked-linux=
/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/inou.c:55: undefine=
d reference to `gpiod_line_request_output&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">| /build/tmp/work=
/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sysroot-native/usr/=
bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/aarch64-ked-linux=
/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/inou.c:61: undefine=
d reference to `gpiod_line_set_value&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">| /build/tmp/work=
/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sysroot-native/usr/=
bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/aarch64-ked-linux=
/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/inou.c:67: undefine=
d reference to `gpiod_line_release&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">| /build/tmp/work=
/cortexa53-crypto-imx-ked-linux/ testapp /0.1-r0/recipe-sysroot-native/usr/=
bin/aarch64-ked-linux/../../libexec/aarch64-ked-linux/gcc/aarch64-ked-linux=
/11.4.0/ld: /usr/src/debug/ testapp /0.1-r0/build/../m4/inou.c:69: undefine=
d reference to `gpiod_chip_close&#39;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">This is my recipe=
:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">SUMMARY =3D &#34;=
GPIO QT TEST APPLICATION&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">DESCRIPTION =3D &=
#34;GPIO user interface build with QT&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">LICENSE =3D &#34;=
GPLv2&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">LIC_FILES_CHKSUM =
=3D &#34;<a href=3D"file://$%7bCOREBASE%7d/meta/files/common-licenses/GPL-2=
.0-only;md5=3D801f80980d171dd6425610833a22dbe6">file://${COREBASE}/meta/fil=
es/common-licenses/GPL-2.0-only;md5=3D801f80980d171dd6425610833a22dbe6</a>&=
#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">SRC_URI =3D &#34;=
&lt;source files added here&gt;&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">DEPENDS +=3D &#34=
;qtbase qtdeclarative qtmultimedia qtwebengine <strong>libgpiod</strong>&#3=
4;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">RDEPENDS:${PN} +=
=3D &#34;qtxmlpatterns qtdeclarative-qmlplugins qtbase-plugins ttf-dejavu-s=
ans qtquickcontrols qtquickcontrols2 qtfreevirtualkeyboard &#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">S =3D &#34;${WORK=
DIR}&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">do_install:append=
 () {</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 install -d ${D}${bindir}</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 install -m 0775 qt_testgpio ${D}${bindir}</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">}</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">FILES:${PN} +=3D =
&#34;${bindir}/qt_testgpio&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">FILES:${PN} +=3D =
&#34;/opt/*&#34;</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"font-family: Consolas; mso-ansi-language: EN-US;">inherit qmake5</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">What am I missing? Shouldn=E2=80=99t the=
 inclusion of libpgiod library to the DEPENDS variable result in the additi=
on of =E2=80=93lgpiod to the link command? I tried to add LDFLAGS:append =
=3D =E2=80=9C =E2=80=93lgpiod=E2=80=9D but it didn=E2=80=99t solve the prob=
lem.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">=C2=A0<br/></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Any help will be appreciated.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Kind regards,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN-US" s=
tyle=3D"mso-ansi-language: EN-US;">Javi</span></p>

--WiWlx3ITC8yrKpR1V9BD--

