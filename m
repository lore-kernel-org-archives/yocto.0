Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1571CE00721
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 23:33:40 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id l6so4817834vcl.31
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 23:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=abkTRaOAH06LrlAU6/GFYkeliwRmXc6qoOVJ6MP8JRY=;
	b=QAhGPVZxR5/0GtViLOb+C2UXvOqB+nBaHCzD2WAVvPjZSqPtM2eupNaa+w5A0XUFm5
	cckUypDVMZy3gp0sn+W7axAFPNRkAY2qWEfHtTKjG3KGHbTuHBHwIoCxaZbO41tE1aRa
	QsuOsz3lX+v15q/qXb9Npej4D+r6/Oriz2j0263vKUhypFLljy8Y5xWMcu/XuaxZDp2R
	mJVXzUTuFe3yCzryx77QeRJxGmy5gNDNc/mHm1HjOK1X737xtVjB9MdjJBKxXW3Mxtbv
	ymyEtMg8RgCpuji8/o89xMvaec4cgXKlYHxV45RfoyBf2ELyo94bD2O6c5VG5JN+9llw
	YCgQ==
MIME-Version: 1.0
X-Received: by 10.58.188.48 with SMTP id fx16mr25254809vec.22.1361345619895;
	Tue, 19 Feb 2013 23:33:39 -0800 (PST)
Received: by 10.58.251.195 with HTTP; Tue, 19 Feb 2013 23:33:39 -0800 (PST)
In-Reply-To: <CAFyqS9qOfZ1m_nUMCF8qK+kxOvXF5XPBb_ZuQFGvSoRMdOCGwQ@mail.gmail.com>
References: <CAFyqS9qOfZ1m_nUMCF8qK+kxOvXF5XPBb_ZuQFGvSoRMdOCGwQ@mail.gmail.com>
Date: Wed, 20 Feb 2013 08:33:39 +0100
Message-ID: <CACW_hTZb7DYjNrhjgkD3VYnpNzoJKAb8ocfTkj872D+tKZdVUA@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake: how to resolve a dependency to kernel-devicetree when building rootfs
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
X-List-Received-Date: Wed, 20 Feb 2013 07:33:41 -0000
Content-Type: multipart/alternative; boundary=089e01229cb6175fad04d622fad5

--089e01229cb6175fad04d622fad5
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Is there a kernel-devicetree package in you tmp/deploy ?

I'm using ipk and I have:
tmp/deploy/ipk/syrcxx/kernel-devicetree_2.6.38-r4_syrcxx.ipk

If it is not there that is your problem.
You may also want to nuke your tmp dir and rebuild (with sstate it should
not take excessively long)

Frans


2013/2/19 Hans Beck=E9rus <hans.beckerus@gmail.com>

> First of all, I am a total noob when it comes to bitbake, but I am
> struggling and slowly getting there ( I think).
> So, I am sorry if my questions seems stupid, but this one I just can
> not seem to figure out on my own.
> What I am trying to do is to build a custom ARM based rootfs image
> using the ELDK toolchain that should include all the modules from my
> kernel build. But the rootfs build stage fails! If I exclude the
> kernel modules everything work just fine.
>
> The bitbake error I get is
>
> | Collected errors:
> |  * satisfy_dependencies_for: Cannot satisfy the following
> dependencies for kernel-modules:
> |  *    kernel-devicetree *
> |  * opkg_install_cmd: Cannot install package kernel-modules.
>
>
> My simple rootfs.bb looks like this
>
> require recipes-core/images/core-image-minimal.bb
>
> # The list of packages used to build images.
> IMAGE_INSTALL +=3D "kernel-modules"
>
> # Formats of root filesystem images that you want to have created.
> IMAGE_FSTYPES =3D "jffs2"
>
>
> The device tree blob was built successfully and is located in the
> kernel deploy image folder.
> I can see that I have the following files under the kernel work path
>
> ./packages-split/kernel-devicetree
> ./pkgdata/runtime/kernel-devicetree
> ./pkgdata/runtime-reverse/kernel-devicetree
>
> Any advice on what I have missed?
>
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e01229cb6175fad04d622fad5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Is there a kernel-devicetree package in you=
 tmp/deploy ?<br><br></div>I&#39;m using ipk and I have:<br>tmp/deploy/ipk/=
syrcxx/kernel-devicetree_2.6.38-r4_syrcxx.ipk<br><br></div>If it is not the=
re that is your problem.<br>
</div>You may also want to nuke your tmp dir and rebuild (with sstate it sh=
ould not take excessively long)<br><br>Frans<br></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">2013/2/19 Hans Beck=E9rus <span di=
r=3D"ltr">&lt;<a href=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">=
hans.beckerus@gmail.com</a>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">First of all, I am a total noob when it come=
s to bitbake, but I am<br>
struggling and slowly getting there ( I think).<br>
So, I am sorry if my questions seems stupid, but this one I just can<br>
not seem to figure out on my own.<br>
What I am trying to do is to build a custom ARM based rootfs image<br>
using the ELDK toolchain that should include all the modules from my<br>
kernel build. But the rootfs build stage fails! If I exclude the<br>
kernel modules everything work just fine.<br>
<br>
The bitbake error I get is<br>
<br>
| Collected errors:<br>
| =A0* satisfy_dependencies_for: Cannot satisfy the following<br>
dependencies for kernel-modules:<br>
| =A0* =A0 =A0kernel-devicetree *<br>
| =A0* opkg_install_cmd: Cannot install package kernel-modules.<br>
<br>
<br>
My simple <a href=3D"http://rootfs.bb" target=3D"_blank">rootfs.bb</a> look=
s like this<br>
<br>
require recipes-core/images/<a href=3D"http://core-image-minimal.bb" target=
=3D"_blank">core-image-minimal.bb</a><br>
<br>
# The list of packages used to build images.<br>
IMAGE_INSTALL +=3D &quot;kernel-modules&quot;<br>
<br>
# Formats of root filesystem images that you want to have created.<br>
IMAGE_FSTYPES =3D &quot;jffs2&quot;<br>
<br>
<br>
The device tree blob was built successfully and is located in the<br>
kernel deploy image folder.<br>
I can see that I have the following files under the kernel work path<br>
<br>
./packages-split/kernel-devicetree<br>
./pkgdata/runtime/kernel-devicetree<br>
./pkgdata/runtime-reverse/kernel-devicetree<br>
<br>
Any advice on what I have missed?<br>
<br>
Hans<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--089e01229cb6175fad04d622fad5--
