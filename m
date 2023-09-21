Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DF7CCD493A
	for <webhook@archiver.kernel.org>; Thu, 21 Sep 2023 01:33:17 +0000 (UTC)
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
 by mx.groups.io with SMTP id smtpd.web10.6614.1695259987435434382
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 18:33:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bePpNaUd;
 spf=pass (domain: gmail.com, ip: 209.85.161.46, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-57b4567dda9so271384eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 18:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695259986; x=1695864786; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Of99AN2jrigzadnhktZqrXjZtXXrkCX5aNcejtZ1bhg=;
        b=bePpNaUdjgZV/kldwxCKddORCw9C4JO4zUT9JP2q87XyMu/w5hh4oMT7WWAzIICWC5
         VdD0e7XuSj3/eoLdGlhPNkQnYI/Fkd3yc3+DPSYjREpn2qA/SYlEv0qHLFz+QTkQsOjH
         eiZSfhP3jwqr3mtfecIEPQaM9d+2F4Zr3ZVYMKjEs3TUq19l0GGjssEledfVmJxp8i4r
         05h0f6cjorQQkuh9N/2OHhwqQm4iXjyHDRLMHTc5Cfm2sTjj+S3UCzqXqWIEWr+Advt3
         cAguV/g/CW1pi2egyQM4bm29oawKbEZ1U1W+qM9h2q1l9cFsyzUVxwExHr2JJH2e+CcO
         Ha7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695259986; x=1695864786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Of99AN2jrigzadnhktZqrXjZtXXrkCX5aNcejtZ1bhg=;
        b=kj/JfK8bh/T7+Xp0OD5mFkAUEo/d4kOLBT0YsZBra4oURyuLG0cp/kR+/B7gfmwrBV
         oVTM50vnHuSx1QOLRIpilckTv2vag5u+CzqP4FW+wgoeQvq+jP9iqfAn46UEggBiHGbv
         X1Slf8PByP+aqBnAVC5P2opK2Tb9VykRu+i9oW5/RWg2bFGPBgKk/KiXx42N/909X09D
         J7DQiigpb9jPcdt13wQoy3U3Ne88OxGmq1iDM8BRoqaNIaq2DJG8H3viBpj7mOOOPkMJ
         N1GZJC3bz3z/EEceSUKLbiHOA4U/hlov8NnACjCpRr0Qaw4yvzSYpo7b6aB8tZBhdSXY
         4UnQ==
X-Gm-Message-State: AOJu0YxF+OX0f6AzX9P/2CN++U2ROYTz+m1EtnjudppoP7G2OdJWJEG6
	y65wivcrl35jX+UokbjIykxBeIdZLgKWFjLmINE=
X-Google-Smtp-Source: AGHT+IHjkVZTw297q+xuVhGj8KSuD1X4N24kdGyuik92yCm3EYG2jUcF+3iKynIJXCQxvKwx1ygjs/GHnEMTqp/g/is=
X-Received: by 2002:a05:6870:a9aa:b0:1c0:1caf:3324 with SMTP id
 ep42-20020a056870a9aa00b001c01caf3324mr4897920oab.44.1695259986524; Wed, 20
 Sep 2023 18:33:06 -0700 (PDT)
MIME-Version: 1.0
References: <cd75554b-294d-5ea3-ea0a-d8120390c757@ibeeto.com> <2023092021160802de53c6@mail.local>
In-Reply-To: <2023092021160802de53c6@mail.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Sep 2023 18:32:40 -0700
Message-ID: <CAMKF1sog1=8TJ+DruZc5RCkuvTUOZtM4gRHCwnN-YfU5HjhK5w@mail.gmail.com>
Subject: Re: [yocto] Forcing uninative?
To: alexandre.belloni@bootlin.com
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Sep 2023 01:33:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61061

On Wed, Sep 20, 2023 at 2:16=E2=80=AFPM Alexandre Belloni via
lists.yoctoproject.org
<alexandre.belloni=3Dbootlin.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> On 20/09/2023 13:59:54-0700, Rudolf J Streif wrote:
> > I need to resurrect a Yocto Project build environment based on honister=
. My
> > dev system has since moved on to a newer glibc etc. As expected, I am
> > getting this warning
> >
> > WARNING: Your host glibc version (2.37) is newer than that in uninative
> > (2.34). Disabling uninative so that sstate is not corrupted.
> >
> > The distro's gcc now is 13.2.1.
> >
> > Now the following packages do not compile anymore:
> >
> >  * rust-llvm-native : which there is a patch (applied to kirkstone):
> >    https://lore.kernel.org/openembedded-core/CANPvuR=3DG1NxfJb67xD19FoN=
h4eTDsTM4TDyF+vDbh6crNH=3Ddgw@mail.gmail.com/T/
> >  * libdnf-native : because std::uint32_t does not exist anymore
> >
> > I don't care about the sstate as I am creating a new one. However, how =
can I
> > force uninative to be used and would it even solve the problem (I would
> > think so as the idea of uninative is to isolate the build from the host
> > libraries)?
> >
>
> You should rather use buildtools. You can install those with
> scripts/install-buildtools. The -r option is there to allow you to
> select a target release. You can try something like:
>
> poky/scripts/install-buildtools -d ~/YP/buildtools -r yocto-3.4.4 --insta=
ller-version 3.4.4
>
> This will then tell you to source buildtools/environment-setup-x86_64-pok=
ysdk-linux
>
> This should be enough to be able to build old releases.

real issue would be getting native packages compiling with newer
compilers, unless you are ready to do such backports this
is going to be a problem. I would suggest using a supported/tested
distro for honister release inside a VM or container to build it.
>
> Regards,
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61058): https://lists.yoctoproject.org/g/yocto/messag=
e/61058
> Mute This Topic: https://lists.yoctoproject.org/mt/101487564/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

