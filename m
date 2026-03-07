Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52745FC9EF6
	for <webhook@archiver.kernel.org>; Sat,  7 Mar 2026 10:49:06 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7041.1772880540388436514
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2026 02:49:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bFemXmyk;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-439b6d9c981so4533204f8f.1
        for <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2026 02:49:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1772880538; x=1773485338; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m3jR3C4vDJ8YhURDkFwIKmm4ZlzF0+nCeL/+0TyYTFY=;
        b=bFemXmykEOwu1W1WL1R+QncXDqiVnqeOin0A/EZ7hPGTQfg9pqVUqSq29mXtN4Veer
         V+XekKmTastZ4YGIp04CB2bvKHGdx8duASCq6XAFJ3IVPLjiucDx1WTzp4NOYBw+/SqE
         eV3wuQDmPJ2LOnmds8icYSx+n1B38QwKaNWjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772880538; x=1773485338;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m3jR3C4vDJ8YhURDkFwIKmm4ZlzF0+nCeL/+0TyYTFY=;
        b=N1vn0V2g/9O9f3RxQ8PbjDfs9lSgqZLZ1Oo+sws1r1Gqf7WSaPtDbHOkWuZY0baBPW
         IVxulx8XokM5megPs5oCBbLgvClge6rIXP4pMrhhdtGBxdvE2r/2c7kn2bj2RHqE49ES
         9tF3iG1PEIm7eircH4QEB8PNmAI6XBWkViWtT/BZpMbfOq9ARy9vVLoLOFAUrm4u/WTv
         RR73DNy4Q2M7h3252PZlb7xG8AqZviKAA//hKrqpVK39RIjOaB1mavb+c0L2rZCHbFoo
         fsWUqKOBDLBSWaqQzmoe5fXvln5K50fNVmreae1l/Ofw/895lp11rHVwi8VxZQbdeII5
         gRBQ==
X-Gm-Message-State: AOJu0Ywtu1Ut+X2vvbY82SxfsA0cE1YPDCS3O8PzY7ZaWdCIrmw+68QL
	+QIqVbTq6DWKs3sk9fcvnQFnx2HPyOIiee+EVrrVnBo4gV6oe4N/UIo+TN7RI2IDeeMeyDzzrAc
	TcpsWr1k=
X-Gm-Gg: ATEYQzyw+7c8ZjJMBxAMVuQX6PHaAvBGlMhcVbVml/Y3ofCMTbnGjMeUrD9pAuAwpzJ
	gkjrIXE2KW2E4JmEkN2hmD70xZ6LeXWQSrHmv4RbBtUUvrag+MLwhJj0dYahqPZm4yk5+Pj5Iw0
	He2EpXZYgTsp+GotsUDSNcxgmjM70XAg4XEv2oueTXQZntncDyy2KaHTMRwdh1AQ82EscxfC4z1
	3aQ2BaiCoRxPbE1nA7ra+eAxO2hyElT2mdimUs84DZom4I+hSiU5skAEklN3XogvWCZUKNXZVdH
	X1RWmSJ844oXrUEtiHfUauPTBtTML4jtC2lXluRAySVRS6Cr/3zpy1zSwFJ8kfteyspDxnvSLeZ
	5S3NUM4KO2y2kY/PlMJ17h7e6VpBfgwwrdIm+T0jEOxpe5IKutHFerxaLFmIVQeLM1YkyvUngzb
	sb5e2Soy4NLhZmFoYDhNOSd4CNdVwbRuWG99LC8ZISFuGQesIDVsN4/npB1ViZwuHNLnMq+quvO
	VJQG2zacg4k1PE=
X-Received: by 2002:a05:6000:2dc7:b0:439:cc5e:a6d5 with SMTP id ffacd0b85a97d-439cfd76d47mr15722770f8f.23.1772880538339;
        Sat, 07 Mar 2026 02:48:58 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d746:2cdc:e7ea:aa72? ([2001:8b0:aba:5f3c:d746:2cdc:e7ea:aa72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae3a20fsm11536007f8f.28.2026.03.07.02.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 02:48:57 -0800 (PST)
Message-ID: <0042c15cb84a0fcb67403e2b70253831724720fb.camel@linuxfoundation.org>
Subject: Re: [yocto] Clarification on ptest/selftest backports for stable
 branches
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org, yoann.congal@smile.fr, OE-Core ML
	 <openembedded-core@lists.openembedded.org>, OE-architecture ML
	 <openembedded-architecture@lists.openembedded.org>
Cc: "Marko, Peter" <Peter.Marko@siemens.com>, Shaik Moin <moins@kpit.com>, 
 Pratik Farkase <pratik.farkase@est.tech>, Naman Jain <namanj1@kpit.com>
Date: Sat, 07 Mar 2026 10:48:56 +0000
In-Reply-To: <DGVX4XQ6VLWT.1HOMXA78ZXLBG@smile.fr>
References: <DGVX4XQ6VLWT.1HOMXA78ZXLBG@smile.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 07 Mar 2026 10:49:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66308

On Fri, 2026-03-06 at 19:42 +0100, Yoann Congal via lists.yoctoproject.org =
wrote:
> Following recent discussions regarding merging ptests in stable branches,=
 we
> are clarifying the policy for backporting ptests and selftests to stable
> branches.
>=20
> (I'm transcribing the Yocto project TSC decision)
>=20
> Moving forward, we will apply the following criteria:
> * Backporting new tests is acceptable only when they accompany a
> =C2=A0 corresponding bugfix.
> * No standalone tests: If a test case is submitted on its own without
> =C2=A0 fixing a specific regression, it will be rejected by default.
>=20
> The rationale is twofold:
> 1. New tests on stable branches add limited value if they aren't targetin=
g a
> =C2=A0=C2=A0 known, occurring issue.
> 2. AB-INT: We cannot afford additional intermittent failures.=C2=A0 We ne=
ed to
> =C2=A0=C2=A0 minimize the risk of introducing noise into the build result=
s.

Just to add, the TSC realises there is a balance here. We do want to
encourage new additional tests and improve our testing over time.
Allowing backporting of ptests would encourage that.

However, it is also clear we as a project are struggling with the
existing set of tests and "intermittent" issues on the autobuilder. It
is near impossible to know which of the new tests are going to cause
such issues.

It is also unclear how much testing many of the submitted and then
"instantly backported" tests have against master.

For those reasons the TSC is being cautious. If the autobuilder were in
a better state, we would perhaps think differently but it isn't.

It is still possible to request exceptions if there is a clear
justification for adding specific tests to the stable series.

Cheers,

Richard


