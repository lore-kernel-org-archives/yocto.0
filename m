Return-Path: <markhawthorne172@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B73F0E00E5E; Thu, 14 Nov 2019 18:19:25 -0800 (PST)
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
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76540E00E24
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 18:19:24 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id b72so6123263edf.1
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2019 18:19:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=WhLdpOZQnRhH2anO9nogVadyuB9gEUdBP8fnAI5CXyg=;
	b=Ssz03XgeOiFoiTlB78d1ILA/JhlFbFYgJtZ2cbMODrkXrq+GxRlnkTsOz/QhXWQhky
	KuRMAIqa0n0KRNGzyIVFo5zt6nfov1VaTEVJIfQtaTKIOqFTuDN5MAI8e23FkVkU4eRg
	96dG6aydtY2yb7DR9S8hIIcx4AFt1WhlOQI2mUm/slcOsCCF0i8G7YYLt+j+6wqKJO1l
	qwj+508OQR/QNzJeso6PaDjbVamBx9CYymueQiRxGhepupwWnpIjPKIdulnR9ZuVPXQA
	WScvb72mU4ugXKDdjWC7tOT3obR4YhlnlDAUwXYChMEov1haKVwcSMbZIC6YUD3IpBFa
	oJOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=WhLdpOZQnRhH2anO9nogVadyuB9gEUdBP8fnAI5CXyg=;
	b=qkcUdzrjdPWg6u4VqOerlGYWTWZ6RDyFIItL/GYlBlNU1dcTdyz1pRpXgC5+u6kBga
	AYCrMDZ+2RgPT9u5L56EQSzROMF6AyngYuJYLMDYTisyL82GWYkfl4DaG/Od5+HIM4AQ
	AoDQ1dCedKe80ro5Kt3jCKcCiP22ZD4flWaJnQfzEWugcD6IUhhoaNPE63YYPEpnBD6i
	UhQayOCtroUqVYKeb6rDC7hbkmcQNfKQLuW8OcHDefwmMUILz/ViocOZKASaElQxAmfG
	tWHQkiP7Rn0paqs7PmVBVcjo1OlvdIHuHG39o35+A4TM/B7vq7gF2FxDQt1+UcUXc2CL
	qUfQ==
X-Gm-Message-State: APjAAAX8irBDbNF0b6MCtdmurrPZP3kCTDt8fx3S+0XyR5o0Dcrziv3E
	LZn4ob5xLEjkUE3T/tGpBtJAY6/N01InWv06iA8Hyg==
X-Google-Smtp-Source: APXvYqxRiZwM0xwVmlXywy5naCnpRFJe1mlV557KxVOi0Ub5VNzEzhS0XWRV0OcCdN2OzEvt6+4c72vRcK+kNe03Zao=
X-Received: by 2002:a17:906:a457:: with SMTP id
	cb23mr10100734ejb.191.1573784363415; 
	Thu, 14 Nov 2019 18:19:23 -0800 (PST)
MIME-Version: 1.0
References: <CAEEV9O2B-TFrzgYncyam2bLgYu=jsVsL-N8dsxodBg-hOa2BSQ@mail.gmail.com>
In-Reply-To: <CAEEV9O2B-TFrzgYncyam2bLgYu=jsVsL-N8dsxodBg-hOa2BSQ@mail.gmail.com>
From: Mark Hawthorne <markhawthorne172@gmail.com>
Date: Thu, 14 Nov 2019 20:19:12 -0600
Message-ID: <CAEEV9O0XrRR-vUc4HGgS=LgNtWGw0Bea6m1jrfAtcKimJ2tvVw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Manifest not found
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
X-List-Received-Date: Fri, 15 Nov 2019 02:19:25 -0000
Content-Type: multipart/alternative; boundary="000000000000ef3be40597593942"

--000000000000ef3be40597593942
Content-Type: text/plain; charset="UTF-8"

I see the problem now. I had to remove the "-native" from the end of the
package name because this has meaning in the bitbake environment.

On Thu, Nov 14, 2019 at 5:49 PM Mark Hawthorne <markhawthorne172@gmail.com>
wrote:

