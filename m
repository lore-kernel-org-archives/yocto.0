Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 389A1E00736
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 15:00:20 -0800 (PST)
Received: by mail-vc0-f173.google.com with SMTP id fy7so3142577vcb.32
	for <yocto@yoctoproject.org>; Sat, 09 Feb 2013 15:00:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=P/8TTDgclOUFS4JAP3xvUHLh8ztmFX2jcTzgfOz/SnA=;
	b=X7BEhaViENnvghsAODElmgYPK/c2OkVDPFLaD4GRPKTbh/OUy7Ozn9tJfg+FSMG61X
	Z78+zx6OzgLwVGnemqHaJp1dXZlXQXLt17buSqnDE+9YLRJ3z4lN+lwHIIxEWi/rNywe
	s+pJx6zqqUV5ZEt7j0yW4sBxbXv3hZffGWwZI4iWJ6U+AO6enXkbKE9WJAIjuoJU/+LJ
	dDlKj8fOAyLN6myQRnRvcY9BtOAwZJhtJZNHpAhhgxh0QX8Xq59Gp+8dM8lb/TWuaTYX
	iSnrhVZFuTMx/Aau96nt2wXi0cARdRtF4JGArC3j/vNnzrzJtwnw6VLkdm0CCnHdYlfp
	JsLw==
X-Received: by 10.58.188.48 with SMTP id fx16mr12901266vec.22.1360450819090;
	Sat, 09 Feb 2013 15:00:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.229.195 with HTTP; Sat, 9 Feb 2013 14:59:59 -0800 (PST)
X-Originating-IP: [5.13.217.124]
In-Reply-To: <1359582698-24226-2-git-send-email-lists@philipp-wagner.com>
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<1359582698-24226-2-git-send-email-lists@philipp-wagner.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 10 Feb 2013 00:59:59 +0200
Message-ID: <CAK18fxFWNxYDkoJi1jzkeMsmNpN+3QDvWcxfVJqqPb=HKumChA@mail.gmail.com>
To: Philipp Wagner <lists@philipp-wagner.com>
X-Gm-Message-State: ALoCoQkHLnt8ySlcTyM9mOgsvXZ7epuwqOCmsvOJwi6Rh9Mhwj/jy5zI7ifJ4GEwSV4yP3eWK6Hm
Cc: Yocto Project <yocto@yoctoproject.org>,
	Philipp Wagner <mail@philipp-wagner.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] Choose correct ABI version of graphics binaries
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 09 Feb 2013 23:00:20 -0000
Content-Type: multipart/alternative; boundary=089e01229cb6ce67ff04d552a30a

--089e01229cb6ce67ff04d552a30a
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 30, 2013 at 11:51 PM, Philipp Wagner
<lists@philipp-wagner.com>wrote:

> From: Philipp Wagner <mail@philipp-wagner.com>
>
> Depending on the used calling convention use the hardfp or
> the softfp binary graphics libraries.
>
> Signed-off-by: Philipp Wagner <mail@philipp-wagner.com>
> ---
>  conf/machine/include/rpi-default-providers.inc |   10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc
> b/conf/machine/include/rpi-default-providers.inc
> index ce963b3..83292df 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -2,7 +2,11 @@
>
>  PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
> -PREFERRED_PROVIDER_virtual/egl ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "vc-graphics-hardfp"
> -PREFERRED_PROVIDER_virtual/libgl ?= "vc-graphics-hardfp"
>  PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-raspberrypi"
> +
> +# The graphics libraries are closed source and provided as binaries with
> either
> +# hardfp and softfp calling conventions. We need to choose the one that
> fits
> +# in with the rest of the system.
> +PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains("TUNE_FEATURES",
> "callconvention-hard", "vc-graphics-hardfp", "vc-graphics", d)}"
> +PREFERRED_PROVIDER_virtual/libgles2 ?=
> "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard",
> "vc-graphics-hardfp", "vc-graphics", d)}"
> +PREFERRED_PROVIDER_virtual/libgl ?=
> "${@bb.utils.contains("TUNE_FEATURES", "callconvention-hard",
> "vc-graphics-hardfp", "vc-graphics", d)}"
>

I like this change but I think the best way would be to switch to userland.
So we can compile our own libraries. I sent some patches so please give
them a try.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--089e01229cb6ce67ff04d552a30a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, Jan 30, 2013 at 11:51 PM, Philipp Wagner <span dir=
=3D"ltr">&lt;<a href=3D"mailto:lists@philipp-wagner.com" target=3D"_blank">=
lists@philipp-wagner.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra=
"><div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">From: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wa=
gner.com">mail@philipp-wagner.com</a>&gt;<br>


<br>
Depending on the used calling convention use the hardfp or<br>
the softfp binary graphics libraries.<br>
<br>
Signed-off-by: Philipp Wagner &lt;<a href=3D"mailto:mail@philipp-wagner.com=
">mail@philipp-wagner.com</a>&gt;<br>
---<br>
=A0conf/machine/include/rpi-default-providers.inc | =A0 10 +++++++---<br>
=A01 file changed, 7 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/=
include/rpi-default-providers.inc<br>
index ce963b3..83292df 100644<br>
--- a/conf/machine/include/rpi-default-providers.inc<br>
+++ b/conf/machine/include/rpi-default-providers.inc<br>
@@ -2,7 +2,11 @@<br>
<br>
=A0PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-raspberrypi&quot;<br>
=A0PREFERRED_PROVIDER_virtual/xserver =3D &quot;xserver-xorg&quot;<br>
-PREFERRED_PROVIDER_virtual/egl ?=3D &quot;vc-graphics-hardfp&quot;<br>
-PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;vc-graphics-hardfp&quot;<br=
>
-PREFERRED_PROVIDER_virtual/libgl ?=3D &quot;vc-graphics-hardfp&quot;<br>
=A0PREFERRED_PROVIDER_linux-libc-headers ?=3D &quot;linux-libc-headers-rasp=
berrypi&quot;<br>
+<br>
+# The graphics libraries are closed source and provided as binaries with e=
ither<br>
+# hardfp and softfp calling conventions. We need to choose the one that fi=
ts<br>
+# in with the rest of the system.<br>
+PREFERRED_PROVIDER_virtual/egl ?=3D &quot;${@bb.utils.contains(&quot;TUNE_=
FEATURES&quot;, &quot;callconvention-hard&quot;, &quot;vc-graphics-hardfp&q=
uot;, &quot;vc-graphics&quot;, d)}&quot;<br>
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;${@bb.utils.contains(&quot;=
TUNE_FEATURES&quot;, &quot;callconvention-hard&quot;, &quot;vc-graphics-har=
dfp&quot;, &quot;vc-graphics&quot;, d)}&quot;<br>
+PREFERRED_PROVIDER_virtual/libgl ?=3D &quot;${@bb.utils.contains(&quot;TUN=
E_FEATURES&quot;, &quot;callconvention-hard&quot;, &quot;vc-graphics-hardfp=
&quot;, &quot;vc-graphics&quot;, d)}&quot;<br></blockquote><div><br></div>

<div>I like this change but I think the best way would be to switch to user=
land. So we can compile our own libraries. I sent some patches so please gi=
ve them a try.=A0</div></div><div><br></div>-- <br><div dir=3D"ltr"><div st=
yle=3D"text-align:center">

</div><div style=3D"text-align:center"><div align=3D"left" style=3D"font-fa=
mily:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,5=
1,51);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</=
b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--089e01229cb6ce67ff04d552a30a--
