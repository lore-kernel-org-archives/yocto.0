Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3EDEB64DD
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 21:45:12 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
 by mx.groups.io with SMTP id smtpd.web10.19645.1690494303363139674
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 14:45:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OmkQYCvx;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3172144c084so1501430f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 14:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1690494302; x=1691099102;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8kgnMmjAxI9252BcpOJvWBs/AtcpHRoDmnJ9u7k1CF0=;
        b=OmkQYCvxu5hnHsJR9ruDq19hgAVapB7y69jbS3Xj25FPyptgTrpV/5avRZoMFf57d8
         sLxbS0SpuVZiwiPwhAt9VZXgnHmJuwxtBOaQHQqhICR1oKou+AA8A9Z4Q3DIytBan0h/
         by5b2/8Aylzs9JtqgXeY9xz0Jk7al5AQRG+RY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690494302; x=1691099102;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8kgnMmjAxI9252BcpOJvWBs/AtcpHRoDmnJ9u7k1CF0=;
        b=BqlfKV0Ti4vAliokZ4QI7SGGj6GMo3sOxMBPFJ+s+MpoDWpD4aQXxceTnfA/AX1zbS
         D0xolQccL71uQ4bKV5vNluF+PNRAx+ThZUOA380aBUJPjPfcp3ttWoprDcxmerdoLBnX
         SX3e6+yP7gv3BdLpkvNPo4mAdpvJGRKMICe8NE1XYQax/UW/xXFEK2qdYcdr3vD+4AaW
         8fTG6oc0qAEGcCZzjUnOiMWpyFTZjsam9PE6rl63s2LfdctkptLj3eIZfP6WO4nf8eSu
         QJ6rnMsTXo7hg70wjMY6LpKYD41JEW4pylqa6xA7A8jNPsTGmdbmfAPSlwE0BhwLnnIQ
         W0IQ==
X-Gm-Message-State: ABy/qLY3I1pDA/5U5PG9IsUnWnPoz1DFfk2Mwz0cnTrYqalaLRLhNqnU
	y5no+1VPnuBBgTWj19yQurtK+A==
X-Google-Smtp-Source: APBJJlFcEG2Pz1L4lEZc1S9EbQ4UDtk68JViCDl1Rb3J0f6GvCcyH25gAkPE8dhiSuOCyPbguX2rTA==
X-Received: by 2002:a5d:668b:0:b0:317:7258:8be with SMTP id l11-20020a5d668b000000b00317725808bemr296504wru.13.1690494301646;
        Thu, 27 Jul 2023 14:45:01 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:4e39:f3a8:af2d:87a2? ([2001:8b0:aba:5f3c:4e39:f3a8:af2d:87a2])
        by smtp.gmail.com with ESMTPSA id z3-20020a1c4c03000000b003fd2eba5a9esm5485702wmf.5.2023.07.27.14.45.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jul 2023 14:45:01 -0700 (PDT)
Message-ID: <3dc1a6b270071870a8e7414726becd2c170156e9.camel@linuxfoundation.org>
Subject: Re: [yocto] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3_M2.rc2)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Cc: "alexis.lothore" <alexis.lothore@bootlin.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ross Burton <ross.burton@arm.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>
Date: Thu, 27 Jul 2023 22:44:59 +0100
In-Reply-To: <1775B47FA73CAA51.31298@lists.yoctoproject.org>
References: 
	<0101018994c968db-984564f2-0172-43ae-a91a-82b306fdc587-000000@us-west-2.amazonses.com>
	 <1775B0CA80C59927.31298@lists.yoctoproject.org>
	 <1775B47FA73CAA51.31298@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 21:45:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60669

On Thu, 2023-07-27 at 12:01 +0100, Richard Purdie via
lists.yoctoproject.org wrote:
> On Thu, 2023-07-27 at 10:53 +0100, Richard Purdie via
> lists.yoctoproject.org wrote:
> > On Thu, 2023-07-27 at 00:39 +0000, Pokybuild User wrote:
> > >     A build flagged for QA (yocto-4.3_M2.rc2) was completed on the au=
tobuilder and is available at:
> > >=20
> > >=20
> > >         https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2
> > >=20
> > >=20
> > >     Build hash information:=20
> > >=20
> > >     bitbake: 64bc00a46d1aacc23fe7e8d9a46a126f3a4bc318
> > > meta-agl: 25410a640b879405d4f93585f3d74c328f487cad
> > > meta-arm: cfcc8a4d13c26793ecab2d8da9274eb98b8cb4ce
> > > meta-aws: 86966086b2dfabd7113253bc5647f87fd6d42423
> > > meta-intel: f2bcad2943b11b8c9d9ecdd25551a841ba98eda0
> > > meta-mingw: 92258028e1b5664a9f832541d5c4f6de0bd05e07
> > > meta-openembedded: 74e70284acb2eb2f2a47a1ab1aa5ee0928d46344
> > > meta-virtualization: c5079557091b215663458807a8f617752614a6bd
> > > oecore: 6ac110c8954e5fdb71d5495e3eebc1ca3958dc19
> > > poky: 3eff0eb5ea77de20d85a2ffc64652579cbd7755c
> > >=20
> > >=20
> > >    =20
> > > This is an automated message from the Yocto Project Autobuilder
> > > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > > Email: richard.purdie@linuxfoundation.org
> > >=20
> >=20
> > The regression report for rc2 looks better!
> >=20
> > https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2/testresults/=
testresult-regressions-report.txt
> >=20
> > I particularly liked:
> >=20
> > """
> >   Additionally, 124114 previously failing test(s) is/are now passing
> > """
> >=20
> > :)
> >=20
> > It does more clearly show where changes occurring which is really
> > helpful.
> >=20
> > Not sure why the duplicates appeared in=C2=A0
> >=20
> > https://autobuilder.yocto.io/pub/releases/yocto-4.3_M2.rc2/testresults/=
testresult-report.txt
> >=20
> > it appears the arm build was triggered twice from the same a-full:
> >=20
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5203
> > https://autobuilder.yoctoproject.org/typhoon/#/builders/82/builds/5204
> >=20
> > and I have no idea why it did that. I'd suggest we just filter the
> > duplicates messages out the final report.
> >=20
> > I am a bit puzzled by the ltp test counts and need to talk to Ross
> > about that.

Just to further update, it looks like it depends which worker the arm
builds ran on as to which set of test results we get. If it was
ubuntu2204-arm-1 it has ~1000 syscall tests, the ubuntu1804-arm-1 has
~250. If I increase the command without output timeout from 300s to
600s that changes to ~500 but some tests still timeout.

We really need to warn if the timeout occurs so I'm working on changes
to do that as well as trying to work out how long the tests really
take.

Ultimately we may decide to disable some tests.

Cheers,

Richard



