Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1635.1577042894396334000
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Dec 2019 11:28:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CZtSlTWv;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9949E0122B; Sun, 22 Dec 2019 11:28:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 503A3E00E1F
	for <yocto@yoctoproject.org>; Sun, 22 Dec 2019 11:28:10 -0800 (PST)
Received: by mail-qk1-f174.google.com with SMTP id w127so11972775qkb.11
        for <yocto@yoctoproject.org>; Sun, 22 Dec 2019 11:28:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=antv2Lsejo7BPXnN7TfNUzckT5/at3d6KAsJGIVtatk=;
        b=CZtSlTWvdgfE28usMOafnh7FbM5Mlud/niEazoW+HO+9JIDLB4kKtk9tmP0WRd7qPC
         6I4fSnnnh74F9XdXoHxELkgmhWamjRcfxLo1GV3KhbZxocbr9nXb+GY9p31m99ezWH/z
         4GNn49fhLx1QgGicPxCLLxbdNOSguIUyua7cSDwTDxBeDyB6S8XjBxQNKAv64DeymS8R
         LgKf6OtjINeKi+aMVBi/Am5+7ZJJYsK67YJnH5hLj9eWSCKMUxfkuszfDUBZdAuuY0Yy
         ADWnvxlNb53qsIHfi7UZhHvvRxLhiv6nL/KpOqgDXfeSoYSXjyxrbAVtxEFIne0QoxOk
         5A8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=antv2Lsejo7BPXnN7TfNUzckT5/at3d6KAsJGIVtatk=;
        b=Jo+hKfPmnxpwtZnk+Se3CyRseoUTp4PQeumC5zQYwG0XaU2pjmziFXhbCF2222Ovbm
         WqJUx5NGClBtCQJef8ISItlcY37c3x0AlF0bOdqvrz2Xea9ur2x6/iaMlbLy7G2xlc29
         EhmfG6OCbIf4NppdKLeyCj+RGKQ1xmp9tmKpv7QN6ovlAU4uE8lkKwidyujFFuqkO77q
         PUHQaR9UJqS4VNOjQDnIC7fzXWGMcrmlVUdGZTu94LerPh648txwekUOSIA/ZELAG8DA
         p3xXtMG9VBIQ3z6Cnsh/T2JSNPKN1JLoJScZdxFEN21Inn1icdcy4ag76DgyvmGE2LTJ
         8JzA==
X-Gm-Message-State: APjAAAUsAd0OM1xmrFDJon1i2tlba+H5Ms56nAq1wBZpSwtVuENpvVIC
	DzniFIc1zfgB4kGGJ81eyXuf9CqI5Wj9Yq0Hpzk=
X-Google-Smtp-Source: APXvYqzYSXdQHbES1veF0IPzL08vqZmgtaS3F7RZ3R0imvaZZs9RBHt5tnIukkokeMyUxlLyMlqi2YNdvc+jufvM0Mw=
X-Received: by 2002:a05:620a:6b8:: with SMTP id i24mr23566519qkh.9.1577042889356;
 Sun, 22 Dec 2019 11:28:09 -0800 (PST)
MIME-Version: 1.0
References: <509597146.1609359.1577035309915.ref@mail.yahoo.com> <509597146.1609359.1577035309915@mail.yahoo.com>
In-Reply-To: <509597146.1609359.1577035309915@mail.yahoo.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 22 Dec 2019 11:27:43 -0800
Message-ID: <CAMKF1srJV2UFsspUSxbRmOLzkY8u8FYBEB_BWsjaPx-ymamuOw@mail.gmail.com>
Subject: Re: [yocto] Raspberry pi 4 recipe and layer issues.
To: Ed Vidal <develone@sbcglobal.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ed

if you are building on target, you need to install glibc-dev package
on your target as well. or perhaps you can build your image for target
with

IMAGE_INSTALL_append =3D " packagegroup-core-buildessential"

added to local.conf

On Sun, Dec 22, 2019 at 9:22 AM Ed Vidal <develone@sbcglobal.net> wrote:
>
> Hi,
> Testing 1 of the 4 recipes in meta-yosys-tools nextpnr_0.1.bb.
> I tried testing on target rpi4-64 to determine, EXTRA_OECMAKE =3D "-DARCH=
=3Dice40 -DBUILD_GUI=3DOFF  ${S} "
> variable.  In yocto this uses the build directory.  On the target, "cmake=
 -DARACH=3Dice40 -DBUILD_GUI=3DOFF ."
> which is the nextpnr directory.  It appears that yocto uses ninja, while =
the target uses make.  I have copies of both
> CMakeError.log files for target & yocto at the links below.
>
> https://github.com/develone/meta-yosys-tools/blob/master/doc-recipes/targ=
et/CMakeFiles/CMakeError.log
>
> & https://github.com/develone/meta-yosys-tools/blob/master/doc-recipes/yo=
cto/CMakeFiles/CMakeError.log
>
>
> The target builds and installs while yocto fails do_configure step.
>
> The recipe I am testing with the cmd "bitbake -DDD nextpnr" is
>
> https://github.com/develone/meta-yosys-tools/blob/master/recipes-nextpnr/=
nextpnr/nextpnr_0.1.bb
>
>
> This recipe nextpnr_0.1.bb is dependent on a 2nd recipe in meta-yosys-too=
ls layer icestorm_0.1.bb in the same layer.  This recipe creates the RPMs, =
but is failing in QA step.  I use the "rpm -i icestorm-0.1+git0+041c075e4a-=
r0.aarch64.rpm" to test on the target.
>
> Let me know if I can provide any additional information.
> Thanks
>
> Regards
>
>
> Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
>
> View/Reply Online (#47795): https://lists.yoctoproject.org/g/yocto/messag=
e/47795
> Mute This Topic: https://lists.yoctoproject.org/mt/68293684/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [raj.khem@gmai=
l.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
