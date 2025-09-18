Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD6CCAC59A
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 12:31:53 +0000 (UTC)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web11.13070.1758198709817362113
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Sep 2025 05:31:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=Tv9KEMsD;
 spf=neutral (domain: theyoctojester.info, ip: 209.85.208.50, mailfrom: jester@theyoctojester.info)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-62f4273a404so3875618a12.0
        for <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 05:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1758198708; x=1758803508; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=djOk2/QgqErOXnd6RaUKB5QmJw6vn2wPD1rGEO0tuYs=;
        b=Tv9KEMsD1g8hkJD6KvAsVCKfMMWbHSzMSuTR4PVjMDiPP93r7jBfvtbyj6OrKHuM6+
         X6W8WevZcrCME72RBkfGsJDS6H5AHqMS0UarOgTsoR6dxQiEb9lkbWwalDrJ52X4JQFp
         MQTXolWUjXoRkUbBlQ9koj0ryITKXAcZf7wIk7EJ/a/kBtX18OpVqyjDq17d2wJjYAe1
         OdQ0MpZ/EDxowqJ1OMhubaKobZOuDvvLgHzlzdNn6RUkgn+Tw2KL/2LjSaoOULWcl+Ga
         cB9ksnPJv3rndWAAHwlqBvGmNgfWrBysDDtRoLsRXNE0rJY23S58WdhbalnJpbwwCEQj
         lg1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758198708; x=1758803508;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=djOk2/QgqErOXnd6RaUKB5QmJw6vn2wPD1rGEO0tuYs=;
        b=T19LIvEgLiMrczD67dzb2of3VPtkj7VQUTD1Z6Hf6GX7wuY7pCgoR1qWPwjuf4fPCA
         SflVVAAuOzXpIAW5U2VEBNdQz8MlkHSOlih45vglO2z0iNNswHYLkQimmpPMHy0EN4Ad
         Bh6zTKeU8xhLAbcS+HgOEKRBIF8/d++azw0QI9mud8h9ivqTpfJNDsnTxkBX7zKC/Lhx
         YZGRkg44wbiP6dB0WHg+wQBiXC+dITuyAppqdxuOTcegg7T53B/QXYd1A216egT0D5AM
         +TjWrMAraru6sq73Y7RMU9F/inwjjj+/+h1fJrzIWhA2aldjjp94gHmnQ0fM1DRwJYHg
         dbhg==
X-Gm-Message-State: AOJu0Yw8b1xOsa6w3t7yxYEYagTO6qflQttpgl301qESTrAt/0gElLP/
	7v8+1vvnaIYih3D5sBVLIn4rFxadSlU/GFxrB9TITOXROC8611QAGuW65bO4mILVs10leQI4BTO
	8ZoT7YtbihcYcquXa6j0aXocygwDIfc/6b/bOP4pwr+/iD8l2CmZBIII=
X-Gm-Gg: ASbGncvAVxs8ZtfjE5K/6XXm15ijbgAswAAU9uXkfkNH4yVfLlxUkh51lL/jJzYrjNM
	rZAGPsmuXvRnK0SMGJAyHEkx2K96UTX8pojXBYMWcZK1M6KP79nilqJtvP8BQ3FI9ZOjWGBZwMU
	y5ZpVcuJwvs8lh5fc2uLKLwGVAV4GadZYKcJCqLJn/dS2ArvALxafD/PvfeaMe+WiTdZCofwWWW
	4B3RqsTW5elCG9rozBa0iXhWBy/EQFgwPE=
X-Google-Smtp-Source: AGHT+IFSFf4DKcR/TV1fSwQ85GM9aJGvFwg4hB/lkfie6z8m4+Ld7ZCspd+dXhM0LIGirF8/3rW8fA9sBxAQ8znH1RU=
X-Received: by 2002:a17:907:d7cb:b0:b04:1d85:7106 with SMTP id
 a640c23a62f3a-b1fab24299cmr271191966b.21.1758198707717; Thu, 18 Sep 2025
 05:31:47 -0700 (PDT)
MIME-Version: 1.0
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 18 Sep 2025 14:30:00 +0200
X-Gm-Features: AS18NWD2JIG8TKyFRFE8XaH0EL5A94YNASpA_0nNM_gdDbxzwzenLAB4Qa_m2UI
Message-ID: <CAEt6NwpRTafz3+NVdraQFDtqb2xgPAnKdSVVRc=pCr6=1a2QQw@mail.gmail.com>
Subject: RFQ / job opening: Yocto LTS Maintainer-Contractor
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>, 
	openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 12:31:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65856

Did you enjoy Dunfell daily? Step on a Kirkstone every time you left
home and never missed the Scarth Gap?

Here's your chance to *TOTALLY* have a Wry Nose. No kidding.=F0=9F=91=87

The Yocto Project is seeking an experienced, community-minded LTS
Maintainer to take over maintenance of its Long-Term Stable (LTS)
releases, beginning with the upcoming Yocto Project 6.0 LTS release in
April 2026.

This is a critical role that ensures long-term stability, security,
and support for the Yocto Project=E2=80=99s LTS branches. You=E2=80=99ll wo=
rk closely
with the current maintainer during a transition phase and ultimately
own the process of delivering quarterly (or more frequent) point
releases.

If you=E2=80=99re a long-time Yocto/OpenEmbedded contributor with deep
technical skills and a passion for open source sustainability, we=E2=80=99d
love to hear from you.

Find the opening at
https://jobs.smartrecruiters.com/LinuxFoundation/744000081384375-yocto-lts-=
maintainer-contractor

