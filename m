Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE8ECE015DF
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 02:09:06 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha12so750294vcb.35
	for <yocto@yoctoproject.org>; Mon, 10 Jun 2013 02:09:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=5Be8Lsw5LXg+GlHQUyderTIEZFdJqMBvlnVVXr7CyA8=;
	b=DNpkn20VrDe99x849IwxV/6BqGTUtGEnqrYg8sJ/0zM86Izs0O8YqttWFq6ytMEla0
	FPsfSM/yVMW0ehAulVscx1pAYepI6SqEFbumo1/5jUftZkdd+4WCC4y4+f4eprkxp2uf
	7PL6/W0GvEmtD0zd3DivQERtBUiXdc+lM82DGqm/wTIJurXC6KZvcu5i+8yzW5WJnMBf
	uzfBH99MahWIMwNOoi7P+3O2IFnbFr3f6Dir+oASCxAEe/1OU0WeKe0EJZVvdEoIT7rV
	9jpRUmN3TmO0IeLnzyM6hreP94A81OdJepuqiE9hdmQv3tQRwHH9mIQYK3B4SNmyKTAu
	m0ww==
X-Received: by 10.52.70.142 with SMTP id m14mr4334978vdu.127.1370855346321;
	Mon, 10 Jun 2013 02:09:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.24.129 with HTTP; Mon, 10 Jun 2013 02:08:46 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1369211981-22033-1-git-send-email-paul@paulbarker.me.uk>
References: <1369211981-22033-1-git-send-email-paul@paulbarker.me.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 10 Jun 2013 12:08:46 +0300
Message-ID: <CAK18fxFNWGSHuRPNd5Vvu=yh6Lnn+iwXNyybdoYckLqzpWSL2Q@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQmzVh1B+SebCqiQabNkyUNqpoMIAjRZgs57oh/VTglTs+lvcH2rTIV5MPgNjCB9ZwaBFX4G
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] psplash: only set image for MACHINE=raspberrypi
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
X-List-Received-Date: Mon, 10 Jun 2013 09:09:07 -0000
Content-Type: multipart/alternative; boundary=20cf307f3a78f4cc9304dec921b5

--20cf307f3a78f4cc9304dec921b5
Content-Type: text/plain; charset=ISO-8859-1

Merged. Thanks for you contribution and sorry for being late.


On Wed, May 22, 2013 at 11:39 AM, Paul Barker <paul@paulbarker.me.uk> wrote:

> Instead of overriding the default psplash image, the raspberrypi image is
> added
> as an additional image. It is then set as the default in the raspberrypi
> machine
> config file so that other targets do not pick up our splash image.
>
> Tested on raspberrpi and qemuarm: on raspberrypi I see to Raspberry Pi
> logo, on
> qemuarm I see the Yocto Project logo.
>
> Signed-off-by: Paul Barker <paul@paulbarker.me.uk>
> ---
>  conf/machine/raspberrypi.conf             | 3 +++
>  recipes-core/psplash/psplash_git.bbappend | 2 +-
>  2 files changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf
> index 6e95291..e25b59a 100644
> --- a/conf/machine/raspberrypi.conf
> +++ b/conf/machine/raspberrypi.conf
> @@ -32,3 +32,6 @@ MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
>  MACHINE_EXTRA_RRECOMMENDS += " \
>         kernel-modules \
>  "
> +
> +# Set raspberrypi splash image
> +SPLASH = "psplash-raspberrypi"
> diff --git a/recipes-core/psplash/psplash_git.bbappend
> b/recipes-core/psplash/psplash_git.bbappend
> index eea8dfb..65dc30f 100644
> --- a/recipes-core/psplash/psplash_git.bbappend
> +++ b/recipes-core/psplash/psplash_git.bbappend
> @@ -1,2 +1,2 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> -SPLASH_IMAGES = "file://psplash-raspberrypi-img.h;outsuffix=default"
> +SPLASH_IMAGES += "file://psplash-raspberrypi-img.h;outsuffix=raspberrypi"
> --
> 1.8.2.2
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--20cf307f3a78f4cc9304dec921b5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged. Thanks for you contribution and sorry for being la=
te.=A0<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Wed, May 22, 2013 at 11:39 AM, Paul Barker <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.me.u=
k</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Instead of overriding the default psplash im=
age, the raspberrypi image is added<br>
as an additional image. It is then set as the default in the raspberrypi ma=
chine<br>
config file so that other targets do not pick up our splash image.<br>
<br>
Tested on raspberrpi and qemuarm: on raspberrypi I see to Raspberry Pi logo=
, on<br>
qemuarm I see the Yocto Project logo.<br>
<br>
Signed-off-by: Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">pau=
l@paulbarker.me.uk</a>&gt;<br>
---<br>
=A0conf/machine/raspberrypi.conf =A0 =A0 =A0 =A0 =A0 =A0 | 3 +++<br>
=A0recipes-core/psplash/psplash_git.bbappend | 2 +-<br>
=A02 files changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/raspberrypi.conf b/conf/machine/raspberrypi.conf<=
br>
index 6e95291..e25b59a 100644<br>
--- a/conf/machine/raspberrypi.conf<br>
+++ b/conf/machine/raspberrypi.conf<br>
@@ -32,3 +32,6 @@ MACHINE_FEATURES_BACKFILL_CONSIDERED =3D &quot;rtc&quot;<=
br>
=A0MACHINE_EXTRA_RRECOMMENDS +=3D &quot; \<br>
=A0 =A0 =A0 =A0 kernel-modules \<br>
=A0&quot;<br>
+<br>
+# Set raspberrypi splash image<br>
+SPLASH =3D &quot;psplash-raspberrypi&quot;<br>
diff --git a/recipes-core/psplash/psplash_git.bbappend b/recipes-core/pspla=
sh/psplash_git.bbappend<br>
index eea8dfb..65dc30f 100644<br>
--- a/recipes-core/psplash/psplash_git.bbappend<br>
+++ b/recipes-core/psplash/psplash_git.bbappend<br>
@@ -1,2 +1,2 @@<br>
=A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;<br>
-SPLASH_IMAGES =3D &quot;file://psplash-raspberrypi-img.h;outsuffix=3Ddefau=
lt&quot;<br>
+SPLASH_IMAGES +=3D &quot;file://psplash-raspberrypi-img.h;outsuffix=3Drasp=
berrypi&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.2.2<br>
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

--20cf307f3a78f4cc9304dec921b5--
