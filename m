Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB83C41513
	for <webhook@archiver.kernel.org>; Thu, 19 Oct 2023 12:55:30 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web11.26641.1697720126587872136
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Oct 2023 05:55:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ACpGc4Pw;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.167.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-507c5249d55so3462521e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 05:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1697720125; x=1698324925; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7eC1bm1XdciPb9r98oWLSk+ohi0Kem5JjlSH49pVVBE=;
        b=ACpGc4PwWbcok1W3yYc96I8rR6/PBXW6IV7xd7RWsPIbX0w5LKCw75PsNrVhIvnHrY
         HOkm7ZUgh4CIU35Vdclwu9HcLu6FVIrNenS2A3UOF1RTFUCD0sJ4dg31JlWVgYMoaCQj
         +J+NjiZhruQXDrLjOCh/ZWlHw9z5XcoZm1rno=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697720125; x=1698324925;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7eC1bm1XdciPb9r98oWLSk+ohi0Kem5JjlSH49pVVBE=;
        b=U1GcF2mB4xU4GHhbwyDy6IbCf/e+t904c48lj3I6+6EHWlx6pSF6LNE5AEPfaWbj2W
         FKY+V5gD/lp9whDCpBIm++zla37hL9Mpx88/0lDhM6cQjrARaXkQZu9hLD8wMgKzGNNZ
         xqJtyuuov94X0atTYHZtk3sFOpCE19l/lNax7qRJAFxsMbOGBSsORkH/jA6/CRepLLNe
         pLilLBBX8lFE8ZSh1St6AnrYdI57zvIFESjqErVQXSDkDvaj9CHQ7JESh4HaeP8hld47
         64ILn94/qok6nUcqgCd1oax//z2OTD9lf20FnJhYVHSjs1n9XuDsNVXoEWmZn4MzAfoh
         mAHw==
X-Gm-Message-State: AOJu0YzOCWIAdzO2fY2yQZ/gb3KLBgOk6u3wChHxqMUySRcHJilwufQD
	bogoKjmXn3byyrLrKHfKWAOJ6A==
X-Google-Smtp-Source: AGHT+IGtRp667PP6kYrA6dDGd48ZA/5eytzXPC1+txjKRF7eQmS03HuU3IfVOArrILiRqclH0v7zMg==
X-Received: by 2002:ac2:41d5:0:b0:501:bf37:1fc0 with SMTP id d21-20020ac241d5000000b00501bf371fc0mr1353769lfi.33.1697720124639;
        Thu, 19 Oct 2023 05:55:24 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb? ([2001:8b0:aba:5f3c:9ec8:2948:ce65:9cfb])
        by smtp.gmail.com with ESMTPSA id az30-20020adfe19e000000b0031fb91f23e9sm4608093wrb.43.2023.10.19.05.55.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 05:55:24 -0700 (PDT)
Message-ID: <821882923fc13c45b13a5e5bff79e8e2783f5970.camel@linuxfoundation.org>
Subject: Re: [yocto] QA notification for completed autobuilder build
 (yocto-4.3.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexis =?ISO-8859-1?Q?Lothor=E9?= <alexis.lothore@bootlin.com>, Ross
	Burton <Ross.Burton@arm.com>
Cc: Yocto discussion list <yocto@lists.yoctoproject.org>
Date: Thu, 19 Oct 2023 13:55:23 +0100
In-Reply-To: <39978441-6f8d-48be-92db-00cd66e13c00@bootlin.com>
References: 
	<0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
	 <a97b6ea3-0478-4cb3-a506-ad19ac7a6f86@bootlin.com>
	 <90D7FE40-32EB-4D67-B099-9E0C764FC258@arm.com>
	 <39978441-6f8d-48be-92db-00cd66e13c00@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Oct 2023 12:55:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61415

On Thu, 2023-10-19 at 14:28 +0200, Alexis Lothor=C3=A9 wrote:
> Hi Ross,
> On 10/19/23 13:04, Ross Burton wrote:
> > > On 19 Oct 2023, at 09:36, Alexis Lothor=C3=A9 via lists.yoctoproject.=
org <alexis.lothore=3Dbootlin.com@lists.yoctoproject.org> wrote:
> > I just skimmed your report and have some feedback to hopefully make it =
easier to read in the future.
> >=20
> > I=E2=80=99d suggest sorting the output in order of importance.  For exa=
mple, this is a section that I really don=E2=80=99t care about:
> >=20
> > Match:       sdk_core-image-sato_x86_64_fvp-base_20230910083055
> >              sdk_core-image-sato_x86_64_fvp-base_20231017222150
> >=20
> > Put those at the bottom, or even better collate them into a single sect=
ion where there have been no changes.
> >=20
> > Similarly:
> >=20
> > Match:       runtime_core-image-sato_qemux86_20230911011430
> >              runtime_core-image-sato_qemux86_20231017223736
> >     Additionally, 1 new test(s) is/are present
> >=20
> > I guess marginally more important than identical results, but =E2=80=9C=
there are new tests that passed=E2=80=9D isn=E2=80=99t very interesting.
>=20
> Indeed, not so useful and hiding the real content at the bottom
>=20
> > Regression: oeselftest_ubuntu-22.04_qemux86-64_20230911011940
> >     oeselftest_almalinux-9.2_qemux86-64_20231017221342
> >=20
> > Should they have matched? The host distro doesn=E2=80=99t match and thi=
s matters for some of the tests, as some distros don=E2=80=99t support some=
 of the selftests. In this case specifically, there are seven regressions a=
nd six of them are specific to the host changing, which has the side-effect=
 of hiding the one actual regression.
>=20
> Yeah, that's a point I have been struggling with when starting to update =
those
> tools. The initial assumption I have started working with, after discussi=
ng the
> matter with Richard (see [1]), is the following:
> 1. MACHINE _must_ match between base and target
> 2. Different HOSTS _can_ be cross-checked
>=20
> But the issue you are pointing tends to show it does not work well in som=
e
> cases. I will have to do some tests to see if dropping 2. reduce this noi=
se
> without loosing valuable data, or if we need to find something smarter

What the autobuilder does is either runs one selftest on a random host
for q-quick, or for a-full it will run five selftests, one for
"centos", one for "arm", one for "ubuntu", one for "fedora" and one for
"debian".

Ideally we'd therefore compare debian to debian if we have any choice.
It is a question of finding the closest matches. That is hard in code
though whilst keeping it generic.

Cheers,

Richard

