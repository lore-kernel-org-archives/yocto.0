Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08328CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 13:33:27 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.281719.1697635998477400282
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 06:33:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=lmnebnRH;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.41, mailfrom: steve@sakoman.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-53e16f076b3so13052096a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 06:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1697635997; x=1698240797; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=stPqcDPk+gL/2G8DtJ6gzIO5/UwnOu60Iuj2HiiwjEA=;
        b=lmnebnRHXhalTxlZU8VdlxSr+ue7ygjPJNv6YWoLUeP5oXG8ooj0AVdcfbbx/cwQzQ
         zXuDtWXuvfXL/xjYBu+m2I/ZhCG79mGJiql1/Ze/HiK5XGaFuPCnDqL7IJakqi2bRqN3
         5QIgDzXwd+gVS2LBTsT/wnt36lE54ZTwZhXDDHt1ZFOX+WUu/v33V2Z/fHL/vOBlNami
         1eXXymSlbT+XR93Iq1gXAwfApwPV1Rd50QrN2eKeQNTezW0SVpw6D6Do5vKgy9Zfd887
         NT8hyrdnG8qulQFxGFFzJL2lHsZhNJpizveoNfzUle+eR4bqWfjVPHsv3xAQ39jOiSJI
         fjCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697635997; x=1698240797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=stPqcDPk+gL/2G8DtJ6gzIO5/UwnOu60Iuj2HiiwjEA=;
        b=TgC3m90ToAe3TMGuClHmmRz1ET0KCv2kROSjU91pdMTR0ZA2sOoza46DjPsqPbrWB1
         Qwc18t6y20mR7dqds3EDcyhiNUntynE6bMcX5STC7VB94AZbJLdGYiufwXnQREF7v40o
         tVqdYFuu8AZeaLzQQkQ5CycvEEMFcjwLY+AhduJ8cqdkLZjr37Ac6uQnACT2aCOAz+wL
         foO/0mZrHIL7FjKV1funauqsyr6FZ7Nu7aMSmO5jx4Tz4xTSeYpi4qSPwcLu2YhPeRG1
         NCJnfqE8+8UetC0SyHT5ht9ZGSDz0D1eh5ne7gd8MesfdNYzk7ylyPyVbH3pcPdIxjPG
         d3lQ==
X-Gm-Message-State: AOJu0YyV85JfasGUgYkTDUZm4+EzwmKLKRWptnIhXLISUzWsDi0VDJmk
	hejjJDeQsLGARKdhTmCwgdrvwHVrtbaDHB6+fNoGxQ==
X-Google-Smtp-Source: AGHT+IG9JIyf2IjlmMYM4LRs1/oTBnTTiwRkwytK41T/GgtFc/4iPqGn5Nm7K1j7EUGgEXKemjoWGIuFJric37yRUtA=
X-Received: by 2002:a17:907:7ba0:b0:9b2:b15b:383d with SMTP id
 ne32-20020a1709077ba000b009b2b15b383dmr4712021ejc.11.1697635996781; Wed, 18
 Oct 2023 06:33:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAApg2=Q5FG4X49MeCC0Yg9yhsFe6pSDRY2o81coNDftHafs2HQ@mail.gmail.com>
In-Reply-To: <CAApg2=Q5FG4X49MeCC0Yg9yhsFe6pSDRY2o81coNDftHafs2HQ@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Wed, 18 Oct 2023 03:33:05 -1000
Message-ID: <CAOSpxdYGaOGSgmutwmHM_UQEnupVg=tyNdNuveXCvHVHLJ9Smg@mail.gmail.com>
Subject: Re: [yocto-security] SRTool usage for CVE management at YP
To: Marta Rybczynska <rybczynska@gmail.com>
Cc: yocto-security@lists.yoctoproject.org, yocto@lists.yoctoproject.org, 
	"Reyna, David" <david.reyna@windriver.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 13:33:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61399

On Tue, Oct 17, 2023 at 7:43=E2=80=AFPM Marta Rybczynska <rybczynska@gmail.=
com> wrote:
>
> Hello all,
> There' a discussion pending on the usage of SRTool and CVE management
> for the Yocto project in general. It is related to the need of having
> a list of CVEs the project is affected by, those fixed and those that
> we know we are not affected.
>
> In the previous episode, we have had a demo of SRTool by David Reyna.
> This weekend he has updated the code base. The next call is tomorrow
> (Thursday, 19th October, half an hour after the end of the Bug Triage
> meeting) to discuss conclusions of first tests and the next steps. If
> you are interested to join, let us know!

I'd like to join.

Steve

