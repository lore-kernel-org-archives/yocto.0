Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C6B3C63684
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web12.13890.1648918298853496092
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 09:51:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OXEhKeLi;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id f3so4307515qvz.10
        for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 09:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=6Fa4Qk7K9qRgYFTMxXER7RNVj14Qbf/4uRQPDcqnqKE=;
        b=OXEhKeLiiPRHpZNqK6y6IBpH85jJWFtxexCW5vusfpmbiBLz4rt2CJCaaDJTkl7+nE
         EpakLf9GJQLR+5Qh+c9BUAq2C0hAErrNOpVjoCE+tNjZOM7uMn2ZRy7beZYjv38bxUnv
         UOcP6inR1tgzp+77rJMLR4ey7wdBix8oqZ/1AFJFK5wW4PIftRlQ4mdzxvB+RrrNLDOE
         Q30qff9hxCG0XeLWbtAyMflnKkO41KxVcqxlZKOYy7NUVb7lHlECkb8b2DuIFltaKvJX
         /nKFs/4hzJhb5mBci/CM8eiuMU148BN5vXGMz0SaHJ2Yqa7i/yyyKWa2Y0BY02aQE+9q
         BSaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=6Fa4Qk7K9qRgYFTMxXER7RNVj14Qbf/4uRQPDcqnqKE=;
        b=DnzYNHy2bfsDZUNIRAjX3Sw2UnypDpFvwI32wRzWBwbVbMKMGgQnJgt7keR4RxUOVU
         upV1ZKt9CXUGpSyGX+TPtdyfE59bl4p134wICG8UWJojyyzLVCXMvhi7IaJk3XRACdQ2
         1sYbrU7em/JNuHwAVdiDCELcqE8qBUq7WKhClFLhi9nkr5rUOptr019+F2FpivQyY9zl
         18r6GnREtgL3cOKfsB9xk7ZDaCp7bcs049lxTFcGl57l4Li8opI9vpnLrBoN+rrHRcNS
         o15TxQkjHG23B73D1BRe5DB19Arg2lxU9PP1dvryuzLJebm3DRqk1Pq2eT5Fz4066Wn6
         eA9Q==
X-Gm-Message-State: AOAM530SwTU0kWDcpV2z6aPU5QJoXa7FSISLI80xe+MyPUmKKHYeyUuM
	FLcEIz3PRHkhH/KWSM3l0A/3IHJwyiAzj1An1Md75NyTKTFQVw==
X-Google-Smtp-Source: 
 ABdhPJyLqC8O6Km3MRDSREJExfqTnxvY2CXb2ggJNODCD2UOldZJyRNgN6NmQbitw4XUeN5+OTwwkTtu+z+WXSxWCvc=
X-Received: by 2002:a0c:f9cc:0:b0:443:cec3:c9b5 with SMTP id
 j12-20020a0cf9cc000000b00443cec3c9b5mr980549qvo.36.1648918297854; Sat, 02 Apr
 2022 09:51:37 -0700 (PDT)
MIME-Version: 1.0
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
 <16E1E0852A508284.15950@lists.yoctoproject.org>
 <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
 <CAMKF1sqsAEdLEtD6c_vnoNX1FXBZteiDuuMyEiFvMZ4i7n3AXQ@mail.gmail.com>
 <9bb492b8e60e2ba16b978016203341a7@vivaldi.net>
 <CAMKF1sqa9K8XJ512VByqDkpPLtG7c7OkvoDsVLysVhukN2bFxA@mail.gmail.com>
 <72f5807e448949cd54a28fad6ecf64ff@vivaldi.net>
In-Reply-To: <72f5807e448949cd54a28fad6ecf64ff@vivaldi.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 2 Apr 2022 09:51:11 -0700
Message-ID: 
 <CAMKF1srDU9GazQChO-wSuCbe+1QiXFBpwNFv8oKUG2LrTwwkjw@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56645

On Sat, Apr 2, 2022 at 9:37 AM jchludzinski <jchludzinski@vivaldi.net> wrot=
e:
>
> I=E2=80=99m actually trying this on an RP4 running Raspbian.
>

Oh I see. we do support aarch64 as build host, so if you are trying
64bit OS on rpi then it should work
although, rpi4 may not have enough muscle to build, perhaps using SSD
with rpi4 might help a bit