> I created a new recipe called mapbox-gl-native and added it to
> IMAGE_INSTALL in the image recipe. The package builds succesfully, but now
> I am stuck on this error in the final image creation stage:
>
> ---------------------------------------
> DEBUG: Executing python function do_rootfs
> NOTE: Initializing intercept dir for
> /home/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/beaglebone_efis-linux-gnueabi/mylayer-image-tisdk/1.0-r0/rootfs
> DEBUG: Collected intercepts:
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/delay_to_first_boot
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/postinst_intercept
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_font_cache
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_gio_module_cache
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_gtk_immodules_cache
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_icon_cache
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_pixbuf_cache
>
> /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/update_udev_hwdb
>
> WARNING: Manifest
> /home/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/sstate-control/manifest-x86_64-mapbox-gl-native.package_write_ipk
> not found in x86_64 (variant '')?
> ERROR: No manifest generated from: mapbox-gl-native in
> /home/mark/Documents/tisdk/sources/meta-mylayer/recipes-navigation/mapbox-gl-native/
> mapbox-gl-native.bb
> DEBUG: Python function do_rootfs finished
> ERROR: Function failed: do_rootfs
> ---------------------------------------
>
> Bitbake is complaining about missing the mapbox-gl-native manfiest file
> for x86, but I never built the recipe for x86 so that file does not exist.
> The correct files does exist for armv7. I am not clear why it is trying to
> use the x86 instead of the armv7 version. Everything else being built into
> the image is using the correct armv7 manifest file.
>
> I can see the correct package output files under
> work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native_1.0-r0_
> armv7at2hf-neon.ipk
> work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-dbg_1.0-r0_
> armv7at2hf-neon.ipk
> work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-dev_1.0-r0_
> armv7at2hf-neon.ipk
> work/armv7at2hf-neon-linux-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-native-staticdev_1.0-r0_
> armv7at2hf-neon.ipk
>
> Here is the recipe for reference
> -------------------------------------------
> SUMMARY = "Mapbox Slippery Map"
> HOMEPAGE = ""
> DESCRIPTION = ""
> LICENSE = "MIT"
> LIC_FILES_CHKSUM =
> "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
>
> SRC_URI = "git://github.com/mapbox/mapbox-gl-native.git;branch=master"
>
> SRCREV = "4c1d03c257754ecc1555f3e31b3c6ccf45c4bf7b"
>
> DEPENDS = "virtual/libgles2 virtual/egl glfw icu curl libuv sqlite
> libjpeg-turbo"
>
> S = "${WORKDIR}/git"
>
> EXTRA_OECMAKE = "-DWITH_NODEJS=OFF -DWITH_EGL=ON -DWITH_ERROR=OFF"
>
> OECMAKE_TARGET_COMPILE = "mbgl-glfw"
>
> inherit cmake
>
> do_install() {
> install -D -m 0755 ${B}/libmbgl-core.a ${D}${libdir}/libmgl-core.a
> install -D -m 0755 ${B}/libmbgl-vendor-nunicode.a
> ${D}${libdir}/libmbgl-vendor-nunicode.a
> install -D -m 0755 ${B}/mbgl-glfw ${D}${bindir}/mbgl-glfw
> }
> ----------------------------------------.
>

--000000000000ef3be40597593942
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I see the problem now. I had to remove the &quot;-native&q=
uot; from the end of the package name because=C2=A0this has meaning in the =
bitbake environment.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Thu, Nov 14, 2019 at 5:49 PM Mark Hawthorne &lt;<a h=
ref=3D"mailto:markhawthorne172@gmail.com">markhawthorne172@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div di=
r=3D"ltr"><div>I created a new recipe=C2=A0called mapbox-gl-native and adde=
d it to IMAGE_INSTALL in the image recipe. The package builds succesfully, =
but now I am stuck on this error in the final image creation stage:</div><d=
iv><br></div><div>---------------------------------------</div>DEBUG: Execu=
ting python function do_rootfs<br>NOTE: Initializing intercept dir for /hom=
e/mark/Documents/tisdk/build/arago-tmp-external-arm-toolchain/work/beaglebo=
ne_efis-linux-gnueabi/mylayer-image-tisdk/1.0-r0/rootfs<br>DEBUG: Collected=
 intercepts:<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/scripts/p=
