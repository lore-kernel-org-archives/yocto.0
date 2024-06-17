Return-Path: <JPEWhacker@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D81CC41513
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 18:58:38 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.65084.1718650710371938850
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 11:58:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UpqPSLdY;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: jpewhacker@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52cc14815c3so566939e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 11:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718650708; x=1719255508; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EPdfNj93PLaZ3XBchqyhIziRseHCpqu3LrYwlMjbh7U=;
        b=UpqPSLdY2l7bfXpIhQkfZ5b7+4idx+6WXftk5AwffkBHXwDzfk3Fk0MCrWNG+fzbG7
         n9PySOdj/icqO2eTJIm+aqOkgpd9FhWVgib72mGcuUylIBS/mSha0c/X1TjX/TcdtbQQ
         0lzKR6KOi5Quvh+tLVPuGdlofEai04xEJKxGXBA3J0sIaeBJbmzaDi3jrNcCHUSoDIcZ
         x25RG3w2nu51fgqIc33wXghhp7zqJmNB+Z6wwJmMXcjUsPBACCDK82OcutokTbQ37RBk
         DJ2zYRYAvJI5AgTXbCEk4y/h9aIso3IA+mXBm/CH6Tv32FQkO3LrJ44SNFPz+SHKpUYV
         CMyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718650708; x=1719255508;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EPdfNj93PLaZ3XBchqyhIziRseHCpqu3LrYwlMjbh7U=;
        b=mLKv8ARQECbo+afvWZctwWUvucJLDE+ot9sBWs2xuJBI+2N1Xk4pdKynk16igY2irs
         QGWN8kcaRoUP+f1rTYDKAu8aUTIoluXQHD+ddusIYcyjRHBfmyjA34oPwMFh2ucC16TQ
         7MKMIWeA8Va3gvwVNloLDqOEAywwsN9vEEyB75E4tTzs8g65Jmg3NizZZeKmMOdThNDo
         NPPdqLcckP7hfG1Y7C4TQEFMwRE+VCXB2wzEaCW74T996c1mZwKL66apunV4+lQkWaAP
         mz7j1ThbOBveP3k4//cbrLmXB9T4ACWWADHYiMadTslnrBCo5PWUukNNAY6jNuFcX5nk
         UPgw==
X-Gm-Message-State: AOJu0YyyQ+8yZXC2euEWu+Ihyjnh/fAWVfW2xDnnUstwbMNgCqecWHA1
	exJ2WkOUeypAHfgVY0qTuAbsCP7laxkpLtvk2U+vvipRi+TbTyS2HaNM1LJV00Bxrnwsck7EZXx
	IFcizXI1AtgbOtGPSKaB0vMq9Uhadyw==
X-Google-Smtp-Source: AGHT+IFp8xIY2FFMYGov33PFtX6BhSbMuPhDpvA7DaqpJFFk6zxC3LIkfi6hBn17GJ0P8HDnABEeAtDTmUVah5a8YZU=
X-Received: by 2002:a05:6512:6d6:b0:52c:c57a:767e with SMTP id
 2adb3069b0e04-52cc57a77bcmr95890e87.16.1718650707665; Mon, 17 Jun 2024
 11:58:27 -0700 (PDT)
MIME-Version: 1.0
References: <CACgNL-F86ipDKQRynK8+Sjkx48Ww4zkX9R=ns393eJ88EAJaHA@mail.gmail.com>
In-Reply-To: <CACgNL-F86ipDKQRynK8+Sjkx48Ww4zkX9R=ns393eJ88EAJaHA@mail.gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Mon, 17 Jun 2024 12:58:15 -0600
Message-ID: <CAJdd5GYXrYywf2hZj0G99+6vx+5Es6piAr-YuWyzLv_ZfeiozA@mail.gmail.com>
Subject: Re: [yocto] Help needed on SBOM generation using Yocto
To: yocto@lists.yoctoproject.org, allan.elkaim@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 18:58:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63355

