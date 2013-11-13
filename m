Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D59E017B4
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:55:44 -0800 (PST)
Received: by mail-wi0-f174.google.com with SMTP id hi5so203895wib.7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:55:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Y8L7w/yH0ePtOMVXhtKeeFKwxv/+KHcJxDwtSy+NJcs=;
	b=T4YRbPn6ksN0IwGI3NAC2GZ2Wz3U72/pyLTzqyPJR2kzckJX09D55EnEizp73zyTpl
	v622VWm5ou0CZQ3BOh7Orhn4Zi27Qww/U71TTGc6g9MLoaypLg9GMVkehrdteX3Rh6in
	F27jca4dJIRpzS1uZnaLCkAaiTKFOi+XCkiKYQYg7FYLJAVSh8xMdWLNyyuRsUJH8VaL
	FQIUU6AAv3C3VezIiKa9eVrYNIHKyuFgNI15WTT62VyUlnr2RS1sqOaLjJNbj+PzGdMi
	2kXN+f6aorf3631YxJxc4BDmMIduWQXFI/h2g/LU8Ru7uu7gOt3DLwfaIjirij1LwuFB
	Rx9g==
X-Gm-Message-State: ALoCoQmK5CN2IWipPaodL3fOP6kDHiiQkgsMX+3zvw95EFW7aoBfEx8fehVtuLIRlVVVP856dxy7
X-Received: by 10.180.149.234 with SMTP id ud10mr21144291wib.25.1384358143396; 
	Wed, 13 Nov 2013 07:55:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 07:55:23 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384357022-32125-1-git-send-email-alexnick87@gmail.com>
References: <1384357022-32125-1-git-send-email-alexnick87@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 17:55:23 +0200
Message-ID: <CAK18fxEusgiE0u1MyyPyrf489DGw5joEBM=j=DORLGWPT_rtBA@mail.gmail.com>
To: Alexandru Niculita <alexnick87@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] bcm2835: Update to version 1.32
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
X-List-Received-Date: Wed, 13 Nov 2013 15:55:45 -0000
Content-Type: multipart/alternative; boundary=001a11c3842461342904eb10ffcb

--001a11c3842461342904eb10ffcb
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 5:37 PM, Alexandru Niculita <alexnick87@gmail.com>wrote:

> Change-Id: I68721f30c9551b392d2851a96d9819524a088faf
> Signed-off-by: Alexandru Niculita <alexnick87@gmail.com>
> ---
>  recipes-bcm/bcm2835/bcm2835_1.32.bb |   42
> ++++++++++++++++++++++++++++++++++
>  recipes-bcm/bcm2835/bcm2835_1.9.bb  |   43
> -----------------------------------
>  2 files changed, 42 insertions(+), 43 deletions(-)
>  create mode 100644 recipes-bcm/bcm2835/bcm2835_1.32.bb
>  delete mode 100644 recipes-bcm/bcm2835/bcm2835_1.9.bb
>
> diff --git a/recipes-bcm/bcm2835/bcm2835_1.32.bb b/recipes-bcm/bcm2835/
> bcm2835_1.32.bb
> new file mode 100644
> index 0000000..2dc5b22
> --- /dev/null
> +++ b/recipes-bcm/bcm2835/bcm2835_1.32.bb
> @@ -0,0 +1,42 @@
> +DESCRIPTION = "Package that provides access to GPIO and other IO\
> +functions on the Broadcom BCM 2835 chip, allowing access to the\
> +GPIO pins on the 26 pin IDE plug on the RPi board"
> +SECTION = "base"
> +HOMEPAGE = "http://www.open.com.au/mikem/bcm2835"
> +AUTHOR = "Mike McCauley (mikem@open.com.au)"
> +
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> +
> +
> +COMPATIBLE_MACHINE = "raspberrypi"
> +
> +SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-${PV}.tar.gz"
> +
> +SRC_URI[md5sum] = "085239569554de5ee6649fe8bb123379"
> +SRC_URI[sha256sum] =
> "97e8aece4ff45b1779212473aa3b1d3f43cc9a8427afa3be718f690949e0ec20"
> +
> +
> +PACKAGES += "${PN}-tests"
> +
> +FILES_${PN} = ""
> +FILES_${PN}-tests = "${libdir}/${BPN}"
> +FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
> +
> +inherit autotools
> +
> +do_compile_append() {
> +    #Now compiling the examples provided by the package
> +    for file in examples/*
> +    do
> +        ${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstatic
> -L${S}/src -lbcm2835 -I${S}/src
> +    done
> +}
> +
> +do_install_append() {
> +    install -d ${D}/${libdir}/${BPN}
> +    for file in examples/*
> +    do
> +        install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}
> +    done
> +}
> diff --git a/recipes-bcm/bcm2835/bcm2835_1.9.bb b/recipes-bcm/bcm2835/
> bcm2835_1.9.bb
> deleted file mode 100644
> index d6858f4..0000000
> --- a/recipes-bcm/bcm2835/bcm2835_1.9.bb
> +++ /dev/null
> @@ -1,43 +0,0 @@
> -DESCRIPTION = "Package that provides access to GPIO and other IO\
> -functions on the Broadcom BCM 2835 chip, allowing access to the\
> -GPIO pins on the 26 pin IDE plug on the RPi board"
> -SECTION = "base"
> -HOMEPAGE = "http://www.open.com.au/mikem/bcm2835"
> -AUTHOR = "Mike McCauley (mikem@open.com.au)"
> -
> -LICENSE = "GPLv2"
> -LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> -
> -PR = "r0"
> -
> -COMPATIBLE_MACHINE = "raspberrypi"
> -
> -SRC_URI = "http://www.open.com.au/mikem/bcm2835/bcm2835-1.9.tar.gz"
> -
> -SRC_URI[md5sum] = "c102938afe9f0cfa930a0255c422f792"
> -SRC_URI[sha256sum] =
> "0dc6ee5a261e76b103a04534c1b8ebc20dce8921dec2452785100812f978c883"
> -
> -
> -PACKAGES += "${PN}-tests"
> -
> -FILES_${PN} = ""
> -FILES_${PN}-tests = "${libdir}/${BPN}"
> -FILES_${PN}-dbg += "${libdir}/${BPN}/.debug"
> -
> -inherit autotools
> -
> -do_compile_append() {
> -    #Now compiling the examples provided by the package
> -    for file in examples/*
> -    do
> -        ${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstatic
> -L${S}/src -lbcm2835 -I${S}/src
> -    done
> -}
> -
> -do_install_append() {
> -    install -d ${D}/${libdir}/${BPN}
> -    for file in examples/*
> -    do
> -        install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}
> -    done
> -}
>

Merged. Thank you Alex.

ag

--001a11c3842461342904eb10ffcb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 5:37 PM, Alexandru Niculita <span dir=3D"lt=
r">&lt;<a href=3D"mailto:alexnick87@gmail.com" target=3D"_blank">alexnick87=
@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Change-Id: I68721f30c9551b392d2851a96d981952=
4a088faf<br>
Signed-off-by: Alexandru Niculita &lt;<a href=3D"mailto:alexnick87@gmail.co=
m">alexnick87@gmail.com</a>&gt;<br>
---<br>
=A0recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.32.bb" target=3D"_blank"=
>bcm2835_1.32.bb</a> | =A0 42 ++++++++++++++++++++++++++++++++++<br>
=A0recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.9.bb" target=3D"_blank">=
bcm2835_1.9.bb</a> =A0| =A0 43 -----------------------------------<br>
=A02 files changed, 42 insertions(+), 43 deletions(-)<br>
=A0create mode 100644 recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.32.bb=
" target=3D"_blank">bcm2835_1.32.bb</a><br>
=A0delete mode 100644 recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.9.bb"=
 target=3D"_blank">bcm2835_1.9.bb</a><br>
<br>
diff --git a/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.32.bb" target=
=3D"_blank">bcm2835_1.32.bb</a> b/recipes-bcm/bcm2835/<a href=3D"http://bcm=
2835_1.32.bb" target=3D"_blank">bcm2835_1.32.bb</a><br>
new file mode 100644<br>
index 0000000..2dc5b22<br>
--- /dev/null<br>
+++ b/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.32.bb" target=3D"_bla=
nk">bcm2835_1.32.bb</a><br>
@@ -0,0 +1,42 @@<br>
+DESCRIPTION =3D &quot;Package that provides access to GPIO and other IO\<b=
r>
+functions on the Broadcom BCM 2835 chip, allowing access to the\<br>
+GPIO pins on the 26 pin IDE plug on the RPi board&quot;<br>
+SECTION =3D &quot;base&quot;<br>
+HOMEPAGE =3D &quot;<a href=3D"http://www.open.com.au/mikem/bcm2835" target=
=3D"_blank">http://www.open.com.au/mikem/bcm2835</a>&quot;<br>
+AUTHOR =3D &quot;Mike McCauley (<a href=3D"mailto:mikem@open.com.au">mikem=
@open.com.au</a>)&quot;<br>
+<br>
+LICENSE =3D &quot;GPLv2&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf=
4a4263&quot;<br>
+<br>
+<br>
+COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
+<br>
+SRC_URI =3D &quot;<a href=3D"http://www.open.com.au/mikem/bcm2835/bcm2835-=
${PV}.tar.gz" target=3D"_blank">http://www.open.com.au/mikem/bcm2835/bcm283=
5-${PV}.tar.gz</a>&quot;<br>
+<br>
+SRC_URI[md5sum] =3D &quot;085239569554de5ee6649fe8bb123379&quot;<br>
+SRC_URI[sha256sum] =3D &quot;97e8aece4ff45b1779212473aa3b1d3f43cc9a8427afa=
3be718f690949e0ec20&quot;<br>
+<br>
+<br>
+PACKAGES +=3D &quot;${PN}-tests&quot;<br>
+<br>
+FILES_${PN} =3D &quot;&quot;<br>
+FILES_${PN}-tests =3D &quot;${libdir}/${BPN}&quot;<br>
+FILES_${PN}-dbg +=3D &quot;${libdir}/${BPN}/.debug&quot;<br>
+<br>
+inherit autotools<br>
+<br>
+do_compile_append() {<br>
+ =A0 =A0#Now compiling the examples provided by the package<br>
+ =A0 =A0for file in examples/*<br>
+ =A0 =A0do<br>
+ =A0 =A0 =A0 =A0${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstati=
c -L${S}/src -lbcm2835 -I${S}/src<br>
+ =A0 =A0done<br>
+}<br>
+<br>
+do_install_append() {<br>
+ =A0 =A0install -d ${D}/${libdir}/${BPN}<br>
+ =A0 =A0for file in examples/*<br>
+ =A0 =A0do<br>
+ =A0 =A0 =A0 =A0install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}<=
br>
+ =A0 =A0done<br>
+}<br>
diff --git a/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.9.bb" target=
=3D"_blank">bcm2835_1.9.bb</a> b/recipes-bcm/bcm2835/<a href=3D"http://bcm2=
835_1.9.bb" target=3D"_blank">bcm2835_1.9.bb</a><br>
deleted file mode 100644<br>
index d6858f4..0000000<br>
--- a/recipes-bcm/bcm2835/<a href=3D"http://bcm2835_1.9.bb" target=3D"_blan=
k">bcm2835_1.9.bb</a><br>
+++ /dev/null<br>
@@ -1,43 +0,0 @@<br>
-DESCRIPTION =3D &quot;Package that provides access to GPIO and other IO\<b=
r>
-functions on the Broadcom BCM 2835 chip, allowing access to the\<br>
-GPIO pins on the 26 pin IDE plug on the RPi board&quot;<br>
-SECTION =3D &quot;base&quot;<br>
-HOMEPAGE =3D &quot;<a href=3D"http://www.open.com.au/mikem/bcm2835" target=
=3D"_blank">http://www.open.com.au/mikem/bcm2835</a>&quot;<br>
-AUTHOR =3D &quot;Mike McCauley (<a href=3D"mailto:mikem@open.com.au">mikem=
@open.com.au</a>)&quot;<br>
-<br>
-LICENSE =3D &quot;GPLv2&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db234ee4d69f5fce4486a80fdaf=
4a4263&quot;<br>
-<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-COMPATIBLE_MACHINE =3D &quot;raspberrypi&quot;<br>
-<br>
-SRC_URI =3D &quot;<a href=3D"http://www.open.com.au/mikem/bcm2835/bcm2835-=
1.9.tar.gz" target=3D"_blank">http://www.open.com.au/mikem/bcm2835/bcm2835-=
1.9.tar.gz</a>&quot;<br>
-<br>
-SRC_URI[md5sum] =3D &quot;c102938afe9f0cfa930a0255c422f792&quot;<br>
-SRC_URI[sha256sum] =3D &quot;0dc6ee5a261e76b103a04534c1b8ebc20dce8921dec24=
52785100812f978c883&quot;<br>
-<br>
-<br>
-PACKAGES +=3D &quot;${PN}-tests&quot;<br>
-<br>
-FILES_${PN} =3D &quot;&quot;<br>
-FILES_${PN}-tests =3D &quot;${libdir}/${BPN}&quot;<br>
-FILES_${PN}-dbg +=3D &quot;${libdir}/${BPN}/.debug&quot;<br>
-<br>
-inherit autotools<br>
-<br>
-do_compile_append() {<br>
- =A0 =A0#Now compiling the examples provided by the package<br>
- =A0 =A0for file in examples/*<br>
- =A0 =A0do<br>
- =A0 =A0 =A0 =A0${CC} ${file}/${file##*/}.c -o ${file}/${file##*/} -Bstati=
c -L${S}/src -lbcm2835 -I${S}/src<br>
- =A0 =A0done<br>
-}<br>
-<br>
-do_install_append() {<br>
- =A0 =A0install -d ${D}/${libdir}/${BPN}<br>
- =A0 =A0for file in examples/*<br>
- =A0 =A0do<br>
- =A0 =A0 =A0 =A0install -m 0755 ${file}/${file##*/} ${D}/${libdir}/${BPN}<=
br>
- =A0 =A0done<br>
-}<br></blockquote><div><br></div><div>Merged. Thank you Alex.</div><div><b=
r></div><div>ag</div></div>
</div></div>

--001a11c3842461342904eb10ffcb--
