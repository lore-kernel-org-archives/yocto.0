Return-Path: <caiortp@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54CDBE008D4; Mon, 16 Mar 2015 06:20:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (caiortp[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B84FE00712
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 06:20:39 -0700 (PDT)
Received: by lamx15 with SMTP id x15so39571904lam.3
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 06:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=r4GOkqbIgh9/WiyYHet5Ej/M331MIuV5aDnjQUOcUJI=;
	b=b0P7YJgpdZqHeF2Vw+bhGuh3uoTf9MNxwj/OTqIPSJ0bUjlRtJaiuJpVtn28AbxTd0
	CbvRIm+Tmv9P7mcc9L+juEevDb0/6mmQTxaAj/9firu3O4mo62Ke3DtOe4Dab4DIyDva
	2NZDvLjQOt+HdcXtXuzb2AKpoQIgaXA0CX4duT9+oIOt3HttLuHQ8PGu6s+N7aam7jxB
	m71Gg7KYNuWbTGY30yx2VNre6a0Jktw5OBJdMIjLWP+BEKIeUNkz0+ADUh/1O7/UIVl1
	fCf66bsSa2TYshRwry5OsiFdCwRisMQwV4kasYiJ8F7OoGS3nJ01Vq8/83mpU2I+pAD+
	FZgg==
MIME-Version: 1.0
X-Received: by 10.112.130.195 with SMTP id og3mr54341278lbb.112.1426512037726; 
	Mon, 16 Mar 2015 06:20:37 -0700 (PDT)
Received: by 10.112.105.40 with HTTP; Mon, 16 Mar 2015 06:20:37 -0700 (PDT)
In-Reply-To: <CAMKF1sph3oqBe4_t+9eRuHLNrgpZ6jrh0kb0HmUJYdHe=jnT=Q@mail.gmail.com>
References: <CAJqtCybFU9G7v71bgjTpJGpWqJ5AC-DMp7+yxr3n86jYVEjrHA@mail.gmail.com>
	<CAMKF1sph3oqBe4_t+9eRuHLNrgpZ6jrh0kb0HmUJYdHe=jnT=Q@mail.gmail.com>
Date: Mon, 16 Mar 2015 10:20:37 -0300
Message-ID: <CAJqtCyZ_CttxB8y+MBtNvQrD=+E69EnYV4aAsuL9X_GAsDNKJg@mail.gmail.com>
From: Caio <caiortp@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: node-serialport recipe help
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
X-List-Received-Date: Mon, 16 Mar 2015 13:20:44 -0000
Content-Type: multipart/alternative; boundary=047d7b3a83aa46cec7051167b7f1

--047d7b3a83aa46cec7051167b7f1
Content-Type: text/plain; charset=UTF-8

Khem , Thank you very much !


Best Regards,

Caio Pereira

2015-03-15 5:57 GMT-03:00 Khem Raj <raj.khem@gmail.com>:

> On Sat, Mar 14, 2015 at 11:35 AM, Caio <caiortp@gmail.com> wrote:
> > Hi folks!
> >
> > I'm writing a recipe to build the nodejs with node-serialport, but i'm
> > having problem in the QA and in the do_package.
> >
> > This problem occurs when I try to copy all the npm packets to target path
> > using the command "cp -r".
> >
> >      cp -r  ${S}/build/* ${D}${libdir}/node_modules/serialport/build/
> >      cp -r  ${S}/node_modules/*  ${D}${libdir}/node_modules
> >
> > When I use the cp , the bitbake display the following message:
> >
> > WARNING: QA Issue: node-serialport requires /bin/bash, /bin/zsh, but no
> > providers in its RDEPENDS [file-rdeps]
> >
> > I try to add RDEPENDS += "bash" but this is not enough, and the bitbake
> ask
> > for the /bin/zsh and the zsh is blacklisted.
> >
> > *I'm not a "Yocto expert" so I need improve my recipes (there's some
> > workarounds in my recipes)
>
> These errors can be easily avoided by making more granular packaging.
> Identify the scripts in the install tree which require bash and zsh
> for interpreter, then add PACKAGES += "${PN}-bash ${PN}-zsh" which
> defines two extra output packages. then add FILES_${PN}-zsh =
> "/path/to/the/zsh/scripts/" and same for for another package. Then add
> RDEPENDS_${PN}-zsh = "zsh" RDEPENDS_${PN}-bash = "bash"
>
>
> >
> > I'm using as model the Recipes from webOS :
> >
> https://github.com/openwebos/meta-webos/tree/master/recipes-upstreamable/node-gyp
> >
> >
> > node-serialport_git.bb
> >
> > SUMMARY = "node-serial is a Serial Port binding for Node.js"
> > SECTION = "nodejs/module"
> > LICENSE = "MIT"
> > LIC_FILES_CHKSUM =
> "file://README.md;md5=b9a59a0fefe195d10be82cf7f0a99788"
> >
> > DEPENDS = "node-pre-gyp-native"
> >
> > PV = "1.6.1+gitr${SRCPV}"
> >
> > RDEPENDS = "bash"
> >
> > SRC_URI =
> > "git://
> github.com/voodootikigod/node-serialport.git;branch=master;protocol=git"
> > SRCREV = "94b7bdcc087b820e10913c483bab3e2c54d103f2"
> > S = "${WORKDIR}/git"
> >
> >
> > do_configure() {
> >     export LD="${CXX}"
> >     export GYP_DEFINES="sysroot=${STAGING_DIR_HOST}"
> >     node-pre-gyp --target_arch=${TARGET_ARCH} --target_platform=linux
> > configure
> > }
> >
> > do_compile() {
> >     export LD="${CXX}"
> >     export GYP_DEFINES="sysroot=${STAGING_DIR_HOST}"
> >     node-pre-gyp --target_arch=${TARGET_ARCH} --target_platform=linux
> build
> > }
> >
> > do_install() {
> >
> >     npm install --no-cache
> >     install -d ${D}${libdir}/node_modules
> >     install -d ${D}${libdir}/node_modules/serialport/
> >     install -d ${D}${libdir}/node_modules/serialport/build
> >     install -d ${D}${libdir}/node_modules/serialport/bin
> >     install -d ${S}/build/Release/
> > ${D}${libdir}/node_modules/serialport/build/
> >     install -m 0664 ${S}/bin/serialportList.js
> > ${D}${libdir}/node_modules/serialport/bin/
> >     install -m 0664 ${S}/bin/serialportTerminal.js
> > ${D}${libdir}/node_modules/serialport/bin/
> >     install -m 0664 ${S}/package.json
> ${D}${libdir}/node_modules/serialport/
> >     install -m 0664 ${S}/parsers.js
>  ${D}${libdir}/node_modules/serialport/
> >     install -m 0664 ${S}/serialport.js
> > ${D}${libdir}/node_modules/serialport/
> > #problematic line if the cp lines are uncommented the bitbake displayed
> to
> > add RDEPEND /bin/bash and /bin/zsh
> >     cp -r  ${S}/build/* ${D}${libdir}/node_modules/serialport/build/
> >     cp -r  ${S}/node_modules/*  ${D}${libdir}/node_modules
> > }
> >
> >
> > FILES_${PN} += "${libdir}/node_modules \
> >         ${libdir}/node_modules/serialport \
> >         ${libdir}/node_modules/serialport/build \
> > "
> >
> > FILES_${PN}-dbg += "${libdir}/node_modules/.debug \
> >         ${libdir}/node_modules/serialport/.debug \
> >         ${libdir}/node_modules/serialport/build/.debug \
> >         ${libdir/node_modules/serialport/build/Release/.debug \
> > "
> > #workaround to avoid QA's problems, must be fixed in the second round
> > INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> > INHIBIT_PACKAGE_STRIP = "1"
> >
> >
> > }
> >
> >
> >
> > node_pre-gyp-native.bb
> >
> > DESCRIPTION = "Node.js tool for easy binary deployment of C++ addons"
> > HOMEPAGE = "https://github.com/mapbox/node-pre-gyp.git"
> > LICENSE = "BSD"
> > SECTION = "nodejs/module"
> >
> > LIC_FILES_CHKSUM = "file://LICENSE;md5=7e13c3cf883a44ebcc74a8f568c0f6fb"
> >
> > SRC_URI =
> > "git://github.com/mapbox/node-pre-gyp.git;branch=master;protocol=git"
> > SRCREV = "332b8b123e3aa91718fad763cf1fc11c4cfb49b7"
> > DEPENDS = "nodejs-native node-gyp-native"
> >
> > S = "${WORKDIR}/git"
> >
> > inherit native
> >
> > do_install () {
> >   #woraround to install the node-pre-gyp
> >   npm install -g --force
> > }
> >
> > If someone could help me I will be grateful.
> > Thanks !
> >
> > Regards,
> >
> > --
> > ----------------------------------------------
> > Caio Pereira
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>



-- 
----------------------------------------------
Caio Pereira

--047d7b3a83aa46cec7051167b7f1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Khem , Thank you very much !<br><br><span i=
d=3D"result_box" class=3D"" lang=3D"en"><span class=3D""><br></span></span>=
</div></div>Best Regards,<br><br></div>Caio Pereira<br></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">2015-03-15 5:57 GMT-03:00 Khem =
Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_=
blank">raj.khem@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Sat, Mar 14, 2015 at 11:35 AM, Caio &lt;<a href=3D"mai=
lto:caiortp@gmail.com">caiortp@gmail.com</a>&gt; wrote:<br>
&gt; Hi folks!<br>
&gt;<br>
&gt; I&#39;m writing a recipe to build the nodejs with node-serialport, but=
 i&#39;m<br>
&gt; having problem in the QA and in the do_package.<br>
&gt;<br>
&gt; This problem occurs when I try to copy all the npm packets to target p=
ath<br>
&gt; using the command &quot;cp -r&quot;.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cp -r=C2=A0 ${S}/build/* ${D}${libdir}/node_module=
s/serialport/build/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 cp -r=C2=A0 ${S}/node_modules/*=C2=A0 ${D}${libdir=
}/node_modules<br>
&gt;<br>
&gt; When I use the cp , the bitbake display the following message:<br>
&gt;<br>
&gt; WARNING: QA Issue: node-serialport requires /bin/bash, /bin/zsh, but n=
o<br>
&gt; providers in its RDEPENDS [file-rdeps]<br>
&gt;<br>
&gt; I try to add RDEPENDS +=3D &quot;bash&quot; but this is not enough, an=
d the bitbake ask<br>
&gt; for the /bin/zsh and the zsh is blacklisted.<br>
&gt;<br>
&gt; *I&#39;m not a &quot;Yocto expert&quot; so I need improve my recipes (=
there&#39;s some<br>
&gt; workarounds in my recipes)<br>
<br>
</span>These errors can be easily avoided by making more granular packaging=
.<br>
Identify the scripts in the install tree which require bash and zsh<br>
for interpreter, then add PACKAGES +=3D &quot;${PN}-bash ${PN}-zsh&quot; wh=
ich<br>
defines two extra output packages. then add FILES_${PN}-zsh =3D<br>
&quot;/path/to/the/zsh/scripts/&quot; and same for for another package. The=
n add<br>
RDEPENDS_${PN}-zsh =3D &quot;zsh&quot; RDEPENDS_${PN}-bash =3D &quot;bash&q=
uot;<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; I&#39;m using as model the Recipes from webOS :<br>
&gt; <a href=3D"https://github.com/openwebos/meta-webos/tree/master/recipes=
-upstreamable/node-gyp" target=3D"_blank">https://github.com/openwebos/meta=
-webos/tree/master/recipes-upstreamable/node-gyp</a><br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"http://node-serialport_git.bb" target=3D"_blank">node-seria=
lport_git.bb</a><br>
&gt;<br>
&gt; SUMMARY =3D &quot;node-serial is a Serial Port binding for Node.js&quo=
t;<br>
&gt; SECTION =3D &quot;nodejs/module&quot;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://README.md;md5=3Db9a59a0fefe195d10be8=
2cf7f0a99788&quot;<br>
&gt;<br>
&gt; DEPENDS =3D &quot;node-pre-gyp-native&quot;<br>
&gt;<br>
&gt; PV =3D &quot;1.6.1+gitr${SRCPV}&quot;<br>
&gt;<br>
&gt; RDEPENDS =3D &quot;bash&quot;<br>
&gt;<br>
&gt; SRC_URI =3D<br>
&gt; &quot;git://<a href=3D"http://github.com/voodootikigod/node-serialport=
.git;branch=3Dmaster;protocol=3Dgit" target=3D"_blank">github.com/voodootik=
igod/node-serialport.git;branch=3Dmaster;protocol=3Dgit</a>&quot;<br>
&gt; SRCREV =3D &quot;94b7bdcc087b820e10913c483bab3e2c54d103f2&quot;<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt;<br>
&gt; do_configure() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0export LD=3D&quot;${CXX}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0export GYP_DEFINES=3D&quot;sysroot=3D${STAGING_DIR_=
HOST}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0node-pre-gyp --target_arch=3D${TARGET_ARCH} --targe=
t_platform=3Dlinux<br>
&gt; configure<br>
&gt; }<br>
&gt;<br>
&gt; do_compile() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0export LD=3D&quot;${CXX}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0export GYP_DEFINES=3D&quot;sysroot=3D${STAGING_DIR_=
HOST}&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0node-pre-gyp --target_arch=3D${TARGET_ARCH} --targe=
t_platform=3Dlinux=C2=A0 build<br>
&gt; }<br>
&gt;<br>
&gt; do_install() {<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0npm install --no-cache<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${libdir}/node_modules<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${libdir}/node_modules/serialport/<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${libdir}/node_modules/serialport/bu=
ild<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${D}${libdir}/node_modules/serialport/bi=
n<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -d ${S}/build/Release/<br>
&gt; ${D}${libdir}/node_modules/serialport/build/<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0664 ${S}/bin/serialportList.js<br>
&gt; ${D}${libdir}/node_modules/serialport/bin/<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0664 ${S}/bin/serialportTerminal.js<br>
&gt; ${D}${libdir}/node_modules/serialport/bin/<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0664 ${S}/package.json ${D}${libdir}/nod=
e_modules/serialport/<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0664 ${S}/parsers.js=C2=A0 =C2=A0${D}${l=
ibdir}/node_modules/serialport/<br>
&gt;=C2=A0 =C2=A0 =C2=A0install -m 0664 ${S}/serialport.js<br>
&gt; ${D}${libdir}/node_modules/serialport/<br>
&gt; #problematic line if the cp lines are uncommented the bitbake displaye=
d to<br>
&gt; add RDEPEND /bin/bash and /bin/zsh<br>
&gt;=C2=A0 =C2=A0 =C2=A0cp -r=C2=A0 ${S}/build/* ${D}${libdir}/node_modules=
/serialport/build/<br>
&gt;=C2=A0 =C2=A0 =C2=A0cp -r=C2=A0 ${S}/node_modules/*=C2=A0 ${D}${libdir}=
/node_modules<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt; FILES_${PN} +=3D &quot;${libdir}/node_modules \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/node_modules/serialport \<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/node_modules/serialport/bui=
ld \<br>
&gt; &quot;<br>
&gt;<br>
&gt; FILES_${PN}-dbg +=3D &quot;${libdir}/node_modules/.debug \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/node_modules/serialport/.de=
bug \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir}/node_modules/serialport/bui=
ld/.debug \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${libdir/node_modules/serialport/buil=
d/Release/.debug \<br>
&gt; &quot;<br>
&gt; #workaround to avoid QA&#39;s problems, must be fixed in the second ro=
und<br>
&gt; INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
&gt; INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>
&gt;<br>
&gt;<br>
&gt; }<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <a href=3D"http://node_pre-gyp-native.bb" target=3D"_blank">node_pre-g=
yp-native.bb</a><br>
&gt;<br>
&gt; DESCRIPTION =3D &quot;Node.js tool for easy binary deployment of C++ a=
ddons&quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"https://github.com/mapbox/node-pre-gyp.g=
it" target=3D"_blank">https://github.com/mapbox/node-pre-gyp.git</a>&quot;<=
br>
&gt; LICENSE =3D &quot;BSD&quot;<br>
&gt; SECTION =3D &quot;nodejs/module&quot;<br>
&gt;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D7e13c3cf883a44ebcc74a8=
f568c0f6fb&quot;<br>
&gt;<br>
&gt; SRC_URI =3D<br>
&gt; &quot;git://<a href=3D"http://github.com/mapbox/node-pre-gyp.git;branc=
h=3Dmaster;protocol=3Dgit" target=3D"_blank">github.com/mapbox/node-pre-gyp=
.git;branch=3Dmaster;protocol=3Dgit</a>&quot;<br>
&gt; SRCREV =3D &quot;332b8b123e3aa91718fad763cf1fc11c4cfb49b7&quot;<br>
&gt; DEPENDS =3D &quot;nodejs-native node-gyp-native&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; inherit native<br>
&gt;<br>
&gt; do_install () {<br>
&gt;=C2=A0 =C2=A0#woraround to install the node-pre-gyp<br>
&gt;=C2=A0 =C2=A0npm install -g --force<br>
&gt; }<br>
&gt;<br>
&gt; If someone could help me I will be grateful.<br>
&gt; Thanks !<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; --<br>
&gt; ----------------------------------------------<br>
&gt; Caio Pereira<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature">----------------------------------------------<br>Cai=
o Pereira</div>
</div>

--047d7b3a83aa46cec7051167b7f1--
