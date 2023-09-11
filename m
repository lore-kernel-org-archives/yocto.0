Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4FBEE7FF4
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 08:26:28 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.54033.1694420781243702525
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 01:26:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=PSwDCMTE;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2bcc331f942so50375461fa.0;
        Mon, 11 Sep 2023 01:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694420779; x=1695025579; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LAbl/cNGEe5OgnjlR+RbaLcjVXEgIGTwt/PKlE+kkXs=;
        b=PSwDCMTEFmTtbE2wbV/6gCuguaOrTjt5K+V03cOfVA8JnoBLIdkdABxOpKhM0c7Y8f
         svNqZGKaipqxUJOyGdlttSB07EE2BtMeQ2N0K4ebVHGqipbKqyEJ08POSI+iscN576U9
         70rZjivJoDromkm/lSWTo3rCedtZU65cEbB/WGlIPahU+RvdLvlboYABC0+izmQSqfqI
         S/mjhkwmU2lCLtxndLKVurgtnexzgRM5ZQXFsKorDDndrpFtYKZGK0sUrjtMS+EPPrB5
         DTASqq6exLbHvLxsgwwn/tLHSWubDL2Fa0gAnl1F+nLxWz7/nE9OMVK8+sLFCtbNgyAF
         S5vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694420779; x=1695025579;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LAbl/cNGEe5OgnjlR+RbaLcjVXEgIGTwt/PKlE+kkXs=;
        b=T+7ZLpr11NBW//m8f+p5po99vbJL7N3vmX+Vy93jza2/jE26qSidDrvfWgV8o39Muo
         +yB75BLNaze6Na7qIzekJ7aAYz00FvcjrKukP88nIXBXa+viPb+LHdK1axW050A7MnJv
         Y8BENPZESxBCo1xhhhPcrlWbXJUmqKpJ+Nr+uwwGWNT8YE1LR5eIbOIJ1i92jNuGnUh3
         ujVtKXO/eIY0NoghaUc0+CQ81Wic3Ok2IpLFimazhvIHOvymAY/ODnK1DIft0BOzsxNe
         ZMP+Csn1jGvv6ZH2HhyanzN4p3G3Ht4fzOQLjoYT/0+ikrkiGBXDtIh6DN0C8QtOtShU
         ydHQ==
X-Gm-Message-State: AOJu0Yxs7GaZj6VUyhSpFph/4cPVTKs61GMeI/ljPWZTrBH5Qo37ASfZ
	KB9otHrtixjguJQIXN5aMqdNR9injLtgrhqhKMY=
X-Google-Smtp-Source: AGHT+IEJ0Dfb7H+Gtb8Ehf1t9gPuAcDMZzJLOJFVlBZ3ggEYQGLRjGuStdWPE3ZJzZLgX+9r63QnVkhYWn5R5cHyjas=
X-Received: by 2002:a2e:aa8c:0:b0:2bc:b63c:e823 with SMTP id
 bj12-20020a2eaa8c000000b002bcb63ce823mr4161518ljb.22.1694420779106; Mon, 11
 Sep 2023 01:26:19 -0700 (PDT)
MIME-Version: 1.0
References: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
 <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com> <CANNYZj_fr0fFbRSYF3+aqaHAWD90f6b5Frs6GWpsgqLtOX+QxQ@mail.gmail.com>
 <a523b68c-1de6-e1bb-8f61-4879ac4a7453@windriver.com>
In-Reply-To: <a523b68c-1de6-e1bb-8f61-4879ac4a7453@windriver.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 11 Sep 2023 10:26:07 +0200
Message-ID: <CANNYZj-dPMpLn+8SNrB-zSO=GnxMp4CFDZUEh8qmUrRHW4y7LA@mail.gmail.com>
Subject: Re: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
To: ChenQi <Qi.Chen@windriver.com>
Cc: me@linux.beauty, yocto <yocto@lists.yoctoproject.org>, 
	yoctohelp <yocto+help@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 08:26:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60970

On Mon, 11 Sept 2023 at 10:13, ChenQi <Qi.Chen@windriver.com> wrote:
> This is the case I referred to as 'different builds owned/controlled by
> the same user'.

'User' is ambiguous here - user as a person, or user as a local unix
user account?
In the latter case this is likely to be misunderstood as 'sstate cache
must be private to a user account because it cannot handle multiple
readers and writers eithe locally or over the network', which it can.

> Say, you share the SSTATE_DIR used by Yocto CI to many people via NFS.
> Then, a 'rm -rf' might be typed by someone by accident, maybe just
> because of lack of coffee.

This is correct. Deletion needs to happen via central procedure, and
those who cannot be trusted with that should get only r/o access.

Alex

