Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6404.1574948265305155159
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 05:37:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=HYVqRrzG;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D63B0E0108E; Thu, 28 Nov 2019 05:37:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A806E00E85
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 05:37:43 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id y13so5073173vsd.9
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 05:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TeNdP/cszoaaRdj0sAoRhng4/wbvX3OGtzdJQtY63hE=;
        b=HYVqRrzGwQcLqt0gJRthWWnAfgbpsDI9j3elL0cGVUlpeDr8/gu4GdHqi/pz0ot9LP
         e2ZSSzmKl4nx8DycocNnpr8wcQhfPPD06tjYUrPJA/ubS9ccMDoF9ZkeR8A/WYzXcDSk
         2MDjSoDyzc8sZF+g180R3fopkZfMeqX9Won4d5Aa2u5E2CaV6RDUeMNSa6c9qKhCHPXx
         yldPaFW6jflqlNLzM/7OspEvIUViQDG85SOQFENASPP+jbNamqPzCebDXuTkKuUErs0J
         YGA+cWeY2fFEH/3k+TPW83yt4kaohcXLPAjIZxpdMwMKQELPO0nSt9ve0cRwVNd71MG0
         AbqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TeNdP/cszoaaRdj0sAoRhng4/wbvX3OGtzdJQtY63hE=;
        b=nEMyEPBSsgdHvjOUBCrnWI7iMoVjTfVoXiH/7ilibUo5hebObAM7GVXpByU5u6HM1x
         4Ax4qSRNvt9FHes6Dngh8eZ18NxzrQc6LI7aCNvBSe656eRzX95L+J9xsdr+RKypCd0q
         tJoU0Eb6MWKKRtR3E/kIvHgo+4fT9lcJ3Vw++IYN9jI8nhezubbJWfvEMGf2aQb+549k
         XzkIqc3MJnbOxthzuTKNq12tDOxOApHIXbueXTp6JGQXU6c/E3qUO98rmDf8/j8JCR56
         2hPxzfxupWcLiQmtYANif8pBjHwGf2JHsW5xxcDKchX853P6zQ6lXpBVmk99ZWnGCVBF
         ynww==
X-Gm-Message-State: APjAAAUnqTgYnofvfqcTRKI/AdJyuenO2hJeLC9nzOepfeGo3hObs1y3
	U3y8jdWvs+cbVkoeXUZzIl/XLzhuIHIOkON141OAu85TyKvd4w==
X-Google-Smtp-Source: APXvYqwFk6Ws2+wQJp1Yuq6bvEAJo++qNAI07spqGqDMkPLnOsgHZ84QtmnwB6EDI4Gu87hJimYAW4SJJHwfiPoC3pY=
X-Received: by 2002:a67:bb18:: with SMTP id m24mr3965908vsn.92.1574948262511;
 Thu, 28 Nov 2019 05:37:42 -0800 (PST)
MIME-Version: 1.0
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
In-Reply-To: <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 28 Nov 2019 14:37:30 +0100
Message-ID: <CAMjhiJh2Qhc=OdjPB-x4nrBGnnFmiDkP4gf5qo1aGi5koVGvhQ@mail.gmail.com>
Subject: Re: [yocto] Architecture of .wic approach; image of images
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ba1a4305986837ff"

--000000000000ba1a4305986837ff
Content-Type: text/plain; charset="UTF-8"

On Thu, Nov 28, 2019 at 10:01 AM Josef Holzmayr <
holzmayr@rsi-elektrotechnik.de> wrote:

> On Thu, Nov 28, 2019 at 09:37:12AM +0100, Leon Woestenberg wrote:
>
> > The .wic image type however, builds an image from *images* rather than
> > packages.
>
> Thats *almost* correct. It builds an image from a *artifacts*.
>

My finding is: ...only if *artifacts* (also) includes a rootfs.

The image class dependency on rootfs seems very hardcoded. I cannot create
a recipe that works without *creating* a rootfs.
(even though I have no rootfs other than the initramfs image which is
already there, as an *artifact*).

inherit image

IMAGE_FSTYPES = "wic"
DEPENDS += "my-initramfs"

IMAGE_FEATURES = ""
IMAGE_INSTALL = ""

# This image does not generate its own root filesystem
# I have tried to exclude it, but it's hardcoded even in buildhistory.
#do_rootfs[noexec] = "1"
#do_image[noexec] = "1"
#do_image_wic[noexec] = "1"
#do_rootfs_wicenv[noexec] = "1"


WKS_FILE = "my-disk-image.wks"
my-disk-image.wks:
part /boot --source bootimg-efi
--sourceparams="loader=grub-efi,initrd=my-initramfs.cpio.gz" --ondisk
sda --label msdos --active --align 1024 --use-uuid
bootloader --ptable gpt --timeout=1

--000000000000ba1a4305986837ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 28, 2019 at 10:01 AM Josef Ho=
lzmayr &lt;<a href=3D"mailto:holzmayr@rsi-elektrotechnik.de">holzmayr@rsi-e=
lektrotechnik.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">On Thu, Nov 28, 2019 at 09:37:12AM +0100, Leon Woestenberg =
wrote:<br><br>
&gt; The .wic image type however, builds an image from *images* rather than=
<br>
&gt; packages.<br>
<br>
Thats *almost* correct. It builds an image from a *artifacts*.<br>
</blockquote></div><div><br></div><div>My finding is: ...only if *artifacts=
* (also) includes a rootfs.<br></div><div><br></div><div>The image class de=
pendency on rootfs seems very hardcoded. I cannot create a recipe that work=
s without *creating* a rootfs.</div><div>(even though I have no rootfs othe=
r than the initramfs image which is already there, as an *artifact*).<br></=
div><div><br></div><div>inherit image<br><br>IMAGE_FSTYPES =3D &quot;wic&qu=
ot;<br>DEPENDS +=3D &quot;my-initramfs&quot;<br><br>IMAGE_FEATURES =3D &quo=
t;&quot;<br>IMAGE_INSTALL =3D &quot;&quot;<br><br># This image does not gen=
erate its own root filesystem</div><div># I have tried to exclude it, but i=
t&#39;s hardcoded even in buildhistory.<br></div><div>#do_rootfs[noexec] =
=3D &quot;1&quot;<br>#do_image[noexec] =3D &quot;1&quot;<br>#do_image_wic[n=
oexec] =3D &quot;1&quot;<br>#do_rootfs_wicenv[noexec] =3D &quot;1&quot;</di=
v><div></div><div><br></div><div><br></div><div>WKS_FILE =3D &quot;my-disk-=
image.wks&quot;<br>

my-disk-image.wks:<br>
part /boot --source bootimg-efi<br>
--sourceparams=3D&quot;loader=3Dgrub-efi,initrd=3Dmy-initramfs.cpio.gz&quot=
; --ondisk<br>
sda --label msdos --active --align 1024 --use-uuid<br>
bootloader --ptable gpt --timeout=3D1</div><div><br></div><div><br></div></=
div>

--000000000000ba1a4305986837ff--