On Mon, Jun 17, 2024 at 11:17=E2=80=AFAM Allan Elkaim via
lists.yoctoproject.org <allan.elkaim=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Hello,
>
> I am trying to generate an SBOM using Yocto, but I am having issues explo=
iting the result and could really use a hand.
>
> I have done the following steps on a "blank" poky repository on the scart=
hgap branch:
>
> git clone git://git.yoctoproject.org/poky
>
> cd poky
>
> git checkout origin/scarthgap -b my-branch
>
> source oe-init-build-env
>
> I have then edited my local.conf to include those changes:
>
> INHERIT +=3D "create-spdx"
> SPDX_PRETTY =3D "1"
>
>
> And finally, I compiled the core-image-minimal image for the default qemu=
x86-64 image.
>
> bitbake core-image-minimal
>
> Once everything is built, I have the following file:
>
> poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.roo=
tfs.spdx.tar.zst
>
> From here, I'm confused about how to exploit this archive, there are many=
 files in it and I do not understand why some of them seems to be named aft=
er the name of the software "component" and other start with "recipe".

Yes, this is a bit of an unfortunate situation with SPDX 2.2 where we
have to do some non-optimal things in order to generate meaningful
output. Some of those non-optimal things are extraneous to the spec
(but we try to make sure we aren't in direct violation of the spec).
One of these is the entire concept of the "tarball of file", which
requires some extra handling.

Navigating the multiple documents can seem tricky, but it's actually
not too bad. The key is the index.json file that is added to the
archive. This file will give you the filename where each
`documentNamespace` can be found in the archive. As you are navigating
around a file, you'll come across references to objects that are
outside of the current document, which will be some string that looks
like: "DocumentRef-dependency-<SOMENAME>:<SOMESPDXID>". In the current
document, you'll find a `ExternalDocumentRef` that maps the
"DocumentRef-..." prefix to the `documentNamespace`. Once you have the
`documentNamespace`, you can find it in the index.json file, and in
that file you will find <SOMESPDXID>. Hopefully that all makes sense.

The "recipe" files describe the recipe (e.g. the source code and how
it was built), whereas the others describe the packages (e.g. the
output files/binaries/etc.) built from that recipe. There is a
GENERATED_FROM relationship that links the packages back to their
recipe.

>
> I mainly am interested in establishing the list of software "packages" (b=
inary / libraries...) , along with their "owner" and their license.
>
> For instance, if I had dropbear embedded in my image, I would like to ext=
ract the following information:
>
> PACKAGE : dropbear
> VERSION: 2022.83
> LICENSE: MIT
> SOURCE SITE: https://matt.ucc.asn.au/dropbear/releases
> OWNER: Matt Johnston <matt@ucc.asn.au>

Right, so you would start with the dropbear.spdx.json file. Some of
what you are looking for can be found there, otherwise you'll need to
follow GENERATED_FROM back to the recipe (using the algorithm
described above) to find the rest

>
> Also, if possible, having the ability to produce some sort of dependency =
tree would be really helpful.

GENERATED_FROM will tell you what recipe(s) are built into a package.
Once you have the recipes, BUILD_DEPENDENCY_ON will give you the build
dependency tree. Following those recursively will give you the entire
dependency tree for a given starting package. It will likely be large
since we include the -native dependencies also :)

If you want the runtime dependencies instead of the build
dependencies, it's a little tricker. For each package file (e.g.
"dropbear.spdx.json") there is a "runtime-" spdx file (e.g.
"runtime-dropbear.spdx.json") that creates the RUNTIME_DEPENDENCY_OF
relationships for the package. These have to be in a separate file
because of circular runtime dependencies. Following these
relationships will give you the web (it's not a tree or a DAG, so
watch out) of runtime dependencies for a package.


Hopefully all of the descriptions will shed some light on the
relationship diagram I've included in my talks :)

>
> Do you have any tips / or leads on how to achieve those goals from the pr=
oduced core-image-minimal-qemux86-64.rootfs.spdx.tar.zst file ?
>
> I thank you very much in advance for your help and wish you a nice day !
>
> Regards,
>
> Allan ELKAIM.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63352): https://lists.yoctoproject.org/g/yocto/messag=
e/63352
> Mute This Topic: https://lists.yoctoproject.org/mt/106725192/3616693
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [JPEWhacker@gma=
il.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

