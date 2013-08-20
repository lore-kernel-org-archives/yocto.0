Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6565E0140D
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:11:32 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id b13so625851wgh.19
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:11:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vOTi4HSF1h9bn+3GFo6Fm7rn9y7WyOBcSBKQoiPdHV0=;
	b=PCAOep8c37zOsL7JwoYfZOyqOoWiFLJarTXowN+7/GNXGzxsL85e0/fxpS89QTMN1d
	B6YI/kKoQFx93NKbLvYPVdImg0X7JTDMKfwGBdtAj/ksqEYaTNgFfdPccT4iS4JQn/WW
	DtVwp+dmVHQoLF23EI8Vx8DLUQ4+CBE5QdSm9doZNVKghexnqF7ZbTlLP9jdu/ZZj+hY
	qi/AZMOB3xIS5cDZgzlXk0v5Lx6qp9k7lynDQdpBCU36UNNTX0AutjSORFvBRCrYKMGP
	YrF0yujQ98SuCExLxZFxMlnbGmMyzKaUNQQqu6rKYwzQWRav97D5sb079i1is2UtonXe
	8MOQ==
X-Gm-Message-State: ALoCoQlmFCDfHySN1Dng0W379vUbZToNTVykMwC8fJLEicapVY0sQn6lJqBd8tKKZZHVFnDv6GnZ
X-Received: by 10.180.36.208 with SMTP id s16mr12957289wij.33.1377018691943;
	Tue, 20 Aug 2013 10:11:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Tue, 20 Aug 2013 10:11:11 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1376650116-11855-1-git-send-email-paul@paulbarker.me.uk>
References: <1376650116-11855-1-git-send-email-paul@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 20 Aug 2013 20:11:11 +0300
Message-ID: <CAK18fxE8JuUo3is2LbL42SEOsWfkDmr5CZFDuw9rOx_sgAvqaQ@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: Allow optional compression
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
X-List-Received-Date: Tue, 20 Aug 2013 17:11:34 -0000
Content-Type: multipart/alternative; boundary=e89a8f6466f5fb949704e4642588

--e89a8f6466f5fb949704e4642588
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 16, 2013 at 1:48 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Image files will typically contain lots of null blocks and should compress
> well.
> This will help with distribution of images over slow network links.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  classes/sdcard_image-rpi.bbclass | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> index a2fcd52..8d2a5f2 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -50,6 +50,11 @@ IMAGE_DEPENDS_rpi-sdimg = " \
>  # SD card image name
>  SDIMG = "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg"
>
> +# Compression method to apply to SDIMG after it has been created. May be
> "none",
> +# "gzip", "bzip2" or "xz". Setting this to something other than "none"
> will
> +# cause SDIMG to be renamed.
> +SDIMG_COMPRESSION ?= "none"
> +


One thing I don't understand here. Where is the SDIMG renamed if for
example I set by mistake SDIMG_COMPRESSION to something like
"this-is-a-mistake"? If I check your code this will be ignored as the case
won't match any keywords.

Would you mind adding the variable explanation to README too?

*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--e89a8f6466f5fb949704e4642588
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Aug 16, 2013 at 1:48 PM, Paul Barker <span dir=3D"=
ltr">&lt;<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@pa=
ulbarker.me.uk</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Image files will typically contain lots of null blocks and=
 should compress well.<br>


This will help with distribution of images over slow network links.<br>
<br>
Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pau=
l@paulbarker.me.uk</a>&gt;<br>
---<br>
=A0classes/sdcard_image-rpi.bbclass | 18 ++++++++++++++++++<br>
=A01 file changed, 18 insertions(+)<br>
<br>
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class<br>
index a2fcd52..8d2a5f2 100644<br>
--- a/classes/sdcard_image-rpi.bbclass<br>
+++ b/classes/sdcard_image-rpi.bbclass<br>
@@ -50,6 +50,11 @@ IMAGE_DEPENDS_rpi-sdimg =3D &quot; \<br>
=A0# SD card image name<br>
=A0SDIMG =3D &quot;${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.rpi-sdimg&quot;=
<br>
<br>
+# Compression method to apply to SDIMG after it has been created. May be &=
quot;none&quot;,<br>
+# &quot;gzip&quot;, &quot;bzip2&quot; or &quot;xz&quot;. Setting this to s=
omething other than &quot;none&quot; will<br>
+# cause SDIMG to be renamed.<br>
+SDIMG_COMPRESSION ?=3D &quot;none&quot;<br>
+</blockquote><div><br></div><div style>One=A0thing=A0I don&#39;t understan=
d here. Where is the SDIMG renamed if for example I set by mistake SDIMG_CO=
MPRESSION to something like &quot;this-is-a-mistake&quot;? If I check your =
code this will be ignored as the case won&#39;t match any keywords.</div>

<div style><br></div><div style>Would you mind adding the variable=A0explan=
ation=A0to README too?=A0</div><div><br></div></div><div dir=3D"ltr"><div s=
tyle=3D"text-align:center"></div><div style=3D"text-align:center"><div alig=
n=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"=
>

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--e89a8f6466f5fb949704e4642588--
