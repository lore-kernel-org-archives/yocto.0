Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CDC0E01515
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 13:13:22 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gf11so216389vcb.39
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 13:13:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=H0gRhkJOahxTJhI+ymCDp3VlOKpVqk2Z4wjwCysobiQ=;
	b=ZTWX5GOcW7KGOHoYx6mQKflTyJSeHekH8K/5d8b2U1E4l7cZbWHLbEktxbD2NP3HJz
	kz4Q2jP5djUbjjZL0XzAUa/ZHJh9GMKguV44YI0qm2VMQjUdU5UAvVh+EB3F01yoJ2PE
	I3nI1hcjhCKcX5+UjBjHLuf0T8gYPZd+pT35alAKplm5NTjiil1NZwfO9M0h3ukFGMAH
	5rUOOEoKsToOmhZJpAslppBW5esNiH1Rj/Kq0syuHfHnopxTZDR+txX7f8moI9TUYrVQ
	SaUs/1zhJOVQwC1P1Mp4OURsf+jnmCKDGXWuUSz+kIIgd3wSGDyXHkR30s64W5Y6Yv6e
	nMHA==
X-Received: by 10.221.42.138 with SMTP id ty10mr9637692vcb.42.1372018401311;
	Sun, 23 Jun 2013 13:13:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.24.129 with HTTP; Sun, 23 Jun 2013 13:13:00 -0700 (PDT)
X-Originating-IP: [5.14.153.85]
In-Reply-To: <1366557710-13551-1-git-send-email-richard.purdie@linuxfoundation.org>
References: <1366557710-13551-1-git-send-email-richard.purdie@linuxfoundation.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 23 Jun 2013 23:13:00 +0300
Message-ID: <CAK18fxGNu9kH4z064A4mMyGMmwpDmvdukyGR4sSBndkwkGKbwg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQk2SU3aOLw6uL7YKAImKV4yYeOfOGRn91QzZhIwafnsENuBwaUiSUgpjq8/X5uZVQzdVUZf
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] linux-libc-headers-raspberrypi: Drop, its unneeded and bad practise
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
X-List-Received-Date: Sun, 23 Jun 2013 20:13:22 -0000
Content-Type: multipart/alternative; boundary=001a11339d926f958904dfd7edff

--001a11339d926f958904dfd7edff
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Apr 21, 2013 at 6:21 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> If we have this recipe, it means the whole armv6 (or whichever tune) is
> chosen depends
> on a machine specific recipe. This makes no sense as armX packages are
> meant to be
> machine independent.
>
> We've had this problem in other layers and it causes needed rebuilds of
> packages
> when you switch machines since the sstate checksums change. These headers
> are just part
> of the toolchain bootstrap process so "standard" kernel headers are fine.
> The kernel
> header version does need to be later of equal to the kernel version but
> we're fine in
> that regard since the core is on 3.8, the latest pi kernel is 3.6.
>
> There is nothing special about these headers so lets remove them and use
> the standard
> system provided recipe, avoding any rebuilds. I tested the various other
> recipes in
> the layer and there doesn't seem to be any dependency on these headers.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  .../linux-libc-headers-raspberrypi_3.2.27.bb               |   12
> ------------
>  1 file changed, 12 deletions(-)
>  delete mode 100644 recipes-kernel/linux-libc-headers/
> linux-libc-headers-raspberrypi_3.2.27.bb
>
> diff --git a/recipes-kernel/linux-libc-headers/
> linux-libc-headers-raspberrypi_3.2.27.bbb/recipes-kernel/linux-libc-headers/
> linux-libc-headers-raspberrypi_3.2.27.bb
> deleted file mode 100644
> index a5964ab..0000000
> --- a/recipes-kernel/linux-libc-headers/
> linux-libc-headers-raspberrypi_3.2.27.bb
> +++ /dev/null
> @@ -1,12 +0,0 @@
> -require recipes-kernel/linux-libc-headers/linux-libc-headers.inc
> -
> -PR = "r0"
> -
> -PROVIDES = "linux-libc-headers"
> -RPROVIDES_${PN}-dev = "linux-libc-headers-dev"
> -RPROVIDES_${PN}-dbg = "linux-libc-headers-dbg"
> -
> -SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
> -SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
> -          "
> -S = "${WORKDIR}/git"
> --
> 1.7.10.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Sorry for missing out your patch. Please include "[meta-rapberrypi]" in
your subject prefix next time.
Thank you for you contribution. Patch merged.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11339d926f958904dfd7edff
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sun, Apr 21, 2013 at 6:21 PM, Richard Purdie <span dir=
=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=
=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><di=
v class=3D"gmail_extra">

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">If we have this r=
ecipe, it means the whole armv6 (or whichever tune) is chosen depends<br>
on a machine specific recipe. This makes no sense as armX packages are mean=
t to be<br>
machine independent.<br>
<br>
We&#39;ve had this problem in other layers and it causes needed rebuilds of=
 packages<br>
