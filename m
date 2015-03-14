Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AD49E0056E; Sat, 14 Mar 2015 11:35:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF12FE0052B
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 11:35:43 -0700 (PDT)
Received: by lamx15 with SMTP id x15so12198958lam.3
	for <yocto@yoctoproject.org>; Sat, 14 Mar 2015 11:35:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=2nbLqxOCSJizsEKEuoEXDD8ByR3ueC26i5QztErpYQg=;
	b=QI/WOiBGie6y5wV5gFllAwYu2UBQyHKVJERlQo+FHxf/7PJJ7R8gYfGitgRXJNRwZL
	PxtUNJSRPQy57K/9oV0RUwVh3g6CnJ7h5hyklSUFqPYT5Ybrtgk2/SvO5vuHAbt60M96
	K0oB6lLovJFurVYUWOIqjNd96P1gH1mtxqclzitQxRHUWJU8vPRFCGtwQSgIypgSeose
	QDjP8cfX7jg5kFT2Xh2GTH2M0erhR0yf70+wFGi+xCj0P4NBk5VqWQwbUcAvnqceGtTK
	6hMfbKnSSG0AK2ME0jZ9BvKdvGrNpwnSvonpyGWZf2i45Cp1YhOssLCRMtZ25CjuZ+RM
	Edtg==
MIME-Version: 1.0
X-Received: by 10.152.28.5 with SMTP id x5mr47411265lag.112.1426358141009;
	Sat, 14 Mar 2015 11:35:41 -0700 (PDT)
Received: by 10.112.105.40 with HTTP; Sat, 14 Mar 2015 11:35:40 -0700 (PDT)
Date: Sat, 14 Mar 2015 15:35:40 -0300
Message-ID: <CAJqtCybFU9G7v71bgjTpJGpWqJ5AC-DMp7+yxr3n86jYVEjrHA@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: node-serialport recipe help
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 14 Mar 2015 18:35:48 -0000
Content-Type: multipart/alternative; boundary=089e0160a7085144c7051143e2ae

--089e0160a7085144c7051143e2ae
Content-Type: text/plain; charset=UTF-8

Hi folks!

I'm writing a recipe to build the nodejs with node-serialport, but i'm
having problem in the QA and in the do_package.

