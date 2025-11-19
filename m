Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0C28CF34A3
	for <webhook@archiver.kernel.org>; Wed, 19 Nov 2025 12:45:36 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.6023.1763556329246090216
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Nov 2025 04:45:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=laAX6YLx;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.215.178, mailfrom: jester@theyoctojester.info)
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-bc1f6dfeb3dso3806163a12.1
        for <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 04:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1763556328; x=1764161128; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PXDaTzyeZoCGVFqI5q+/dYmHatY3aqouBemn14cGQ8k=;
        b=laAX6YLxWIlqPXXPy5Dr2sUOTXT2EXEl7qllNUTesQJsqYRgBl28x43Md2DeKQHafb
         Xz6a/tBK3Gzta5KPvKdqXB+pXxS5kvmJcM4Jusw4jTN/CvGnkMVVON+yO8zJIsrOt6Z2
         +CnYEA2GSHKbz8EoK3rL3cJCOItphGkZRNyqh3LjhAAGv38cR6JJGtiQVih+zN/S1M2s
         zMvS9cu0xIqRsMZxDR1B/nOGFnifdv8r5ZM7LvQWr/LangsKPVKoOzhCbiga0gyC6CFG
         MbVt4ezoRdeOIZ+d3qvNUc680JLuqnf0JuFz5odRhFCu3bHhtXfXCC+xAHpbCumN7MDr
         znvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763556328; x=1764161128;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PXDaTzyeZoCGVFqI5q+/dYmHatY3aqouBemn14cGQ8k=;
        b=aTLG7mKy8c7A688/E+Qs4ZIVN5BO9pZ9tBbD9riVKt1vzpRf5rxaen0qC4DyIzaMAG
         LcqYQNTreVM6Yrp8GSqSV/EfhbJB5yzKmd3CZVQ0LQ5NpGKtYFv9lWdX3F9x7aKQ5/HQ
         0sF0dxYAI1xcdBLqByiUfXxQJAGKq+E1V5wfSc5CaH1dSCeBD/mrByF95ey+Dn5tx2o5
         a/96x1M0/x0KYPlzgHhIA14TT/azrUkVYGrJdrImO3o9B166ARuYGpncKe8Dq2g6TtZe
         pd5kSvA50ADJnv9VP2JbwB8mLrQg2z8h+T9fE3KmF5L54IrkXmvvTKFe/UueVzdI4Khz
         gExw==
X-Forwarded-Encrypted: i=1; AJvYcCWaC00hAkJPMfBpmkti+i7EKVLI62g0bkjoUK606rntIaCSUqHDIBEjQkPbXnq/QPJIi54+ug==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyXUgT7K46dRdr4fphC5TmSJSVYyKeBiRbEKs/bPMVeWTJlpvwx
	1PfXrel/oznsn256Cz6teZq9C2I+R+C1pIrXSvC26w94RcoXmzSw1I8CoIYT51O6gq3UA1qPO0c
	V3DB3i9I+LpEwwjGO+QtEeClD1YShfy1pLLTlIVixAO3zg0aBtMv+B8Y=
X-Gm-Gg: ASbGnctRw6k3Srdg+AtW+Geul+mhwTIADOnV2C/T8XH0nIBQwCixWcYE9l4Gku6x9cs
	g2dG3OyfHaE+ce2tANUELdou77XhJba2kvSG3bE5hhCXBAOMBbILtqFjTr9szysEsIO4RMhNJcB
	nXe+BBaGT7lNErVmAJXLatessdouFzJ2yw2dtkSMBRI7GnIgFVtSTPS8QNTO2RtnDBfFn608cJ9
	tcF5dxZDz+DinPSulldNICcgFoURDNume62px0QaZaYaD4v9T2ATke4bCRLPQwPmUrwxA==
X-Google-Smtp-Source: AGHT+IE0QKcwgymWqf0OW65vCCMWCJiOOtiwHWi86Co4ZDNjIADj5ZDi82ZDY45qcjOrjuyWEl5PIHEr0WQn+MTvRJY=
X-Received: by 2002:a05:7300:d193:b0:2a4:7b58:1a25 with SMTP id
 5a478bee46e88-2a4abdd0975mr6735592eec.27.1763556328274; Wed, 19 Nov 2025
 04:45:28 -0800 (PST)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 19 Nov 2025 13:45:02 +0100
X-Gm-Features: AWmQ_bm_PxmIVsr1uEgK1X4tXsJ4ytdlEO2p0jJDFFQoTXLHG4lWjgwsXBnFig0
Message-ID: <CAEt6Nwp4wFFFcouMdu4srk_TZb32cYVe-aQonyQmK4t=aitA5w@mail.gmail.com>
Subject: OpenEmbedded Workshop 2026 CFP
To: openembedded-members@lists.openembedded.org, 
	openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Nov 2025 12:45:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66034

The workshop will take place on February 2, the Monday after FOSDEM in
Brussels, and the CFP is open, waiting for YOUR submission:
https://pretalx.com/openembedded-workshop-2026-2025/cfp

Here's a few ideas:

Product lifecycle management
Long Term Support stories
Real world case studies
Reproducible builds
Creating layers that work well in the ecosystem
Board Support package best practices
Workflow techniques for projects
Automated testing
Supporting customer needs
Supply chain integrity
Multi configuration builds
Systems beyond traditional embedded
New user and developer's experience reports
Software bill of materials
What can OpenEmbedded and the Yocto Project do better?

We have two time slots available:

30 minutes (20 minute talk, 5 minutes for questions and 5 for setting
up the next talk).
45 minutes (30 minute talk, 10 minutes for in depth questions and
discussion, and 5 for setting up the next talk).

Questions? Mail me or philip@balister.org :-)

Greetz,
Josef

