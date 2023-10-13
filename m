Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5D2CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 12:33:40 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.37176.1697200416597325823
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 05:33:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=F77ph2+e;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-31c5cac3ae2so1868613f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 05:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697200415; x=1697805215; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2bIPImQj2jsr5OMuv5uJOCHBcgU8tHJbowN8mbqIb4Q=;
        b=F77ph2+ebmxPq0gRTweg4MDkrhe7Ay6PSIVz+sTvlw3PLCJ3h+mrdwznDc2JLD7G26
         9dHkrzPERwoTV18aRVYjJfO7w3rgO3bTQzoLHP2OG1bH2htvYUnRC+Vz3Ongyo2esP0N
         i+G6LrrTCaJe+JdqnM9vg5apTCW9gj0c9MCYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697200415; x=1697805215;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2bIPImQj2jsr5OMuv5uJOCHBcgU8tHJbowN8mbqIb4Q=;
        b=X2+cX+iVC3SeKbvOs3txCJaDxWVm5JJ+sCq7YPad3B+NWaxRx3PvdYdjySGSUuEkp7
         NagGsVYMZfbcL4+tvrUvbK/0T6ghs3aUFCRQhXHEmPu1YFkbfYkSZZHI/EtPXTs+4g3w
         1Uyq08L1sAA4bVkB3gsVCz1lWxNcPfehb8YnvAWl1tJDr/k5D09O51mLwl9/szMB6Omj
         XfHi7mIm/bSBM32cVDL3PfBm4TjfZo3dhFbtiB5NLXm7D4jzpB0rtCcddh5FMGx8zx+f
         fjvFOKNSBeTMZ3H+X/am/G/5e/BbzVb4hEhvt0dH+9UUoZ95Gs+/fsfkgn5Th8e48lf6
         KrWA==
X-Gm-Message-State: AOJu0Yy1yKeM/fDqQK8DguWAGSd8BjMedRVDI/PTRLgpi3INJlikH1Ku
	O1gbbSMhI1FGyHgsV+K5KLCWdg==
X-Google-Smtp-Source: AGHT+IEQRDTRpfnnMN7COesDEabNFXDp96ITN/GS7Eh/w/9cIaqwW54Zgp/xdUwT5qfhUxpKwnoq3A==
X-Received: by 2002:adf:e44b:0:b0:32d:9d0e:7841 with SMTP id t11-20020adfe44b000000b0032d9d0e7841mr1062473wrm.6.1697200414827;
        Fri, 13 Oct 2023 05:33:34 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:2c2a:1925:586b:5a77? ([2001:8b0:aba:5f3c:2c2a:1925:586b:5a77])
        by smtp.gmail.com with ESMTPSA id n14-20020adfe78e000000b0032196c508e3sm20633892wrm.53.2023.10.13.05.33.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 05:33:34 -0700 (PDT)
Message-ID: <2d442abb79e2d6311534a0f13855f05ef69a7e42.camel@linuxfoundation.org>
Subject: Re: [yocto] are there any plans for a RISC-V reference board?
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Josef Holzmayr
	 <jester@theyoctojester.info>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Date: Fri, 13 Oct 2023 13:33:33 +0100
In-Reply-To: <943d42b1-8628-e247-77b1-692f5ada7d5f@crashcourse.ca>
References: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca>
	 <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com>
	 <943d42b1-8628-e247-77b1-692f5ada7d5f@crashcourse.ca>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 12:33:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61332

On Fri, 2023-10-13 at 03:09 -0400, Robert P. J. Day wrote:
> On Tue, 10 Oct 2023, Josef Holzmayr wrote:
> > It has been discussed at numerous occasions. The main blocker is: we
> > need a commitment for the maintenance. So if a high-ranking member
> > decides to push forwards with this and allocate resources, or a new
> > member from the RISC-V ecosystem steps up to make it happen, then
> > the project is all ears.
> >=20
> > Greetz,
> > Josef
>=20
>    Ask and ye shall receive. I just got the following private note
> from jiaqi.dong@starfivetech.com, who obviously saw my earlier post
> (and agreed to let me reproduce his response to me to the list):
>=20
> > I think VisionFive 2 is an appropriate reference board. We offer
> > Long Term Support for JH7110 and VisionFive 2. After being upgraded,
> > VisionFive 2 with big improvements in the processor work frequency,
> > multimedia processing capabilities, and scalability. Since August of
> > last year, we have continued to promote the ecosystem of VF2, it has
> > successively adapted to Deepin OS, Ubuntu OS, UEFI EDK2, OpenWrt,
> > PPSSPP=E2=80=A6you can check out the RVspace forum. So we would like to=
 work
> > with the developers and provide LTS if there are specific project
> > requirements.
>=20
>   Sound promising?

The project has been talking to the RISC-V Foundation for a while about
this. The tricky part is that adding official support for a new
architecture isn't a cheap or easy undertaking for the project.

The autobuilder for example has hardware to pay for as well as
bandwidth and power costs. If we add a new architecture, the test
matrix is larger and the costs rise. There is also the increased human
load of more tests, more failures and more work to do.

Intel, AMD and ARM are platinum members and this partly allows for the
architecture support. MIPS and PowerPC are on the list for legacy
reasons and their testing scope is being scaled back.

We've discussed and agreed that adding a new architecture with all the
work it entails is at least around a platinum membership level of
impact for us. Therefore, to have official support of a new
architecture, we've asked that there be support either from existing
membership or new members of around that level.

When you look at the details of what you get, that price tag is
actually quite reasonable for the level of automated testing performed.

We've been clear about our position on this for a while. There are
actually discussions in progress about it with both the foundation and
RISE and I have some reasons to be optimistic but some of this has been
going back and forth for a number of years. FWIW, personally I would
love to see the support officially there and it in our test matrix.

Cheers,

Richard