ostinst-intercepts/delay_to_first_boot<br>=C2=A0 /home/mark/Documents/tisdk=
/sources/oe-core/scripts/postinst-intercepts/postinst_intercept<br>=C2=A0 /=
home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-intercepts/updat=
e_font_cache<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/scripts/p=
ostinst-intercepts/update_gio_module_cache<br>=C2=A0 /home/mark/Documents/t=
isdk/sources/oe-core/scripts/postinst-intercepts/update_gtk_immodules_cache=
<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-core/scripts/postinst-inte=
rcepts/update_icon_cache<br>=C2=A0 /home/mark/Documents/tisdk/sources/oe-co=
re/scripts/postinst-intercepts/update_pixbuf_cache<br>=C2=A0 /home/mark/Doc=
uments/tisdk/sources/oe-core/scripts/postinst-intercepts/update_udev_hwdb<b=
r><br>WARNING: Manifest /home/mark/Documents/tisdk/build/arago-tmp-external=
-arm-toolchain/sstate-control/manifest-x86_64-mapbox-gl-native.package_writ=
e_ipk not found in x86_64 (variant &#39;&#39;)?<br>ERROR: No manifest gener=
ated from: mapbox-gl-native in /home/mark/Documents/tisdk/sources/meta-myla=
yer/recipes-navigation/mapbox-gl-native/<a href=3D"http://mapbox-gl-native.=
bb" target=3D"_blank">mapbox-gl-native.bb</a><br>DEBUG: Python function do_=
rootfs finished<br>ERROR: Function failed: do_rootfs<br><div>--------------=
-------------------------=C2=A0=C2=A0<br></div><div><br></div><div>Bitbake =
is complaining about missing the mapbox-gl-native manfiest file for x86, bu=
t I never built the recipe for x86 so that file does not exist. The correct=
 files does exist for armv7. I am not clear why it is trying to use the x86=
 instead of the armv7 version. Everything else being built into the image i=
s using the correct armv7 manifest file.</div><div><br></div><div>I can see=
 the correct package output files under</div><div>work/armv7at2hf-neon-linu=
x-gnueabi/mapbox-gl-native/1.0-r0/deploy-ipks/armv7at2hf-neon/mapbox-gl-nat=
ive_1.0-r0_

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
p://github.com/mapbox/mapbox-gl-native.git;branch=3Dmaster" target=3D"_blan=
k">github.com/mapbox/mapbox-gl-native.git;branch=3Dmaster</a>&quot;<br><br>=
SRCREV =3D &quot;4c1d03c257754ecc1555f3e31b3c6ccf45c4bf7b&quot;<br><br>DEPE=
NDS =3D &quot;virtual/libgles2 virtual/egl glfw icu curl libuv sqlite libjp=
eg-turbo&quot;<br><br>S =3D &quot;${WORKDIR}/git&quot;<br><br>EXTRA_OECMAKE=
 =3D &quot;-DWITH_NODEJS=3DOFF -DWITH_EGL=3DON -DWITH_ERROR=3DOFF&quot;<br>=
<br>OECMAKE_TARGET_COMPILE =3D &quot;mbgl-glfw&quot;<br><br>inherit cmake<b=
r><br>do_install() {<br>	install -D -m 0755 ${B}/libmbgl-core.a ${D}${libdi=
r}/libmgl-core.a<br>	install -D -m 0755 ${B}/libmbgl-vendor-nunicode.a ${D}=
${libdir}/libmbgl-vendor-nunicode.a<br>	install -D -m 0755 ${B}/mbgl-glfw $=
{D}${bindir}/mbgl-glfw<br><div>}</div><div>--------------------------------=
--------.<br></div></div>
</blockquote></div>

--000000000000ef3be40597593942--
