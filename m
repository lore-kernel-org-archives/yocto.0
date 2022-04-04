Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C603C4707F
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:41 +0000 (UTC)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
 [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web08.34803.1649076361637919401
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 05:46:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=zyLx4oGO;
 spf=pass (domain: burtonini.com, ip: 209.85.221.54,
 mailfrom: ross@burtonini.com)
Received: by mail-wr1-f54.google.com with SMTP id c7so14443461wrd.0
        for <yocto@lists.yoctoproject.org>;
 Mon, 04 Apr 2022 05:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XBWuHXaA6PF/B4K4rqpJ42jjMo0qIokA2efLp1fLnoE=;
        b=zyLx4oGOQGNHvxtVl5F976kD54L9wteYGLaBbPp54uPavCqNQnwY4V7htp+R5VVK0u
         7lrU6R95Gk8tcGmUvGhzjKmdBFNYZlutBG+An1qZZBlx64B51y5ns0uJBYlDbZ4ankM2
         Tdu/pAaAbf19QzwY+DyXgZyhTvXoYlPx1nlD2SlJ8tT7PA59yvzsxBV8pwSouqj8eDNE
         84X6NSPL+R/EMC+JTNQf5G4CVkGv7VONfd/kyvVlqa+63xi3b0R1tZeK6EpSGiZZwtLk
         ffRzhY8e/UHZAoPjGOc6301HdQuNuq4MNCT7JNgdzxR1PLqYqvZrk39W55it6vbfEfKO
         Tf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XBWuHXaA6PF/B4K4rqpJ42jjMo0qIokA2efLp1fLnoE=;
        b=D6K30/nAIOevxzPlHdYl72egVxlxLAljLJsgz6KhCXxK6m4C0qH/f3ZCPuWGoJ5VKa
         RW1e6KNS2OV1LCH3F0e2W2GEnh6AvsDgyXZWFhAOLiQOCadnM2y5th5Gme/uuE0Cg1x3
         mBa8XNrM//qLeAIl7mqAkfSAqgYXzJodtsvQ6YtzBTCNCj+9eEVqtqxCnBdZ57RfdIrc
         tXRtCUaBTcJb5/CO3gOLwLkwrzEqLAHUmsS1AYXjMy/OFq+0YQmIQ3fAb5uMq83Rvshn
         LSkg9BBEmuYFPE3TKi+kNcCaguBz4Oy/UKvhwbAhf7ZaWZr2DbSo5Uw1k1be1WiRF2Wj
         1rhA==
X-Gm-Message-State: AOAM5338eqI+3+R+pY4H4EmHd177eEt2n9I94k5uc+RIp+Qn8ABPhkqP
	0WIp7uBf8ycDvEU03jKjHacywvEO8Eg87zleWrF+Sw==
X-Google-Smtp-Source: 
 ABdhPJzEgStD3i65/mssvDpHyN3J9GiK0xMZ6OzesJlEH97J9ZJWDK55kxC3ARZGRvcStZ9ddZDLjDSiGZu1RIegvB4=
X-Received: by 2002:a5d:47a8:0:b0:204:72:7051 with SMTP id
 8-20020a5d47a8000000b0020400727051mr17291538wrb.451.1649076359791;
 Mon, 04 Apr 2022 05:45:59 -0700 (PDT)
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
From: Ross Burton <ross@burtonini.com>
Date: Mon, 4 Apr 2022 13:45:48 +0100
Message-ID: 
 <CAAnfSTscZ9RXdbw3iVuCZwRPLfcTBv6fxDd-Qx+GEHn-OWDEVA@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski@vivaldi.net
Cc: Khem Raj <raj.khem@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56656

Is Raspian 32- or 64-bit?  We don't suppose 32-bit arm SDKs.

As Khem said, set SDKMACHINE to i686 explicitly to avoid this.  Note
that compiling on a RPi4 is *very slow*.

Ross

On Sat, 2 Apr 2022 at 17:37, jchludzinski via lists.yoctoproject.org
<jchludzinski=3Dvivaldi.net@lists.yoctoproject.org> wrote:
>
> I=E2=80=99m actually trying this on an RP4 running Raspbian.
>
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
> >>
>
> --
> NULL
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56644): https://lists.yoctoproject.org/g/yocto/messag=
e/56644
> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/1676615
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross@burtonini=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