This problem occurs when I try to copy all the npm packets to target path
using the command "cp -r".

     cp -r  ${S}/build/* ${D}${libdir}/node_modules/serialport/build/
     cp -r  ${S}/node_modules/*  ${D}${libdir}/node_modules

When I use the cp , the bitbake display the following message:

WARNING: QA Issue: node-serialport requires /bin/bash, /bin/zsh, but no
providers in its RDEPENDS [file-rdeps]

I try to add RDEPENDS += "bash" but this is not enough, and the bitbake ask
for the /bin/zsh and the zsh is blacklisted.

*I'm not a "Yocto expert" so I need improve my recipes (there's some
workarounds in my recipes)

I'm using as model the Recipes from webOS :
https://github.com/openwebos/meta-webos/tree/master/recipes-upstreamable/node-gyp


node-serialport_git.bb

SUMMARY = "node-serial is a Serial Port binding for Node.js"
SECTION = "nodejs/module"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://README.md;md5=b9a59a0fefe195d10be82cf7f0a99788"

DEPENDS = "node-pre-gyp-native"

PV = "1.6.1+gitr${SRCPV}"

RDEPENDS = "bash"

SRC_URI = "git://
github.com/voodootikigod/node-serialport.git;branch=master;protocol=git"
SRCREV = "94b7bdcc087b820e10913c483bab3e2c54d103f2"
S = "${WORKDIR}/git"


do_configure() {
    export LD="${CXX}"
    export GYP_DEFINES="sysroot=${STAGING_DIR_HOST}"
    node-pre-gyp --target_arch=${TARGET_ARCH} --target_platform=linux
configure
}

do_compile() {
    export LD="${CXX}"
    export GYP_DEFINES="sysroot=${STAGING_DIR_HOST}"
    node-pre-gyp --target_arch=${TARGET_ARCH} --target_platform=linux
build
}

do_install() {

    npm install --no-cache
    install -d ${D}${libdir}/node_modules
    install -d ${D}${libdir}/node_modules/serialport/
    install -d ${D}${libdir}/node_modules/serialport/build
    install -d ${D}${libdir}/node_modules/serialport/bin
    install -d ${S}/build/Release/
${D}${libdir}/node_modules/serialport/build/
    install -m 0664 ${S}/bin/serialportList.js
${D}${libdir}/node_modules/serialport/bin/
    install -m 0664 ${S}/bin/serialportTerminal.js
${D}${libdir}/node_modules/serialport/bin/
    install -m 0664 ${S}/package.json ${D}${libdir}/node_modules/serialport/
    install -m 0664 ${S}/parsers.js   ${D}${libdir}/node_modules/serialport/
    install -m 0664 ${S}/serialport.js
${D}${libdir}/node_modules/serialport/
#problematic line if the cp lines are uncommented the bitbake displayed to
add RDEPEND /bin/bash and /bin/zsh
    cp -r  ${S}/build/* ${D}${libdir}/node_modules/serialport/build/
    cp -r  ${S}/node_modules/*  ${D}${libdir}/node_modules
}


FILES_${PN} += "${libdir}/node_modules \
        ${libdir}/node_modules/serialport \
        ${libdir}/node_modules/serialport/build \
"

FILES_${PN}-dbg += "${libdir}/node_modules/.debug \
        ${libdir}/node_modules/serialport/.debug \
        ${libdir}/node_modules/serialport/build/.debug \
        ${libdir/node_modules/serialport/build/Release/.debug \
"
#workaround to avoid QA's problems, must be fixed in the second round
INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
INHIBIT_PACKAGE_STRIP = "1"


}



node_pre-gyp-native.bb

DESCRIPTION = "Node.js tool for easy binary deployment of C++ addons"
HOMEPAGE = "https://github.com/mapbox/node-pre-gyp.git"
LICENSE = "BSD"
SECTION = "nodejs/module"

LIC_FILES_CHKSUM = "file://LICENSE;md5=7e13c3cf883a44ebcc74a8f568c0f6fb"

SRC_URI = "git://
github.com/mapbox/node-pre-gyp.git;branch=master;protocol=git"
SRCREV = "332b8b123e3aa91718fad763cf1fc11c4cfb49b7"
DEPENDS = "nodejs-native node-gyp-native"

S = "${WORKDIR}/git"

inherit native

do_install () {
  #woraround to install the node-pre-gyp
  npm install -g --force
}

If someone could help me I will be grateful.
Thanks !

Regards,

-- 
----------------------------------------------
Caio Pereira

--089e0160a7085144c7051143e2ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi folks!<br><br></div>I&#39;m writing a re=
cipe to build the nodejs with node-serialport, but i&#39;m having problem i=
n the QA and in the do_package.<br><br></div>This problem occurs when I try=
 to copy all the npm packets to target path using the command &quot;cp -r&q=
uot;.<br><br>=C2=A0=C2=A0=C2=A0=C2=A0 cp -r=C2=A0 ${S}/build/* ${D}${libdir=
}/node_modules/serialport/build/<br>=C2=A0=C2=A0=C2=A0=C2=A0 cp -r=C2=A0 ${=
S}/node_modules/*=C2=A0 ${D}${libdir}/node_modules<br><br></div>When I use =
the cp , the bitbake display the following message:<br><br>WARNING: QA Issu=
e: node-serialport requires /bin/bash, /bin/zsh, but no providers in its RD=
EPENDS [file-rdeps]<br><div><br></div><div>I try to add RDEPENDS +=3D &quot=
;bash&quot; but this is not enough, and the bitbake ask for the /bin/zsh an=
d the zsh is blacklisted.<br><br></div><div>*I&#39;m not a &quot;Yocto expe=
rt&quot; so I need improve my recipes (there&#39;s some workarounds in my r=
ecipes)<br><br>I&#39;m using as model the Recipes from webOS : <a href=3D"h=
ttps://github.com/openwebos/meta-webos/tree/master/recipes-upstreamable/nod=
e-gyp">https://github.com/openwebos/meta-webos/tree/master/recipes-upstream=
able/node-gyp</a><br><br><br><a href=3D"http://node-serialport_git.bb">node=
-serialport_git.bb</a><br><br>SUMMARY =3D &quot;node-serial is a Serial Por=
t binding for Node.js&quot;<br>SECTION =3D &quot;nodejs/module&quot;<br>LIC=
ENSE =3D &quot;MIT&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://README.md;md5=
=3Db9a59a0fefe195d10be82cf7f0a99788&quot;<br><br>DEPENDS =3D &quot;node-pre=
-gyp-native&quot;<br><br>PV =3D &quot;1.6.1+gitr${SRCPV}&quot;<br><br>RDEPE=
NDS =3D &quot;bash&quot;<br><br>SRC_URI =3D &quot;git://<a href=3D"http://g=
ithub.com/voodootikigod/node-serialport.git;branch=3Dmaster;protocol=3Dgit"=
>github.com/voodootikigod/node-serialport.git;branch=3Dmaster;protocol=3Dgi=
t</a>&quot;<br>SRCREV =3D &quot;94b7bdcc087b820e10913c483bab3e2c54d103f2&qu=
ot;<br>S =3D &quot;${WORKDIR}/git&quot;<br><br><br>do_configure() {<br>=C2=
=A0=C2=A0=C2=A0 export LD=3D&quot;${CXX}&quot;<br>=C2=A0=C2=A0=C2=A0 export=
 GYP_DEFINES=3D&quot;sysroot=3D${STAGING_DIR_HOST}&quot;<br>=C2=A0=C2=A0=C2=
=A0 node-pre-gyp --target_arch=3D${TARGET_ARCH} --target_platform=3Dlinux c=
onfigure<br>}<br><br>do_compile() {<br>=C2=A0=C2=A0=C2=A0 export LD=3D&quot=
;${CXX}&quot;<br>=C2=A0=C2=A0=C2=A0 export GYP_DEFINES=3D&quot;sysroot=3D${=
STAGING_DIR_HOST}&quot;<br>=C2=A0=C2=A0=C2=A0 node-pre-gyp --target_arch=3D=
${TARGET_ARCH} --target_platform=3Dlinux=C2=A0 build=C2=A0=C2=A0=C2=A0 <br>=
}<br><br>do_install() {<br><br>=C2=A0=C2=A0=C2=A0 npm install --no-cache<br=
>=C2=A0=C2=A0=C2=A0 install -d ${D}${libdir}/node_modules<br>=C2=A0=C2=A0=
=C2=A0 install -d ${D}${libdir}/node_modules/serialport/<br>=C2=A0=C2=A0=C2=
=A0 install -d ${D}${libdir}/node_modules/serialport/build<br>=C2=A0=C2=A0=
=C2=A0 install -d ${D}${libdir}/node_modules/serialport/bin<br>=C2=A0=C2=A0=
=C2=A0 install -d ${S}/build/Release/=C2=A0=C2=A0=C2=A0 ${D}${libdir}/node_=
modules/serialport/build/<br>=C2=A0=C2=A0=C2=A0 install -m 0664 ${S}/bin/se=
rialportList.js ${D}${libdir}/node_modules/serialport/bin/<br>=C2=A0=C2=A0=
=C2=A0 install -m 0664 ${S}/bin/serialportTerminal.js ${D}${libdir}/node_mo=
dules/serialport/bin/<br>=C2=A0=C2=A0=C2=A0 install -m 0664 ${S}/package.js=
on ${D}${libdir}/node_modules/serialport/<br>=C2=A0=C2=A0=C2=A0 install -m =
0664 ${S}/parsers.js=C2=A0=C2=A0 ${D}${libdir}/node_modules/serialport/<br>=
=C2=A0=C2=A0=C2=A0 install -m 0664 ${S}/serialport.js ${D}${libdir}/node_mo=
dules/serialport/<br></div><div>#problematic line if the cp lines are uncom=
mented the bitbake displayed to add RDEPEND /bin/bash and /bin/zsh<br></div=
><div>=C2=A0=C2=A0=C2=A0 cp -r=C2=A0 ${S}/build/* ${D}${libdir}/node_module=
s/serialport/build/<br>=C2=A0=C2=A0=C2=A0 cp -r=C2=A0 ${S}/node_modules/*=
=C2=A0 ${D}${libdir}/node_modules<br>}<br><br><br>FILES_${PN} +=3D &quot;${=
libdir}/node_modules \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ${libdir}/n=
ode_modules/serialport \ <br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ${libdir=
}/node_modules/serialport/build \<br>&quot;<br><br>FILES_${PN}-dbg +=3D &qu=
ot;${libdir}/node_modules/.debug \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=
 ${libdir}/node_modules/serialport/.debug \ <br>=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 ${libdir}/node_modules/serialport/build/.debug \<br>=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 ${libdir/node_modules/serialport/build/Release=
/.debug \<br>&quot;<br></div><div>#workaround to avoid QA&#39;s problems, m=
ust be fixed in the second round<br></div><div>INHIBIT_PACKAGE_DEBUG_SPLIT =
=3D &quot;1&quot;<br>INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br><br><br>}<b=
r><br><br><br></div><div><a href=3D"http://node_pre-gyp-native.bb">node_pre=
-gyp-native.bb</a><br><br>DESCRIPTION =3D &quot;Node.js tool for easy binar=
y deployment of C++ addons&quot;<br>HOMEPAGE =3D &quot;<a href=3D"https://g=
ithub.com/mapbox/node-pre-gyp.git">https://github.com/mapbox/node-pre-gyp.g=
it</a>&quot;<br>LICENSE =3D &quot;BSD&quot;<br>SECTION =3D &quot;nodejs/mod=
ule&quot;<br><br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D7e13c3cf88=
3a44ebcc74a8f568c0f6fb&quot;<br><br>SRC_URI =3D &quot;git://<a href=3D"http=
://github.com/mapbox/node-pre-gyp.git;branch=3Dmaster;protocol=3Dgit">githu=
b.com/mapbox/node-pre-gyp.git;branch=3Dmaster;protocol=3Dgit</a>&quot;<br>S=
RCREV =3D &quot;332b8b123e3aa91718fad763cf1fc11c4cfb49b7&quot;<br>DEPENDS =
=3D &quot;nodejs-native node-gyp-native&quot;<br><br>S =3D &quot;${WORKDIR}=
/git&quot;<br><br>inherit native<br><br>do_install () {<br></div><div>=C2=
=A0 #woraround to install the node-pre-gyp<br></div><div>=C2=A0 npm install=
 -g --force<br>}<br></div><div><br>If someone could help me I will be grate=
ful.<br></div><div>Thanks !<br><br></div><div>Regards,<div><div><br>-- <br>=
<div class=3D"gmail_signature">--------------------------------------------=
--<br>Caio Pereira</div>
</div></div></div></div>

--089e0160a7085144c7051143e2ae--
