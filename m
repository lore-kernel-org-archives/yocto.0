Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E470DC001DF
	for <webhook@archiver.kernel.org>; Fri,  4 Aug 2023 09:36:07 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.7622.1691141761578308500
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Aug 2023 02:36:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=djJK9yyn;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4fe0c566788so3216474e87.0
        for <yocto@lists.yoctoproject.org>; Fri, 04 Aug 2023 02:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691141760; x=1691746560;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTYvQkAuK99p4fsCytb/MiXOER34X0MfzhKoIbSlJF8=;
        b=djJK9yynZXwjGoy/uspNzCdhnfbfANAmWjhCQwi09kUlFtQFLndqOBEGBBSeXRIfje
         rlt/YkZWm8hsO0ff82R6scIReUgVb0ntPnjvkFpemoW9gzKzJOJxrtrqL+7B2qrvuWtQ
         Y5Qdqh7Zb/7r9EtCJVRZhneDd/+GqvqWVWHmA9UlevvPAG+TbxuBdq2cOakFsiLmCEuU
         D0RptLc4vCujYxZxCtqPlSUUeTuWCWNuWqc045T+6TWxwEhr8rzjbNaopPGFDHuWmtSj
         zAILzJ5yjrtMnibA4GsYKZfjdD4efL3Z6LBr4SRSzo4k+k05OXLe0qFgRmpybwvSEvB9
         PoMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691141760; x=1691746560;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aTYvQkAuK99p4fsCytb/MiXOER34X0MfzhKoIbSlJF8=;
        b=FGKibNvTtDq8QZ1XT7+oQJjE30odsXby1Rb1F+rpXiCkPKSNLtKgitJPHqTmisJWTH
         RRBp3BN2up2wOkMl6yAR5eq+D7ShVsC2RhHd+7axshPyu2yqgbyELh2S6dcJw1juHp9Z
         +MbOW6HLEaG4tWc+9CyKxkUD2bUt93jSsGNQz9LhqjU6wew4OfEsxEIGqoYqUwuKWHOH
         M+A3gKvHp/Z87Vs4REUIC9/olRnkjOICOdVrTA0UZbzZmuyHqfxByb5NVboW2mXlhQ4V
         iliS74RWYxSVDf2w5XKwwh8U3hEAdgJsmsCzMn6Z29Q7mr0m5dzeAvWVrOdvm7XPLxEf
         nnLQ==
X-Gm-Message-State: AOJu0YzcCXfr9VlRj/Tqft0VhLeGnrOSx+KT6Raxvd2e4gODZJJVC6XH
	w01jyt/C/EDWaVsSJ/l4Xqoa7iTC2YpY+njdreI=
X-Google-Smtp-Source: AGHT+IEk7S9r+NzI1kW9dGwoURnkLH9ZuaZiLjaSsRTLwivGI7nvzsjkTfAfdG2MRfd1y6S6y60E1qBZE9VohpCL6YI=
X-Received: by 2002:a19:7b02:0:b0:4fe:19ef:879e with SMTP id
 w2-20020a197b02000000b004fe19ef879emr749631lfc.28.1691141759624; Fri, 04 Aug
 2023 02:35:59 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8ELy9FbCZrzHeWWKrW_NCfDEAY9HiG8tM2aUnVmCANpg@mail.gmail.com>
 <12180.1691137643895041077@lists.yoctoproject.org>
In-Reply-To: <12180.1691137643895041077@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Aug 2023 11:35:48 +0200
Message-ID: <CANNYZj_sYoP+61NGtMrNJfT+m+hZyz=cxJAcOcE1kSkb6SXKUw@mail.gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
To: msenturk <senturkmurat1999@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Aug 2023 09:36:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60711

On Fri, 4 Aug 2023 at 10:27, msenturk <senturkmurat1999@gmail.com> wrote:
>
> Thanks for the answer. I wonder what the difference is between using Lang=
dale branch or Master Branch. Also, How can I migrate to Langdale? Migratio=
n Guides generally give information about migration from the prior version.=
 I actually want to delete everything about Yocto and start from scratch.

Langdate is actually no longer supported/maitained either, please
check the support information here:
https://wiki.yoctoproject.org/wiki/Releases

There isn't much guidance needed to migrating to an older version.
Once you are happy with a build using master, make a fresh checkout
(in a separate directory) of all the layers to their respective older
version branches, and repeat what you did there, fixing issues as they
arise. There should also be a good reason to use the older releases,
and I haven't seen it yet in your case.

Alex

