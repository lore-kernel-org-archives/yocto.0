Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32297E004E5; Wed, 21 Dec 2016 09:16:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB03EE0034A
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:16:18 -0800 (PST)
Received: by mail-yw0-f170.google.com with SMTP id t125so102536743ywc.1
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hbB00NkwKJXDGI+dqWNLVGDtEcDNPKW2LqFOOuv3m7k=;
	b=N7aDenrWs54FNJG8f0DpXDM0D22u74ubNBIUEGeTc1ckX9EfbX1+I+3H5kKS4dtQGY
	KV9KQnSgNDbTti2lMDihDvoexwPh19gwLS1bBImjzjJ+Mkst3/DK76tTG2ViLyvyMNCt
	9oG5UK+hmUCyqqVIZf7n1++0PY8SOpoWmLk9MtSIX8Wck1NbkFMwiIr/sEKkQOuGOXiG
	eP99/OTJ8D8Kf7ZA3NjdOZqXP3Xpd1LoGM5qyMyh9YrDIR0VY4tkWM2q4x3l1+mbusZo
	gbUtyLxyBs9x02sHd9CEY5VnTVA5+fuPaYhQo6ukZ19wiQgksSiLMlbtk9SRM8OOx7j/
	vrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hbB00NkwKJXDGI+dqWNLVGDtEcDNPKW2LqFOOuv3m7k=;
	b=safr1qcHzqeOtU9JJFI/FK7pnHrSThl2AVtETsdLYptY8FNWUdK8ZJyd1GRG2BM+T9
	lxWfv4xZ7Zs34jMvuJMBzjP9ssZ+TXVeFwA29smW2+pNm6qW0E358imaVj7O50rW22mF
	7gucUyb52bNeJhlGELAHjpbfk37Ds4TukpLLUDYKOZqTDUBdUAjs324nuMDFuS7zL9JN
	fdX2moshT6tCjf7NM7NzHtbjQPCvavvyCkyi1DIEB8kBDV6KZEXmuCofvtm2WktaHVAf
	Tcpg2WLdBBXgLy6UOAuvcgkqIbYyKG6WZmDEVEDgtlazxbt7tkEu6Uwv7PXQryv8IKd4
	MM7w==
X-Gm-Message-State: AIkVDXIsK8bJZ0CkV7BmODZu3zy/bC2nhAKRDnGj7TRDn+P+gLsaOKlTjNjSobzwO1GCACa4ob7g1ABomP51coaR
X-Received: by 10.129.167.202 with SMTP id e193mr4620082ywh.112.1482340577540; 
	Wed, 21 Dec 2016 09:16:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.15.69 with HTTP; Wed, 21 Dec 2016 09:16:16 -0800 (PST)
In-Reply-To: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
From: Rick Altherr <raltherr@google.com>
Date: Wed, 21 Dec 2016 09:16:16 -0800
Message-ID: <CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
To: Hamish Guthrie <Hamish.Guthrie@kistler.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fitImage and initramfs
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
X-List-Received-Date: Wed, 21 Dec 2016 17:16:20 -0000
Content-Type: multipart/alternative; boundary=94eb2c14664a8fd83705442e4fc4

--94eb2c14664a8fd83705442e4fc4
Content-Type: text/plain; charset=UTF-8

Have you tried manually extracting the .xz it is having trouble with?  The
bundling process for zImage and fitImage are different but both involve
extracting the initramfs image first and they use the same copy_initramfs
method in kernel.bbclass to do it.  Setting INITRAMFS_IMAGE to
"core-image-minimal" is a bit odd though as that is typically the fully
built rootfs, not just the initramfs.  That might also introduce a
dependency problem as core-image-minimal depends on the kernel.  Did you
mean to use "core-image-minimal-initramfs" instead?

On Wed, Dec 21, 2016 at 8:50 AM, Hamish Guthrie <Hamish.Guthrie@kistler.com>
wrote:

> Hi List,
>
> I am trying to create a fitImage including an initramfs. I am able to
> create a fitImage without an initramfs, and I am able to create a zImage
> with an initramfs. If I try to create a fitImage with an initramfs, I
> receive the following error:
>
> | Creating a kernel image with a bundled initramfs...
> | Copying initramfs into ./usr ...
> | xz decompressing image
> | xz: /home/hamish/build/tmp/work/beaglebone-poky-linux-gnueabi/
> linux-yocto/4.8.12+gitAUTOINC+926c93ae07_85dc85153c-r0/
> linux-beaglebone-standard-build/usr/core-image-minimal-beaglebone.cpio.xz:
> Unexpected end of input
>
> I have added the following to my machine .conf file:
>
> KERNEL_IMAGETYPES = "zImage fitImage"
> KERNEL_CLASSES += "kernel-fitimage"
>
> INITRAMFS_IMAGE = "core-image-minimal"
> INITRAMFS_IMAGE_BUNDLE = "1"
>
> Any ideas would be most welcome.
>
> Hamish
> -
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c14664a8fd83705442e4fc4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you tried manually extracting the .xz it is having tr=
ouble with?=C2=A0 The bundling process for zImage and fitImage are differen=
t but both involve extracting the initramfs image first and they use the sa=
me copy_initramfs method in kernel.bbclass to do it.=C2=A0 Setting INITRAMF=
S_IMAGE to &quot;core-image-minimal&quot; is a bit odd though as that is ty=
pically the fully built rootfs, not just the initramfs.=C2=A0 That might al=
so introduce a dependency problem as core-image-minimal depends on the kern=
el.=C2=A0 Did you mean to use &quot;core-image-minimal-initramfs&quot; inst=
ead?</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed,=
 Dec 21, 2016 at 8:50 AM, Hamish Guthrie <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Hamish.Guthrie@kistler.com" target=3D"_blank">Hamish.Guthrie@kistler.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi List,<br>
<br>
I am trying to create a fitImage including an initramfs. I am able to creat=
e a fitImage without an initramfs, and I am able to create a zImage with an=
 initramfs. If I try to create a fitImage with an initramfs, I receive the =
following error:<br>
<br>
| Creating a kernel image with a bundled initramfs...<br>
| Copying initramfs into ./usr ...<br>
| xz decompressing image<br>
| xz: /home/hamish/build/tmp/work/<wbr>beaglebone-poky-linux-gnueabi/<wbr>l=
inux-yocto/4.8.12+gitAUTOINC+<wbr>926c93ae07_85dc85153c-r0/<wbr>linux-beagl=
ebone-standard-<wbr>build/usr/core-image-minimal-<wbr>beaglebone.cpio.xz: U=
nexpected end of input<br>
<br>
I have added the following to my machine .conf file:<br>
<br>
KERNEL_IMAGETYPES =3D &quot;zImage fitImage&quot;<br>
KERNEL_CLASSES +=3D &quot;kernel-fitimage&quot;<br>
<br>
INITRAMFS_IMAGE =3D &quot;core-image-minimal&quot;<br>
INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;<br>
<br>
Any ideas would be most welcome.<br>
<br>
Hamish<br>
-<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--94eb2c14664a8fd83705442e4fc4--
