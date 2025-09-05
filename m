Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BA44CA0FED
	for <webhook@archiver.kernel.org>; Fri,  5 Sep 2025 18:33:01 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
 by mx.groups.io with SMTP id smtpd.web11.1099.1757097179723468442
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Sep 2025 11:33:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=qonTwa2K;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.208.51, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-622fbed96dfso634174a12.1
        for <yocto@lists.yoctoproject.org>; Fri, 05 Sep 2025 11:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1757097178; x=1757701978; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KWr0vHyrQqlDeFx2Vt0XbtQxPLLB08twQk5ir185/pQ=;
        b=qonTwa2K4Gbz+wWbgHnYp3M2SItVW/wgzoYR1DGhOiLsgeji/sFAm4/THWJ3w9g5Lc
         9+bZApVYVrrrfA0OUM/tuJl1R7uvLQVw4515c42+hVHQm5l4uBGw19GXRAmgjoBYxfi9
         bPa5FTpPoP0YAPflDTR5IVBNJPpxxsFEUHKw/MKVMhNrV4LOv3jPkTGYJ0ACorQOILHY
         WH3WKK3JDUdPYJHfDagdvagyCXarnh95KXNmXRGlXnGFvYu6n1RquugtiqhlJ8oKOhQy
         +l8Nwc7GhbC4RDEoqVoGgG1PxAN9l24t6hYZyKxh5IxqK6aXg7vLVoizC3+W72ymjlh4
         l72w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757097178; x=1757701978;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KWr0vHyrQqlDeFx2Vt0XbtQxPLLB08twQk5ir185/pQ=;
        b=ANevu94RcVJ8ErNAZATTYbF7H01qpJT/JhvgbxDOEv3TdufCAK60Ga0OGcIZ6UW4vr
         D5MjjSzI1yGFPO1XhndFkE9WO7K91LqrbM/sONYRrVs+rsQRoe9qExE2mJn/p3K2RHTf
         nCKIhAiY0w28dyieG5DytmtgPBgq0bWIUg1rIXmGLHWEi6LWgNe2c2GLfUfCDYuE7sRx
         hNPOClD6go8muusOWit2t66RoyO02UFC/Nc3ERURgi81HyXOTcgDTpI1+JZBvw59Ld+a
         KcVaH7P45nvq29sa/Ze+l+Co0p/LEw/+/fif5U5wOSoJVcrdq4dcq6MxNqbNaQYubvkm
         wMZw==
X-Gm-Message-State: AOJu0YyQ4IX4IxMzN8B1XJy9gk5AlV+DgM/boFIUxV8tsgrfSfCd189U
	3T8EVsBKvh+jlg8zZzL7oK0av4CRLxMiYAdKFQZDj3WsO8wo4/nVWWMsPbfMUqAJt3jgvCitc45
	WH5fBVx7VS9WO3+KQnuzQP3soyqEZVqXHpIIB3ez2sQRf/FZEdLBKByQ=
X-Gm-Gg: ASbGnctUCbhGM3lJy0xh5c45BMQArNooNgCpIomF6QEzIuGqDQp4wC4r6YZK/bIx8i0
	sCvimFIAvOmkUpFepBlRBj+DRl4MWCNL8GSGgV/GjvyqP6ubiIwjenV3f9j0vw0pUDn33ghB3Tx
	PJGnJ9Teef7EEgzrYPCHEGYUIRCoWhYcyrJWPxyNsJGWFSvGCKRm77KlSuzJhHIv/4zniij9nu0
	H8YS8JAGqd0STG91oyr2k4oCaXMTaCc22zAn2i6TfQveyV1/mU5
X-Google-Smtp-Source: AGHT+IHzSwll/ivhVsIIArOEJwxZHRp2sCEPanc8sM4ZAW8th0t47MKLFQM/jZf4d9Op6MZJKtBCce4oDZqbcH0L2xs=
X-Received: by 2002:a17:907:9410:b0:b04:7702:c18f with SMTP id
 a640c23a62f3a-b047702c450mr920377066b.15.1757097177974; Fri, 05 Sep 2025
 11:32:57 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Fri, 5 Sep 2025 20:32:31 +0200
X-Gm-Features: Ac12FXwpTHYhcLDW4J6EKWX5QWE2lqmCSdTMcAvL7EIiHaVpRR8442er3BxQQGs
Message-ID: <CAEt6Nwoo7YJnEmMO2qneyuKstuGbwE__OVUGUptppT0+GL=75A@mail.gmail.com>
Subject: RFQ / job opening: Yocto Project Ecosystem Engineering and Operations Lead
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Cc: Michelle Favalora <mfavalora@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Sep 2025 18:33:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65820

Hear me, hear me!

<quote>
We are seeking a highly motivated and autonomous Ecosystem Engineering
and Operations Lead to support the ongoing operations of a high-impact
open source project. This is a full-time role focused on maintaining
and evolving the release processes, technical infrastructure, and
interaction with members and community across a complex and widely
adopted open source ecosystem.

The role will work across multiple domains=E2=80=94including release
engineering, automation systems (e.g., autobuilders), CVE and security
management, documentation, and community/member support=E2=80=94to ensure
timely execution, quality, and alignment with Technical Steering
Committee (TSC) direction and Yocto Project governance board (GB)
goals.
</quote>

Curious? Check out
https://jobs.smartrecruiters.com/LinuxFoundation/744000080228346-ecosystem-=
engineering-and-operations-lead-remote-contractor

Josef
Yocto Project Community Manager
on behalf of the YP Leadership working group