when you switch machines since the sstate checksums change. These headers a=
re just part<br>
of the toolchain bootstrap process so &quot;standard&quot; kernel headers a=
re fine. The kernel<br>
header version does need to be later of equal to the kernel version but we&=
#39;re fine in<br>
that regard since the core is on 3.8, the latest pi kernel is 3.6.<br>
<br>
There is nothing special about these headers so lets remove them and use th=
e standard<br>
system provided recipe, avoding any rebuilds. I tested the various other re=
cipes in<br>
the layer and there doesn&#39;t seem to be any dependency on these headers.=
<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
---<br>
=A0.../<a href=3D"http://linux-libc-headers-raspberrypi_3.2.27.bb" target=
=3D"_blank">linux-libc-headers-raspberrypi_3.2.27.bb</a> =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 | =A0 12 ------------<br>
=A01 file changed, 12 deletions(-)<br>
=A0delete mode 100644 recipes-kernel/linux-libc-headers/<a href=3D"http://l=
inux-libc-headers-raspberrypi_3.2.27.bb" target=3D"_blank">linux-libc-heade=
rs-raspberrypi_3.2.27.bb</a><br>
<br>
diff --git a/recipes-kernel/linux-libc-headers/<a href=3D"http://linux-libc=
-headers-raspberrypi_3.2.27.bb" target=3D"_blank">linux-libc-headers-raspbe=
rrypi_3.2.27.bb</a> b/recipes-kernel/linux-libc-headers/<a href=3D"http://l=
inux-libc-headers-raspberrypi_3.2.27.bb" target=3D"_blank">linux-libc-heade=
rs-raspberrypi_3.2.27.bb</a><br>


deleted file mode 100644<br>
index a5964ab..0000000<br>
--- a/recipes-kernel/linux-libc-headers/<a href=3D"http://linux-libc-header=
s-raspberrypi_3.2.27.bb" target=3D"_blank">linux-libc-headers-raspberrypi_3=
.2.27.bb</a><br>
+++ /dev/null<br>
@@ -1,12 +0,0 @@<br>
-require recipes-kernel/linux-libc-headers/linux-libc-headers.inc<br>
-<br>
-PR =3D &quot;r0&quot;<br>
-<br>
-PROVIDES =3D &quot;linux-libc-headers&quot;<br>
-RPROVIDES_${PN}-dev =3D &quot;linux-libc-headers-dev&quot;<br>
-RPROVIDES_${PN}-dbg =3D &quot;linux-libc-headers-dbg&quot;<br>
-<br>
-SRCREV =3D &quot;10182a3bc434b27740f81c2b836a1af943060241&quot;<br>
-SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.git=
;protocol=3Dgit;branch=3Drpi-3.2.27" target=3D"_blank">github.com/raspberry=
pi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27</a> \<br>
- =A0 =A0 =A0 =A0 =A0&quot;<br>
-S =3D &quot;${WORKDIR}/git&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.10.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br>Sorry for missing out your patch. Plea=
se include &quot;[meta-rapberrypi]&quot; in your subject prefix next time.=
=A0</div><div class=3D"gmail_extra">Thank you for you contribution. Patch m=
erged.<br clear=3D"all">

<div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></d=
iv><div style=3D"text-align:center"><div align=3D"left" style=3D"font-famil=
y:&#39;Times New Roman&#39;;font-size:medium"><b style=3D"color:rgb(51,51,5=
1);font-family:Arial;font-size:small;text-align:center">Andrei Gherzan</b><=
font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a11339d926f958904dfd7edff--