So find out if rpi4 is running in 64bit mode if not then building on
armv7 might have issues.

in anycase try setting SDKMACHINE =3D "i686" this should get you past
this particular error, there might be more after it.

Fixed when x11 is not in DISTRO_FEATURES:
$ bitbake wxwidgets
ERROR: Nothing PROVIDES 'wxwidgets'
wxwidgets was skipped: missing required distro feature 'x11' (not in
DISTRO_FEATURES)


> On 2022-04-02 12:15, Khem Raj wrote:
> > On Sat, Apr 2, 2022 at 1:47 AM jchludzinski <jchludzinski@vivaldi.net>
> > wrote:
> >>
> >> $ git clone git://git.yoctoproject.org/poky.git
> >> $ cd ./poky
> >> $ git checkout yocto-3.4.2
> >> $ cd ..
> >> $ source ./poky/oe-init-build-env
> >> $ cd ./build
> >> $ time bitbake core-image-minimal
> >> ...
> >> ERROR:  OE-core's config sanity checker detected a potential
> >> misconfiguration.
> >>     Either fix the cause of this error or at your own risk disable the
> >> checker (see sanity.conf).
> >>     Following is the list of potential problems / advisories:
> >>
> >>     Specified SDKMACHINE value is not valid
> >>
> >>
> >> Summary: There was 1 WARNING message shown.
> >> Summary: There was 1 ERROR message shown, returning a non-zero exit
> >> code.
> >>
> >> ________________________________________________________
> >> Executed in    3.92 secs    fish           external
> >>    usr time    1.07 secs    9.77 millis    1.06 secs
> >>    sys time    0.18 secs    2.96 millis    0.17 secs
> >>
> >>
> >>
> >> On 2022-04-01 18:09, Khem Raj wrote:
> >>
> >> On Fri, Apr 1, 2022 at 2:02 PM jchludzinski <jchludzinski@vivaldi.net>
> >> wrote:
> >>
> >>
> >> But obviously commented out.
> >>
> >> On 2022-04-01 16:43, jchludzinski via lists.yoctoproject.org wrote:
> >>
> >> There's this:
> >> #SDKMACHINE ?=3D "i686"
> >>
> >>
> >> OK it should be ok then. Can you describe your steps to setup the
> >> system?
> >> maybe there is some caveat
> >>
> >>
> >> ---John
> >>
> >> On 2022-04-01 16:22, Khem Raj wrote:
> >>
> >> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via
> >> lists.yoctoproject.org
> >> [1 [1]] <jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
> >>
> >> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
> >> host on the same RP4. Admittedly, a not practical platform for
> >> this
> >> purpose but it should work.
> >>
> >> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
> >> I've tried simply using the default setting and end up with:
> >>
> >> _ERROR:  OE-core's config sanity checker detected a potential
> >> misconfiguration._
> >> _    Either fix the cause of this error or at your own risk
> >> disable
> >> the checker (see sanity.conf)._
> >> _    Following is the list of potential problems / advisories:_
> >> _ _
> >> _    Specified SDKMACHINE value is not valid_
> >>
> >> I've tried editing ./conf/local.conf:
> >>
> >> MACHINE ?=3D "qemuarm64"
> >>
> >> #MACHINE ??=3D "qemux86-64"
> >>
> >>
> >> It's complaining about SDKMACHINE setting which is a separate
> >> variable, can you check your local.conf if it's set to something
> >>
> >> But this accomplishes nothing. Needless to say, I'm a yacto/OE
> >> newbie, so any suggestions would be greatly appreciated.
> >
> > are you on a x86_64 host? Secondly try to uncomment SDKMACHINE setting
> > in local.conf
> > and see if it helps. Also check if your default shell is bash or dash.
> >
> >>
> >> ---John
> >>
> >>
> >> Links:
> >> ------
> >> [1] http://lists.yoctoproject.org
> >>
> >>
> >>
> >> Links:
> >> ------
> >> [1] http://lists.yoctoproject.org
> >>
> >>
> >>
> >>
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >> Links: You receive all messages sent to this group.
> >> View/Reply Online (#56618):
> >> https://lists.yoctoproject.org/g/yocto/message/56618
> >> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/5071304
> >> Group Owner: yocto+owner@lists.yoctoproject.org
> >> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> >> [jchludzinski@vivaldi.net]
> >> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
> --
> NULL

