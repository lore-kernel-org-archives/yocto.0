Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BB34E00D03; Thu,  7 Sep 2017 06:27:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_05_10,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.178 listed in dnsbl.sorbs.net]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F8C5E00D19
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 06:27:30 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id a43so19473593wrc.0
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 06:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=9KtDYl/SvIwxXvnK6dltVXYIP11uLK49gx8laSt5RUw=;
	b=V4dYtzhRh1YWF4j07YNadCBRGYyH2awL0TFamS/3FC9krkwirfujlqIgMAHeVE2Znb
	JhuHPeao0WqqNJxP+8cf1c3B6FXImCvpBkuv/NgqeIpWp8dpiCPuTky6cCCIz9WRvlth
	MQbAS+xUWuPH97ZFO9rhkDnMZYu/fPJdMbx3VUguRg/nGllQc2EvBcHTce8E/6FmFmhW
	OcmIPhhq5upAhtV6GqgK2KH2KEENGd97t+PEyZTQKHQNuSOmfD7MHp07zRhPXWfpb01+
	S/pM9fhn+0UkhEwlqHHX+OuKat4YPSA3u7Hojj59DDqb3BVnqcPjWN+WFwooDLEd6As6
	C6Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=9KtDYl/SvIwxXvnK6dltVXYIP11uLK49gx8laSt5RUw=;
	b=olA6kjerwZupAcV1fz7TXRFPezxtYbmp50pk8kvcwfLyRv5yZba5VDF45pHxNA91NT
	tCltCgjv5Oz5egumR1GLrwr1zWl3DAknMbFKI+yOaJJc49JJiHL3GTjybBN8Mj+E+aQJ
	V5lY+/mjyDBsBLMMARhRbxkHRcjb9V52dQ6FGs8zO0Y7Tbc8eOv0ySs5Zoc0cKyOR5qw
	vND9KUb7G0uaW18WU+aLhxijqt7QTe+A5A7YU6FkVORH43rAylLN/I1b4vr9vLoIIaIL
	HsSTRR9/Glz/ayF9osoIsgWfWhjwJQWDK9VjCLIBmlieXmGgHXZyHeWcLQgB0ajHhVjC
	R+ng==
X-Gm-Message-State: AHPjjUhVHn9mTl9UDGC3pTjD3sHRWAVXSkdMzmriUre+Ca4s9cWZkHJj
	ngPJjo1gKtwgoLCHb4C2YxSKXnYa4UYUc1yLfw==
X-Google-Smtp-Source: ADKCNb7g3Tb+a7Rgx/Wc0mB8t75Ck1kDfzrdHLZA3QTscXcGIDqelOSXGvcvrsChAHLnpsTneG33vjQ20io4xqXm9Vk=
X-Received: by 10.223.144.229 with SMTP id i92mr2303390wri.283.1504790849619; 
	Thu, 07 Sep 2017 06:27:29 -0700 (PDT)
MIME-Version: 1.0
Sender: andrei@gherzan.ro
Received: by 10.28.178.206 with HTTP; Thu, 7 Sep 2017 06:26:48 -0700 (PDT)
X-Originating-IP: [109.150.130.236]
In-Reply-To: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
References: <1504790680-20783-1-git-send-email-andrei@gherzan.com>
From: Andrei Gherzan <andrei@gherzan.com>
Date: Thu, 7 Sep 2017 14:26:48 +0100
X-Google-Sender-Auth: 83Q1qe1_YoTu8LyjbKbEKg1Ywmg
Message-ID: <CAK18fxH_hxQq2EKTPZWheDn1qsWax7nVE8nHhgnjLSdDSsG3fA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5] rpi-gpio: Update to 0.6.3
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
X-List-Received-Date: Thu, 07 Sep 2017 13:27:41 -0000
Content-Type: multipart/alternative; boundary="94eb2c098dc60d9e190558996c40"

--94eb2c098dc60d9e190558996c40
Content-Type: text/plain; charset="UTF-8"

On Thu, Sep 7, 2017 at 2:24 PM, Andrei Gherzan <andrei@gherzan.com> wrote:

