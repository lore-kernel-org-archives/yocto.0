Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1759CFE5215
	for <webhook@archiver.kernel.org>; Fri, 24 Apr 2026 12:11:17 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19787.1777032670530399192
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Apr 2026 05:11:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZmnN4b0v;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4838c15e3cbso72689845e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 24 Apr 2026 05:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1777032669; x=1777637469; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S9F3ZuaijNApii+rUkqjrb7xORJxcw+V7dbvhH7uFMA=;
        b=ZmnN4b0vxIjRzjozSy2Bt48f+xBDwz2xtLaniOa7WCRcMlqD7PtFYc/CEeUs5q8O0/
         tnhGfjwiNuKMawj6Xva4/6/KNxgh+PENuoq2u2OtzsaFtuScovl2U/V2LhPDsywo4TQX
         0/9R3P5hfTXn9gwKruTGN1am6OkT1qmtWnb7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777032669; x=1777637469;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S9F3ZuaijNApii+rUkqjrb7xORJxcw+V7dbvhH7uFMA=;
        b=PmnecuQS3I4ZauF0bWph0HyaNaRIcxDyibTZYQMLBHY/txmwtnVvkKvBzkhYTlw682
         XxQlbMhcwRZDjuifYVEnEhy7+jWXPvspzx4moejQc5krscbZccGdWXfiix5arItTtuZB
         YzpiU4SWSa1suAEsHOpyCR6lTqHmcanzcFAg29b4FwAi0uppIhkZvIFd8VWRFczLjvwR
         lBixJVhnGK0lr4yupH+0Dupy05PHT0QT2B1KGeV/429o/ULexKFVB+4bFl2NUsBXyTKe
         sRhT8hFhQHEbnfAjwYcBorWEIHZpaRIxJdE8inOL4RiupX+L9/sUPSnCTxQ+sE9BeLdc
         3sHA==
X-Forwarded-Encrypted: i=1; AFNElJ9MR/yECe38X/5ByWMjuuKQwdR3iIPUEQep8y4IwCVZQ2xdLTuIMFvnGCAH2LgX+dkFjjdIIw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxVvR8NGgGWuuPs4wxgqh8ogwdYulGuZj6s0ORzEBUaf171MUST
	3rz8djmzeWay5RtFc577bl/QEKskUg7engigbnYeuqO+krVO98pjKQlqma5UsEMrW/w=
X-Gm-Gg: AeBDieshU4heV0V4Q8feGCGD56ZihYLJPF8AVEk/Sl4HYWzYz+z0joauSkiu2z0KwKi
	Y7bAwLfKK1mRsc9RuQSO2/Q10UrRvpCXJI5KlqzDlgdKD9iBzuiiOyl5A5Y0E601kLT6c17zNzU
	6GFZImfKAOjSOs7ciSMyMnGKqVdAVLkOE4ZjM5951kWHqrjB0KduNJ3+IbOgyBUt+8eiLrDcBA1
	hd1tEuP0gRBZZXaFqf1qFNquU0Fxrc8Ghrsz8t2jda8zmhg2UXoUVP/FusUtHcnYP+X8q6QWyWp
	tffQX8uT9PcgzGdlTUTYquBRUdtKxcfMJARiblcOCJMitwW/btWzWgShv/CbJFupnhgMTnhbWRk
	siPZ4YYazgKRMJX6z+N/58ZxIq9KCW+wqsOqS3pbtXK3w1Rj5SPeFfG9xSPxx3jnBtJgtzmNBHl
	Y1+ubFVr2LqAT7/8swhUXJaM5z1GjhuI9DYShnnG+ou1Nt2Zc6+DgFQmfT6KD4tikQPUEWsEz/m
	4VjOqzOhBoLFyyA/JMh2hGc97E=
X-Received: by 2002:a05:600c:3513:b0:488:a977:8de with SMTP id 5b1f17b1804b1-488fb77a3a7mr458616745e9.16.1777032668771;
        Fri, 24 Apr 2026 05:11:08 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6633:2b7d:813b:8534? ([2001:8b0:aba:5f3c:6633:2b7d:813b:8534])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4891cca5743sm372194375e9.9.2026.04.24.05.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 05:11:08 -0700 (PDT)
Message-ID: <41bc2926a6e99fa9e1f24d4bf7df486a6f489adf.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.0.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Fri, 24 Apr 2026 13:11:07 +0100
In-Reply-To: <0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
References: 
	<0101019dbe9ab5c7-d6cb6dd9-d52a-4c28-8ce2-236bee8e31ae-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Apr 2026 12:11:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66439

On Fri, 2026-04-24 at 08:28 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.0.rc1) was completed o=
n the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.0.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/3727
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: 33581c84f3a85008239acbd940501a35de48dc91
> meta-agl: 335bfb321925d37675d45f0f869c446ded8972ce
> meta-arm: 8eb10af8092dc3fff86891339fd024d8583f457f
> meta-aws: fefdcc67dc3a86752a98d19c96d64bcb31928002
> meta-clang: 78c5e12f08198f4f257a9348516d2103cd617c1d
> meta-intel: 511ddb7ea90499b2088248f59bab3e9d6f3c900c
> meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
> meta-openembedded: 76700b6eaf327bb30e2c47b78713e2e409cfab7c
> meta-qcom: a9f20e62e569c232dc1aaf8a90a6343e504003ef
> meta-virtualization: 2e0704ee9282e4e86c13180334cb7ce118e55dd9
> meta-yocto: 904846ae078ee20de073040ebb77c86e19250f56
> oecore: 42fa856a00ac16b2a7a83d7ecfa60a5be192b16c
> yocto-docs: eb74fdfd9e5e579a65e8872d1a73b51e77b14f63

This build did show three issues:

a) A bitbake-selftest fetcher failure with 403 errors from crates.io.
This is an intermittent network error, probably rate limiting
connection requests.

b) Some oe-selftest failures from importlib on ubuntu 22.04, where
importlib fails with a KeyError, this exits whilst holding a lock
causing other failures though deadlock. I manually killed a process to
let the rest of the build finish. This is a known issue in older python
versions.

c) A failure in meta-virtualization from recent changes. There is a
patch on the mailing list and this will be fixed before release.

I do not believe any of these are release blockers and propose we
should proceed with QA.

Thanks,

Richard


