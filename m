Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6891BE00E54; Thu, 14 Nov 2019 15:49:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (markhawthorne172[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35CD0E00E3B
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 15:49:39 -0800 (PST)
Received: by mail-wm1-f49.google.com with SMTP id z26so7808645wmi.4
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 15:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=0+ruq1PDgbJ4LhaHEwuSr1UD6B3AnWOfGLjfh+v2h7o=;
	b=IQfneGVx8hPdN1gIjpRZbtn45Pc+ZzeaPo9FMFTKa1ZlopoHBldeQ/QHfTJgdw7DlM
	yHkeZOByUwtuM/uaKvNdiEpyp9r7Zxilk6W9oygYTKknXghImXatED3mwdRo+FiCuJRA
	VRPs2OCDnUCxSDTLS/n9bIWuZTLHWnOR/7lgNJaknEea4T1mzlyan/CpTrZ9ig8e/ngE
	6r7bqQk/uPGfPaMBKtkh5sRBVtj0I6koD57Kdt/vcmkts/d12PPUGPoxvRj8st/IalQL
	Wfh1a9w+jeUUvZldqbp6B0zSldp4DplsAuTUdSP6VDOG350VJajQ+9Grzh/zqg6lkM/0
	OGkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0+ruq1PDgbJ4LhaHEwuSr1UD6B3AnWOfGLjfh+v2h7o=;
	b=tUa2zhx+ZGwM6Wjlg//Imve7euNZLYPa2yUumxzrfiVhOO0afVASHWEUok6aeH3oDK
	evTxiWnhUTfdTs3ZdJ0dbacygTp4CGbeC3lmpUN9pvUi2aV9BUdp5x2WWfuNz7UkqAHk
	WtykblUYWIONKbhB3i0OCS0czc4zIbQ0FxxxI++NoJMp/TM0U+rvLXUjQU730UWphx38
	B+dJqTMQ+jtsB5y83+tbbPXVw7HYA3hR94juWN0EtSZLL8FDXqVXmfDtTT1pWV3LwmDW
	X3h8I74LVM2fehbIbt6SG3iYCz4DH1yt58mSFhjI2WJL2OO44RLlKHlX7RebD5yGc2yC
	TeyA==
X-Gm-Message-State: APjAAAUpjJD49d5dP7aOaQ6zG7gOVBpIga8X5WxpHtDc6pQdxCN+mnch
	XZzT6SDsKfn19k1kGEFCJcDELujlyTGqmrPlOasR9JV3
X-Google-Smtp-Source: APXvYqx7GNWYGsUAPpiuFp+UGr/O9i0o0IjCzLiSYsfQYKgSKgRO4uGYbPRKTGqlceIrCx3CG4CaD5goXpPqkt+knzY=
X-Received: by 2002:a1c:16:: with SMTP id 22mr12124881wma.0.1573775377930;
	Thu, 14 Nov 2019 15:49:37 -0800 (PST)
MIME-Version: 1.0
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Thu, 14 Nov 2019 17:49:27 -0600
Message-ID: <CAEEV9O2B-TFrzgYncyam2bLgYu=jsVsL-N8dsxodBg-hOa2BSQ@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Manifest not found
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
X-List-Received-Date: Thu, 14 Nov 2019 23:49:40 -0000
Content-Type: multipart/alternative; boundary="0000000000005b9d21059757225a"

--0000000000005b9d21059757225a
Content-Type: text/plain; charset="UTF-8"

I created a new recipe called mapbox-gl-native and added it to
IMAGE_INSTALL in the image recipe. The package builds succesfully, but now
I am stuck on this error in the final image creation stage:

---------------------------------------
DEBUG: Executing python function do_rootfs
NOTE: Initializing intercept dir for
/home/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/beaglebone_efis-linux-gnueabi/mylayer-image-tisdk/1.0-r0/rootfs
DEBUG: Collected intercepts:

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/delay_to_first_boot

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/postinst_intercept

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_font_cache

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_gio_module_cache

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_gtk_immodules_cache

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_icon_cache

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_pixbuf_cache

/home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_udev_hwdb

WARNING: Manifest
/home/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/sstate-control/manifest-x86_64-mapbox-gl-native.package_write_ipk
not found in x86_64 (variant '')?
ERROR: No manifest generated from: mapbox-gl-native in
/home/mark/Documents/tisdk/sources/meta-mylayer/recipes-navigation/mapbox-gl-native/
mapbox-gl-native.bb
DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs
---------------------------------------

Bitbake is complaining about missing the mapbox-gl-native manfiest file for
x86, but I never built the recipe for x86 so that file does not exist. The
correct files does exist for armv7. I am not clear why it is trying to use
the x86 instead of the armv7 version. Everything else being built into the
image is using the correct armv7 manifest file.

I can see the correct package output files under
work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native_1.0-r0_
armv7at2hf-neon.ipk
work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-dbg_1.0-r0_
armv7at2hf-neon.ipk
work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-dev_1.0-r0_
armv7at2hf-neon.ipk
work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-staticdev_1.0-r0_
armv7at2hf-neon.ipk

Here is the recipe for reference
-------------------------------------------
SUMMARY = "Mapbox Slippery Map"
HOMEPAGE = ""
DESCRIPTION = ""
LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "git://github.com/mapbox/mapbox-gl-native.git;branch=master"

SRCREV = "4c1d03c257754ecc1555f3e31b3c6ccf45c4bf7b"

DEPENDS = "virtual/libgles2 virtual/egl glfw icu curl libuv sqlite
libjpeg-turbo"

S = "${WORKDIR}/git"

EXTRA_OECMAKE = "-DWITH_NODEJS=OFF -DWITH_EGL=ON -DWITH_ERROR=OFF"

OECMAKE_TARGET_COMPILE = "mbgl-glfw"

inherit cmake

do_install() {
install -D -m 0755 ${B}/libmbgl-core.a ${D}${libdir}/libmgl-core.a
install -D -m 0755 ${B}/libmbgl-vendor-nunicode.a
${D}${libdir}/libmbgl-vendor-nunicode.a
install -D -m 0755 ${B}/mbgl-glfw ${D}${bindir}/mbgl-glfw
}
----------------------------------------.

--0000000000005b9d21059757225a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I created a new recipe=C2=A0called mapbox-gl-native a=
nd added it to IMAGE_INSTALL in the image recipe. The package builds succes=
fully, but now I am stuck on this error in the final image creation stage:<=
/div><div><br></div><div>---------------------------------------</div>DEBUG=
: Executing python function do_rootfs<br>NOTE: Initializing intercept dir f=
or /home/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/b=
eaglebone_efis-linux-gnueabi/mylayer-image-tisdk/1.0-r0/rootfs<br>DEBUG: Co=
llected intercepts:<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/sc=
ripts/postinst-intercepts/delay_to_first_boot<br>=C2=A0 /home/mark/Document=
s/tisdk/sources/oe-core/scripts/postinst-intercepts/postinst_intercept<br>=
=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercep=
ts/update_font_cache<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/s=
cripts/postinst-intercepts/update_gio_module_cache<br>=C2=A0 /home/mark/Doc=
uments/tisdk/sources/oe-core/scripts/postinst-intercepts/update_gtk_immodul=
es_cache<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/scripts/posti=
nst-intercepts/update_icon_cache<br>=C2=A0 /home/mark/Documents/tisdk/sourc=
es/oe-core/scripts/postinst-intercepts/update_pixbuf_cache<br>=C2=A0 /home/=
mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_ude=
v_hwdb<br><br>WARNING: Manifest /home/mark/Documents/tisdk/build/arago-tmp-=
external-arm-toolchain/sstate-control/manifest-x86_64-mapbox-gl-native.pack=
age_write_ipk not found in x86_64 (variant &#39;&#39;)?<br>ERROR: No manife=
st generated from: mapbox-gl-native in /home/mark/Documents/tisdk/sources/m=
eta-mylayer/recipes-navigation/mapbox-gl-native/<a href=3D"http://mapbox-gl=
-native.bb">mapbox-gl-native.bb</a><br>DEBUG: Python function do_rootfs fin=
ished<br>ERROR: Function failed: do_rootfs<br><div>------------------------=
---------------=C2=A0=C2=A0<br></div><div><br></div><div>Bitbake is complai=
ning about missing the mapbox-gl-native manfiest file for x86, but I never =
built the recipe for x86 so that file does not exist. The correct files doe=
s exist for armv7. I am not clear why it is trying to use the x86 instead o=
f the armv7 version. Everything else being built into the image is using th=
e correct armv7 manifest file.</div><div><br></div><div>I can see the corre=
ct package output files under</div><div>work/armv7at2hf-neon-linux-gnueabi/=
mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native_1.0-r0=
_

armv7at2hf-neon.ipk</div><div>work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-=
native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-dbg_1.0-r0_

armv7at2hf-neon.ipk=C2=A0</div><div>

work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv=
7at2hf-neon/mapbox-gl-native-dev_1.0-r0_

armv7at2hf-neon.ipk=C2=A0</div><div>

work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv=
7at2hf-neon/mapbox-gl-native-staticdev_1.0-r0_

armv7at2hf-neon.ipk

=C2=A0=C2=A0<br></div><div></div><div><br></div><div>Here is the recipe for=
 reference=C2=A0=C2=A0<br></div><div>--------------------------------------=
-----</div>SUMMARY =3D &quot;Mapbox Slippery Map&quot;<br>HOMEPAGE =3D &quo=
t;&quot;<br>DESCRIPTION =3D &quot;&quot;<br>LICENSE =3D &quot;MIT&quot;<br>=
LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade69=
8e0bcf8506ecda2f7b4f302&quot;<br><br>SRC_URI =3D &quot;git://<a href=3D"htt=
p://github.com/mapbox/mapbox-gl-native.git;branch=3Dmaster">github.com/mapb=
ox/mapbox-gl-native.git;branch=3Dmaster</a>&quot;<br><br>SRCREV =3D &quot;4=
c1d03c257754ecc1555f3e31b3c6ccf45c4bf7b&quot;<br><br>DEPENDS =3D &quot;virt=
ual/libgles2 virtual/egl glfw icu curl libuv sqlite libjpeg-turbo&quot;<br>=
<br>S =3D &quot;${WORKDIR}/git&quot;<br><br>EXTRA_OECMAKE =3D &quot;-DWITH_=
NODEJS=3DOFF -DWITH_EGL=3DON -DWITH_ERROR=3DOFF&quot;<br><br>OECMAKE_TARGET=
_COMPILE =3D &quot;mbgl-glfw&quot;<br><br>inherit cmake<br><br>do_install()=
 {<br>	install -D -m 0755 ${B}/libmbgl-core.a ${D}${libdir}/libmgl-core.a<b=
r>	install -D -m 0755 ${B}/libmbgl-vendor-nunicode.a ${D}${libdir}/libmbgl-=
vendor-nunicode.a<br>	install -D -m 0755 ${B}/mbgl-glfw ${D}${bindir}/mbgl-=
glfw<br><div>}</div><div>----------------------------------------.<br></div=
></div>

--0000000000005b9d21059757225a--