> As well integrate with meta-oe bbclass pypi.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.com>
> ---
>  recipes-devtools/python/rpi-gpio_0.6.2.bb | 21 ---------------------
>  recipes-devtools/python/rpi-gpio_0.6.3.bb | 14 ++++++++++++++
>  2 files changed, 14 insertions(+), 21 deletions(-)
>  delete mode 100644 recipes-devtools/python/rpi-gpio_0.6.2.bb
>  create mode 100644 recipes-devtools/python/rpi-gpio_0.6.3.bb
>
> diff --git a/recipes-devtools/python/rpi-gpio_0.6.2.bb
> b/recipes-devtools/python/rpi-gpio_0.6.2.bb
> deleted file mode 100644
> index 9c72168..0000000
> --- a/recipes-devtools/python/rpi-gpio_0.6.2.bb
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
> -HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
> -SECTION = "devel/python"
> -LICENSE = "MIT"
> -LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=9b95630a648966b142f1a0dcea001c
> b7"
> -
> -SRCNAME = "RPi.GPIO"
> -
> -SRC_URI = "\
> -          http://pypi.python.org/packages/source/R/RPi.GPIO/${
> SRCNAME}-${PV}.tar.gz \
> -          file://0001-Remove-nested-functions.patch \
> -          "
> -SRC_URI[md5sum] = "9db86fd5f3bae872de9dbb068ee0b096"
> -SRC_URI[sha256sum] = "82acff0ef6bbe3cdf6f4dbdd73d96a
> dd5294bb94baf7f51c1d901861af3c2392"
> -
> -S = "${WORKDIR}/${SRCNAME}-${PV}"
> -
> -inherit distutils
> -
> -COMPATIBLE_MACHINE = "^rpi$"
> -
> diff --git a/recipes-devtools/python/rpi-gpio_0.6.3.bb
> b/recipes-devtools/python/rpi-gpio_0.6.3.bb
> new file mode 100644
> index 0000000..d0ff00a
> --- /dev/null
> +++ b/recipes-devtools/python/rpi-gpio_0.6.3.bb
> @@ -0,0 +1,14 @@
> +DESCRIPTION = "A module to control Raspberry Pi GPIO channels"
> +HOMEPAGE = "http://code.google.com/p/raspberry-gpio-python/"
> +SECTION = "devel/python"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://LICENCE.txt;md5=9b95630a648966b142f1a0dcea001c
> b7"
> +
> +PYPI_PACKAGE = "RPi.GPIO"
> +inherit pypi distutils
> +
> +SRC_URI += "file://0001-Remove-nested-functions.patch"
> +SRC_URI[md5sum] = "e4abe1cfb5eacebe53078032256eb837"
> +SRC_URI[sha256sum] = "a5fc0eb5e401963b6c0a03650da6b4
> 2c4005f02d962b81241d96c98d0a578516"
> +
> +COMPATIBLE_MACHINE = "^rpi$"
> --
> 2.7.4
>

Please forgive the missing tag. I will not resend to avoid more emails.
I'll add it if a new version is needed.

Sorry once again,

