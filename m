Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD60FE0071D
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:24 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id m1so971255ves.36
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=qkkTHJg3FAGmibzTOoz61spNKKy7CnBCIDVh+kb+Whc=;
	b=F7cfQiF6mKU3E3pvbahLg2stoTf+h14JcXepJAm8jI0FADuEOMzmztNx1QfBNHHgXK
	X86A7qjd/ikmDT255eduqL1JcCcAsk/N9deeQcfD9MuzPjCn1C/3RC9oRCsJU2tkrBN1
	7szKhmAjCyFutzTtv9twz1kLkswlU5befEOIJYszwlF02GZSpfP9hBQ8VR0mAmTs84vV
	SrOV2oZwAysFIgluw+3it6LR2sUwQkjtmBZNMfOXbfNgVJRRnQtIZIOv5sYHbEkcTJD0
	xuPTntn6iAi+dEQIaeEbW6I5X5mwBWRZmSpxWPDmnKb1YZftlcL4VI+km2J0AmhtGKfo
	IhnQ==
X-Received: by 10.220.248.134 with SMTP id mg6mr4407360vcb.2.1363196663865;
	Wed, 13 Mar 2013 10:44:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:44:02 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-2-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<1360447871-10982-2-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:44:02 +0200
Message-ID: <CAK18fxGuvXS6eOt0w5u_L9SZpwwOtWdRRqh1kU8StvFf8kwCAA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQl328J8Jf3QbIiurYJucH1InpbZSO8+53GtFSFbSz6fDlyWCAiucqcXQ905zgA/5+SSj3Vm
Subject: Re: [meta-raspberrypi][PATCH 2/7] rpi-default-providers: Use userland as provider for egl and gles2
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
X-List-Received-Date: Wed, 13 Mar 2013 17:44:25 -0000
Content-Type: multipart/alternative; boundary=089e013c6e8ce8e70404d7d1f4ae

--089e013c6e8ce8e70404d7d1f4ae
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-default-providers.inc |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc
> b/conf/machine/include/rpi-default-providers.inc
> index 6abab60..86330e8 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -2,6 +2,6 @@
>
>  PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
> -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> +PREFERRED_PROVIDER_virtual/egl ?= "userland"
> +PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>  PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e013c6e8ce8e70404d7d1f4ae
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0conf/machine/include/rpi-default-providers.inc | =A0 =A04 ++--<br>
=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/=
include/rpi-default-providers.inc<br>
index 6abab60..86330e8 100644<br>
--- a/conf/machine/include/rpi-default-providers.inc<br>
+++ b/conf/machine/include/rpi-default-providers.inc<br>
@@ -2,6 +2,6 @@<br>
<br>
=A0PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-raspberrypi&quot;<br>
=A0PREFERRED_PROVIDER_virtual/xserver =3D &quot;xserver-xorg&quot;<br>
-PREFERRED_PROVIDER_virtual/egl ?=3D &quot;vc-graphics-hardfp&quot;<br>
-PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;vc-graphics-hardfp&quot;<br=
>
+PREFERRED_PROVIDER_virtual/egl ?=3D &quot;userland&quot;<br>
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;userland&quot;<br>
=A0PREFERRED_PROVIDER_linux-libc-headers ?=3D &quot;linux-libc-headers-rasp=
berrypi&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--089e013c6e8ce8e70404d7d1f4ae--
