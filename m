Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91776E01517
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 13:14:18 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id m1so8007686ves.14
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 13:14:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=rRkFr5HSprJXDifZcQMVvfmPF77wQolyd0T2DjQSBFA=;
	b=DlIwjisgkf7De2Lr9z0v01Gl5XCQLNRTcVR1hs/J6lkaLvtfqceCmnn2vqwawusgJd
	v04zcv7/HEPSi5nJxZFwfnVf5+01y3CY3wnaFf81VTEU/6rJNdx/f51by0yVB0pAlMKZ
	2QrAZkO4HwtZwRnQKS9AAb+yPiKQgEEtzDmZZtc19neZxGPozbRN8d3qgSA3LG9BH8oe
	7ftbx8krAazOK9F4EXmxeMFpkBJTu0NXLxbgau/Hf8hOzLzd5hR7zBpIZ1kj/twLQDem
	krNvDt1n9x+xKQ+6v8SKp9OHLZqYI/hw/GvHvVxNKI2bzX/zJy1e2v/yAC2y1afUHnlX
	CoeQ==
X-Received: by 10.52.29.106 with SMTP id j10mr8265968vdh.77.1372018458466;
	Sun, 23 Jun 2013 13:14:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.24.129 with HTTP; Sun, 23 Jun 2013 13:13:57 -0700 (PDT)
X-Originating-IP: [5.14.153.85]
In-Reply-To: <1368004005-13185-1-git-send-email-paul@paulbarker.me.uk>
References: <1368004005-13185-1-git-send-email-paul@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 23 Jun 2013 23:13:57 +0300
Message-ID: <CAK18fxHmFNiuQ3_E1-Y-Odwd6T+XEa3cE3UjE=P_w_Yj1edY-Q@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQlEzgLUb58kBo8/KTSfuGlKIkshacRh847VemP9RCzjOO0z5o6LsZrgKSrsrlW9Z2vUxKTf
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH v2] rpi-gpio: renamed from RPi-GPIO
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
X-List-Received-Date: Sun, 23 Jun 2013 20:14:20 -0000
Content-Type: multipart/alternative; boundary=20cf3079b740d7b0a604dfd7f03a

--20cf3079b740d7b0a604dfd7f03a
Content-Type: text/plain; charset=ISO-8859-1

On Wed, May 8, 2013 at 12:06 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Package names shouldn't contain capital letters.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  .../python/{RPi-GPIO => rpi-gpio}/don-t-install-setuptools.patch
>  | 0
>  recipes-devtools/python/{RPi-GPIO_0.2.0.bb => rpi-gpio_0.2.0.bb}
>  | 0
>  2 files changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-devtools/python/{RPi-GPIO =>
> rpi-gpio}/don-t-install-setuptools.patch (100%)
>  rename recipes-devtools/python/{RPi-GPIO_0.2.0.bb => rpi-gpio_0.2.0.bb}
> (100%)
>
> diff --git
> a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> similarity index 100%
> rename from recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch
> rename to recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch
> diff --git a/recipes-devtools/python/RPi-GPIO_0.2.0.bbb/recipes-devtools/python/
> rpi-gpio_0.2.0.bb
> similarity index 100%
> rename from recipes-devtools/python/RPi-GPIO_0.2.0.bb
> rename to recipes-devtools/python/rpi-gpio_0.2.0.bb
> --
> 1.8.2.2
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


Merged. Thanks.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf3079b740d7b0a604dfd7f03a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, May 8, 2013 at 12:06 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Package names shouldn&#39;t contain capital =
letters.<br>
<br>
Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pau=
l@paulbarker.me.uk</a>&gt;<br>
---<br>
=A0.../python/{RPi-GPIO =3D&gt; rpi-gpio}/don-t-install-setuptools.patch =
=A0 =A0 =A0 =A0 =A0| 0<br>
=A0recipes-devtools/python/{<a href=3D"http://RPi-GPIO_0.2.0.bb" target=3D"=
_blank">RPi-GPIO_0.2.0.bb</a> =3D&gt; <a href=3D"http://rpi-gpio_0.2.0.bb" =
target=3D"_blank">rpi-gpio_0.2.0.bb</a>} =A0 =A0 =A0 =A0 =A0| 0<br>
=A02 files changed, 0 insertions(+), 0 deletions(-)<br>
=A0rename recipes-devtools/python/{RPi-GPIO =3D&gt; rpi-gpio}/don-t-install=
-setuptools.patch (100%)<br>
=A0rename recipes-devtools/python/{<a href=3D"http://RPi-GPIO_0.2.0.bb" tar=
get=3D"_blank">RPi-GPIO_0.2.0.bb</a> =3D&gt; <a href=3D"http://rpi-gpio_0.2=
.0.bb" target=3D"_blank">rpi-gpio_0.2.0.bb</a>} (100%)<br>
<br>
diff --git a/recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patc=
h b/recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch<br>
similarity index 100%<br>
rename from recipes-devtools/python/RPi-GPIO/don-t-install-setuptools.patch=
<br>
rename to recipes-devtools/python/rpi-gpio/don-t-install-setuptools.patch<b=
r>
diff --git a/recipes-devtools/python/<a href=3D"http://RPi-GPIO_0.2.0.bb" t=
arget=3D"_blank">RPi-GPIO_0.2.0.bb</a> b/recipes-devtools/python/<a href=3D=
"http://rpi-gpio_0.2.0.bb" target=3D"_blank">rpi-gpio_0.2.0.bb</a><br>
similarity index 100%<br>
rename from recipes-devtools/python/<a href=3D"http://RPi-GPIO_0.2.0.bb" ta=
rget=3D"_blank">RPi-GPIO_0.2.0.bb</a><br>
rename to recipes-devtools/python/<a href=3D"http://rpi-gpio_0.2.0.bb" targ=
et=3D"_blank">rpi-gpio_0.2.0.bb</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.2.2<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br>Merged. Thanks.<br clear=3D"all"><=
div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></di=
v><div style=3D"text-align:center"><div align=3D"left" style=3D"font-family=
:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--20cf3079b740d7b0a604dfd7f03a--
