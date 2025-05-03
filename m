Return-Path: <u.apeiron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2E2C369C2
	for <webhook@archiver.kernel.org>; Sat,  3 May 2025 20:27:43 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.17973.1746304056938038620
 for <yocto@lists.yoctoproject.org>;
 Sat, 03 May 2025 13:27:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FtNOhzs+;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: u.apeiron@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac25520a289so535611566b.3
        for <yocto@lists.yoctoproject.org>; Sat, 03 May 2025 13:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746304055; x=1746908855; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MHM+3gPQeqd1hS7oY2fPXo2BTL0jYqADBxlKhCCEO2k=;
        b=FtNOhzs+T11Xyyv/CACoIbsPXGzwBKkLA6DEvQelAt8dYy8YSq4kPnwuKqDZ2oSS0R
         iqEAhbm2UDip8iir9QvaQiX3HeAJulaBAz5lpjO7eueqs8psArnhcGzXJgH8cqcyxKu4
         c7Oe4zDhC890K+V91JFtFLW9rLB9RlFyeNbPKDaFibfQBbSG1eRKsXMsZMxRLGatDK2P
         q7CLrLtN1v3x7BPq2A5j4hKIvOhdP0l3P1jw43Bx7VF0g8GopzwbfMFNZ7FO/jhNo8gL
         tg1e7gaWbmbJtpeOcgGVgoYKC23x7frcs8v0nbdVZFHyQHvbzv4/EUGAInVBEPxkh22s
         UkzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746304055; x=1746908855;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MHM+3gPQeqd1hS7oY2fPXo2BTL0jYqADBxlKhCCEO2k=;
        b=mo4WJQrYRI90NJCLYnnyBD8U77HxdvQ6ApqbMbA+tRu0JK4aHidFrUZDZ+XpS28eZq
         A9Lmf+NWE8bbWOv1lB70FzaZPuCCKsisez3WqxJQCmOtCHYjffoU3p5qrIrSPLRVcyc4
         CQ5BqaSzq61sFTqA2gO/C3/CQAWNGsnlFXCXOfcwF2E0KaxNwDOWx5VenIlDIIN7fnyL
         YM6nKDuyjuobTewdMu//IIgA40ranRXCkb1P3PsIaQYqbqG2qF/TyCM2Jc0YXNCooRAq
         oeXhBqqNzMMjRXVLtoFjMxG9QXmu2OyQfpzC84nVfLDp+j3ZE8yn3hm9RaBLZdFz7pnC
         sycQ==
X-Gm-Message-State: AOJu0YzQRukOrucphRKcI50stW7twCBo9ih2n/aYD4I3XSjzRvt+BbZV
	6zX6JRakoQMUkri7h5cBKsgaPh21LVI4ibcsBjrMmfKn3Z0cJcxQ7ksmgfw/67BhOMJ+NBu3BIE
	Adn3U8PEZh4MX/glO8CaS/efro60=
X-Gm-Gg: ASbGncuAULH5VhVWrajDHihmn+J2Sm/PMUKdx6wRL+9HR2LCOqId1T+Tu3/V612fNZE
	+Wbl11vEwBz4wSVFmhXtlo+/w918Rca4Nlbm86VAR4JiSNRnybFOpIVQPGpl7wRnqrTb9BdGe8J
	/7FNBt/koVNZrx7IX8fp1gNeINVtB8M6UJ8xEBp2YKbNLV8Dv77xxs
X-Google-Smtp-Source: AGHT+IHTn2JDCHtR/ANHKmquoKwGYLBJZ/4ntQDjM5+DO27ufq+7aIUweWAMwvbygb2IVd+qW72BDwSFGbU7xd6cuyE=
X-Received: by 2002:a17:906:c10e:b0:aca:a687:a409 with SMTP id
 a640c23a62f3a-ad1a48eaa40mr203306266b.17.1746304054993; Sat, 03 May 2025
 13:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAK+BxzQUexgV-5nznCWkpdCxu_xkuuf8Qry-8AyXs17Ew+i9TQ@mail.gmail.com>
 <c473c4cad723aa3d40cdcb3b86b08a77758513d9.camel@bootlin.com>
In-Reply-To: <c473c4cad723aa3d40cdcb3b86b08a77758513d9.camel@bootlin.com>
From: "Ulises V." <u.apeiron@gmail.com>
Date: Sat, 3 May 2025 14:27:24 -0600
X-Gm-Features: ATxdqUEMIJ_X2wcq-ddn7mLAt2cTPo77BSI_LxjmYtmr17k9dKVPivPS_yoXftc
Message-ID: <CAK+BxzSdtSuG3WqCjZZTqfOx+kaKYMTX0WhjXRkY53-2ex2igA@mail.gmail.com>
Subject: Re: [yocto] How to generate an initrd.img in yocto recipe.
To: Thomas Perrot <thomas.perrot@bootlin.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000de288b06344118d8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 03 May 2025 20:27:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65279

