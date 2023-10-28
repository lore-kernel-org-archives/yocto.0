Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30AD0C0032E
	for <webhook@archiver.kernel.org>; Sat, 28 Oct 2023 08:30:06 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web10.14810.1698481803800680126
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Oct 2023 01:30:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=O2EqqvRX;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40842752c6eso21976115e9.1
        for <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 01:30:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1698481802; x=1699086602; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GimLaJS6M0E25RC7hU8dVto/65iuBk61BUA6xYSwH8Y=;
        b=O2EqqvRXglPe3hw0joTDXuhEv1m1T49rA+4OJKtGZVcvxJrG+T0DDXVUR9dwdhygiE
         W5HuFtHlFwijyjNxadR/krmjJZl3RX3YsafAJp6nCNUwhPGBy8mUZ55WbjsrEcpriN9k
         kEQIWu576z67kYRlUnT9IOCb4jnUsy+CQ4WmM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698481802; x=1699086602;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GimLaJS6M0E25RC7hU8dVto/65iuBk61BUA6xYSwH8Y=;
        b=Zlc5LOEO5eeHEe1rL79ue4XqLW5vIFo3ntIlKDMxXk4OLibNxn5mGVdRg0/R4BA2pM
         KiKUxIvPBeHplc5ag4M4YgZLB5j0ZxVbLn9JxEi7aWsgJobmCFM4KKSNNCtRqASuUnDp
         zLwhgdefWkwmh/3fPpIcq3NeIVRjb56SsmmJMWUrccT+4pWwe64xyXsSxXjFHFg8X885
         r2Gf1bj7aoplpMgA68Q6WtC3UL7SqJfx9R8+ok9FEb6j0t7M+lLLTUHxDlGyLlRh6G+k
         fLjERjcd5rws0Ei5CTuvlijWSfhAjzwb3X/KN46JNBbzqiNjvECEErkbg6P/rg2tcxXj
         jrHA==
X-Gm-Message-State: AOJu0YyvXR2ytJe8mlSziukCeRwpXNTHTIwE9pm8+j99aotGR8uCfJtm
	gzDGkjWVUBozANRpiqkEgGn0xQff+q8KWvqVL+E=
X-Google-Smtp-Source: AGHT+IFg/6M1xPjgF0Uyv0e5razKwesP4WJENsn4f6qIoKTqs1DvbzJiT/36HRhIQDJTAuJMION0Gg==
X-Received: by 2002:a5d:64ce:0:b0:32f:7b99:2ed with SMTP id f14-20020a5d64ce000000b0032f7b9902edmr728992wri.22.1698481802291;
        Sat, 28 Oct 2023 01:30:02 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:8d0f:be40:40a9:c121? ([2001:8b0:aba:5f3c:8d0f:be40:40a9:c121])
        by smtp.gmail.com with ESMTPSA id d17-20020adfa411000000b00326b8a0e817sm3438101wra.84.2023.10.28.01.30.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 01:30:01 -0700 (PDT)
Message-ID: <ac4e63b177d5612c03c10581b55fc4961dc93770.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-3.1.29.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Date: Sat, 28 Oct 2023 09:30:01 +0100
In-Reply-To: <CAOSpxdZzXazeoOv=hQBSC+cyyVsiqOtfqeVqX2Hr4XEUKN=OSg@mail.gmail.com>
References: 
	<0101018b732bfffb-12002d52-9058-4b77-ab53-1fa728765bda-000000@us-west-2.amazonses.com>
	 <CAOSpxdZzXazeoOv=hQBSC+cyyVsiqOtfqeVqX2Hr4XEUKN=OSg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.48.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Oct 2023 08:30:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61508

On Fri, 2023-10-27 at 12:38 -1000, Steve Sakoman wrote:
> There is currently a known reproducibility issue with the vim-common
> package.  In my opinion nothing that should hold up the release.
>=20
> Details:
>=20
> It seems that the last sstate build of vim was done on an Ubuntu 22.04
> worker and recent changes there seem to result in an occurance of
> "charset=3Dcp1251" whereas builds done with the buildtools tarball yield
> "charset=3DCP1251"
>=20
> See: https://autobuilder.yocto.io/pub/repro-fail/oe-reproducible-20231024=
-kys9f0xn/packages/diff-html/
>=20
> The reproducibility build for 3.1.29 was done on alma8, so this
> difference resulted in a build error.
>=20
> I reran the reproducibility test on an Ubuntu 22.04 worker and as
> expected it passed:
>=20
> https://autobuilder.yoctoproject.org/typhoon/#/builders/117/builds/3827
>=20
> I will be sending an autobuilder helper patch to use buildtools
> tarball with Ubuntu 22.04 and this should prevent future occurrences
> of this issue (once the version in sstate is no longer valid)

So we understand why master doesn't see this? I'm still a bit worried
about why this difference is occurring.

Cheers,

Richard