--94eb2c098dc60d9e190558996c40
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Sep 7, 2017 at 2:24 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:andrei@gherzan.com" target=3D"_blank">andrei@gherzan.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">As well integrate wit=
h meta-oe bbclass pypi.<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.com">and=
rei@gherzan.com</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/python/<a href=3D"http://rpi-gpio_0.6.2.bb" rel=3D"n=
oreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.2.bb</a> | 21 --------------=
-------<br>
=C2=A0recipes-devtools/python/<a href=3D"http://rpi-gpio_0.6.3.bb" rel=3D"n=
oreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.3.bb</a> | 14 ++++++++++++++=
<br>
=C2=A02 files changed, 14 insertions(+), 21 deletions(-)<br>
=C2=A0delete mode 100644 recipes-devtools/python/<a href=3D"http://rpi-gpio=
_0.6.2.bb" rel=3D"noreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.2.bb</a><=
br>
=C2=A0create mode 100644 recipes-devtools/python/<a href=3D"http://rpi-gpio=
_0.6.3.bb" rel=3D"noreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.3.bb</a><=
br>
<br>
diff --git a/recipes-devtools/python/<a href=3D"http://rpi-gpio_0.6.2.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.2.bb</a> b/recipes-de=
vtools/python/<a href=3D"http://rpi-gpio_0.6.2.bb" rel=3D"noreferrer" targe=
t=3D"_blank">rpi-<wbr>gpio_0.6.2.bb</a><br>
deleted file mode 100644<br>
index 9c72168..0000000<br>
--- a/recipes-devtools/python/<a href=3D"http://rpi-gpio_0.6.2.bb" rel=3D"n=
oreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.2.bb</a><br>
+++ /dev/null<br>
@@ -1,21 +0,0 @@<br>
-DESCRIPTION =3D &quot;A module to control Raspberry Pi GPIO channels&quot;=
<br>
-HOMEPAGE =3D &quot;<a href=3D"http://code.google.com/p/raspberry-gpio-pyth=
on/" rel=3D"noreferrer" target=3D"_blank">http://code.google.com/p/<wbr>ras=
pberry-gpio-python/</a>&quot;<br>
-SECTION =3D &quot;devel/python&quot;<br>
-LICENSE =3D &quot;MIT&quot;<br>
-LIC_FILES_CHKSUM =3D &quot;file://LICENCE.txt;md5=3D<wbr>9b95630a648966b14=
2f1a0dcea001c<wbr>b7&quot;<br>
-<br>
-SRCNAME =3D &quot;RPi.GPIO&quot;<br>
-<br>
-SRC_URI =3D &quot;\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://pypi.python.org/packa=
ges/source/R/RPi.GPIO/${SRCNAME}-${PV}.tar.gz" rel=3D"noreferrer" target=3D=
"_blank">http://pypi.python.org/<wbr>packages/source/R/RPi.GPIO/${<wbr>SRCN=
AME}-${PV}.tar.gz</a> \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-Remove-nested-<wbr>function=
s.patch \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
-SRC_URI[md5sum] =3D &quot;<wbr>9db86fd5f3bae872de9dbb068ee0b0<wbr>96&quot;=
<br>
-SRC_URI[sha256sum] =3D &quot;<wbr>82acff0ef6bbe3cdf6f4dbdd73d96a<wbr>dd529=
4bb94baf7f51c1d901861af3c<wbr>2392&quot;<br>
-<br>
-S =3D &quot;${WORKDIR}/${SRCNAME}-${PV}&quot;<br>
-<br>
-inherit distutils<br>
-<br>
-COMPATIBLE_MACHINE =3D &quot;^rpi$&quot;<br>
-<br>
diff --git a/recipes-devtools/python/<a href=3D"http://rpi-gpio_0.6.3.bb" r=
el=3D"noreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.3.bb</a> b/recipes-de=
vtools/python/<a href=3D"http://rpi-gpio_0.6.3.bb" rel=3D"noreferrer" targe=
t=3D"_blank">rpi-<wbr>gpio_0.6.3.bb</a><br>
new file mode 100644<br>
index 0000000..d0ff00a<br>
--- /dev/null<br>
+++ b/recipes-devtools/python/<a href=3D"http://rpi-gpio_0.6.3.bb" rel=3D"n=
oreferrer" target=3D"_blank">rpi-<wbr>gpio_0.6.3.bb</a><br>
@@ -0,0 +1,14 @@<br>
+DESCRIPTION =3D &quot;A module to control Raspberry Pi GPIO channels&quot;=
<br>
+HOMEPAGE =3D &quot;<a href=3D"http://code.google.com/p/raspberry-gpio-pyth=
on/" rel=3D"noreferrer" target=3D"_blank">http://code.google.com/p/<wbr>ras=
pberry-gpio-python/</a>&quot;<br>
+SECTION =3D &quot;devel/python&quot;<br>
+LICENSE =3D &quot;MIT&quot;<br>
+LIC_FILES_CHKSUM =3D &quot;file://LICENCE.txt;md5=3D<wbr>9b95630a648966b14=
2f1a0dcea001c<wbr>b7&quot;<br>
+<br>
+PYPI_PACKAGE =3D &quot;RPi.GPIO&quot;<br>
+inherit pypi distutils<br>
+<br>
+SRC_URI +=3D &quot;file://0001-Remove-nested-<wbr>functions.patch&quot;<br=
>
+SRC_URI[md5sum] =3D &quot;<wbr>e4abe1cfb5eacebe53078032256eb8<wbr>37&quot;=
<br>
+SRC_URI[sha256sum] =3D &quot;<wbr>a5fc0eb5e401963b6c0a03650da6b4<wbr>2c400=
5f02d962b81241d96c98d0a57<wbr>8516&quot;<br>
+<br>
+COMPATIBLE_MACHINE =3D &quot;^rpi$&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.7.4<br></font></span></blockquote><div><br></div><div>Please forgive the =
missing tag. I will not resend to avoid more emails. I&#39;ll add it if a n=
ew version is needed.</div><div><br></div><div>Sorry once again,</div><div>=
=C2=A0</div></div><br></div></div>

--94eb2c098dc60d9e190558996c40--