--000000000000de288b06344118d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Thomas I'll try to do this if I can't I'll come back with more
questions.

Ulises


On Mon, Apr 28, 2025 at 1:22=E2=80=AFAM Thomas Perrot <thomas.perrot@bootli=
n.com>
wrote:

> Hello Ulises,
>
> On Sun, 2025-04-27 at 13:39 -0600, Ulises Vega via lists.yoctoproject.org
> wrote:
>
> Hello everyone,
>
> I want to generate an initrd.img for booting a beaglebone-ai for the
> automotive grade linux which works with both yocto scrathgap and kirkston=
e.
>
> I added the below lines to my local.conf file:
>
> #################
> INITRAMFS_IMAGE =3D "core-image-tiny-initramfs"
>
>
> To build an initramfs, you only need to specify the initramfs image (e.g.=
,
> INITRAMFS_IMAGE_NAME) and its type (e.g., INITRAMFS_FSTYPES). For example=
:
>
> INITRAMFS_IMAGE =3D "core-image-tiny-initramfs"
> INITRAMFS_FSTYPES =3D "cpio.gz"
>
> Moreover, the kernel features required to load and uncompress the
> initramfs must be enabled in the defconfig of your kernel. For example:
>
> CONFIG_BLK_DEV_INITRD=3Dy
> CONFIG_INITRAMFS_SOURCE=3D""
> CONFIG_RD_GZIP=3Dy
> CONFIG_DECOMPRESS_GZIP=3Dy
>
> INITRAMFS_IMAGE_BUNDLE =3D "1"
>
>
> This is only necessary if you want the initramfs to be packaged into the
> kernel binary instead of being a separate binary (or a different image no=
de
> of a kernel fitimage).
>
> Kind regards,
> Thomas
>
> INITRAMFS_IMAGE_NAME ?=3D "${INITRAMFS_IMAGE}-${MACHINE}"
> INITRAMFS_KERNEL_IMAGE=3D"${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin"
> VIRTUAL-RUNTIME_dev_manager =3D "busybox-mdev"
> IMAGE_BOOT_FILES:append =3D " ${INITRAMFS_KERNEL_IMAGE};${KERNEL_IMAGETYP=
E}"
>
> INIT_MANAGER ?=3D "systemd"
>
> IMAGE_ROOTFS_MAXSIZE ?=3D "4294967296"
> ROOTFS_PARTITION_SIZE ?=3D "4294967296"
>
> SDCARD_ROOTFS ?=3D "${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.rootfs.ext4"
>
> IMAGE_FSTYPES:append =3D " ext4 cpio.gz"
> ##################
>
> This is what I found on the web about what I needed to add to generate
> that image. Maybe my initrd.img is being generated but is being named
> "core-image-tiny-initramfs" as the variable INITRAMFS_IMAGE indicates.
>
> I would like to know if I'm writing the correct variables to generate the
> initrd.img.
>
> Thanks.
>
> Ulises Vega
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65257):
> https://lists.yoctoproject.org/g/yocto/message/65257
> Mute This Topic: https://lists.yoctoproject.org/mt/112488442/5443093
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> thomas.perrot@bootlin.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
> --
>
> Thomas Perrot, Bootlin
> Embedded Linux and kernel engineeringhttps://bootlin.com
>
>

--000000000000de288b06344118d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Thomas I&#39;ll try to do this if I can&#39;t =
I&#39;ll come back with more questions.<br></div><div><br></div><div>Ulises=
</div><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Apr 28, 2025 at 1:22=E2=80=AFAM Thomas Perrot &lt;<a href=
=3D"mailto:thomas.perrot@bootlin.com" target=3D"_blank">thomas.perrot@bootl=
in.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div><div><div>Hello Ulises,</div><div><br></div><div>On Sun, 2025-04=
-27 at 13:39 -0600, Ulises Vega via <a href=3D"http://lists.yoctoproject.or=
g" target=3D"_blank">lists.yoctoproject.org</a> wrote:</div><blockquote typ=
e=3D"cite" style=3D"margin:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,=
159,207);padding-left:1ex"><div dir=3D"ltr"><div>Hello everyone,</div><div>=
<br></div><div>I want to generate an initrd.img for booting a beaglebone-ai=
 for the automotive grade linux which works with both yocto scrathgap and k=
irkstone.</div><div><br></div><div>I added the below lines to my local.conf=
 file:</div><div><br></div><div>#################<br>INITRAMFS_IMAGE =3D &q=
uot;core-image-tiny-initramfs&quot;</div></div></blockquote><div><br></div>=
<div><div>To build an initramfs, you only need to specify the initramfs ima=
ge=20
(e.g., INITRAMFS_IMAGE_NAME) and its type (e.g., INITRAMFS_FSTYPES). For
 example:</div></div><div><br></div><div><div>INITRAMFS_IMAGE =3D &quot;cor=
e-image-tiny-initramfs&quot;</div></div><div>INITRAMFS_FSTYPES =3D &quot;cp=
io.gz&quot;</div><div><br></div><div style=3D"color:rgb(0,0,0);font-family:=
Cantarell;font-style:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;white-=
space:normal;word-spacing:0px;text-decoration:none"><div>Moreover, the kern=
el features required to load and uncompress the initramfs must be enabled i=
n the defconfig of your kernel. For example:</div></div><div style=3D"color=
:rgb(0,0,0);font-family:Cantarell;font-style:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;text-decoration:none"=
><br><div>CONFIG_BLK_DEV_INITRD=3Dy</div><div>CONFIG_INITRAMFS_SOURCE=3D&qu=
ot;&quot;</div><div>CONFIG_RD_GZIP=3Dy</div><div>CONFIG_DECOMPRESS_GZIP=3Dy=
</div></div><div><br></div><blockquote type=3D"cite" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:2px solid rgb(114,159,207);padding-left:1ex"><div d=
ir=3D"ltr"><div>INITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot;</div></div></block=
quote><div><br></div><div><div>This is only necessary if you want the initr=
amfs to be packaged into the
 kernel binary instead of being a separate binary (or a different image=20
node of a kernel fitimage).</div></div><div><br></div><div>Kind regards,</d=
iv><div>Thomas</div><div><br></div><blockquote type=3D"cite" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:2px solid rgb(114,159,207);padding-left:1ex=
"><div dir=3D"ltr"><div>INITRAMFS_IMAGE_NAME ?=3D &quot;${INITRAMFS_IMAGE}-=
${MACHINE}&quot;<br>INITRAMFS_KERNEL_IMAGE=3D&quot;${KERNEL_IMAGETYPE}-init=
ramfs-${MACHINE}.bin&quot;<br>VIRTUAL-RUNTIME_dev_manager =3D &quot;busybox=
-mdev&quot;<br>IMAGE_BOOT_FILES:append =3D &quot; ${INITRAMFS_KERNEL_IMAGE}=
;${KERNEL_IMAGETYPE}&quot;<br><br>INIT_MANAGER ?=3D &quot;systemd&quot;<br>=
<br>IMAGE_ROOTFS_MAXSIZE ?=3D &quot;4294967296&quot;<br>ROOTFS_PARTITION_SI=
ZE ?=3D &quot;4294967296&quot;<br><br>SDCARD_ROOTFS ?=3D &quot;${DEPLOY_DIR=
_IMAGE}/${IMAGE_NAME}.rootfs.ext4&quot;<br><br>IMAGE_FSTYPES:append =3D &qu=
ot; ext4 cpio.gz&quot;<br>##################<br></div><div><br></div><div>T=
his is what I found on the web about what I needed to add to generate that =
image. Maybe my initrd.img is being generated but is being named &quot;core=
-image-tiny-initramfs&quot; as the variable INITRAMFS_IMAGE indicates.</div=
><div><br></div><div>I would like to know if I&#39;m writing the correct va=
riables to generate the initrd.img.</div><div><br></div><div>Thanks.</div><=
div><br></div><div>Ulises Vega</div></div><div><br></div><div>-=3D-=3D-=3D-=
=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br></div><div>Links: You receive all messa=
ges sent to this group.<br></div><div>View/Reply Online (#65257): <a href=
=3D"https://lists.yoctoproject.org/g/yocto/message/65257" target=3D"_blank"=
>https://lists.yoctoproject.org/g/yocto/message/65257</a><br></div><div>Mut=
e This Topic: <a href=3D"https://lists.yoctoproject.org/mt/112488442/544309=
3" target=3D"_blank">https://lists.yoctoproject.org/mt/112488442/5443093</a=
><br></div><div>Group Owner: <a href=3D"mailto:yocto+owner@lists.yoctoproje=
ct.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br></div><=
div>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" t=
arget=3D"_blank">https://lists.yoctoproject.org/g/yocto/unsub</a>=C2=A0[<a =
href=3D"mailto:thomas.perrot@bootlin.com" target=3D"_blank">thomas.perrot@b=
ootlin.com</a>]<br></div><div>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=
<br></div><div><br></div></blockquote><div><br></div><div><span><pre>-- <br=
></pre><pre>Thomas Perrot, Bootlin
Embedded Linux and kernel engineering
<a href=3D"https://bootlin.com" target=3D"_blank">https://bootlin.com</a>

</pre></span></div></div>
</div></blockquote></div>

--000000000000de288b06344118d8--

