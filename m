Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38AE3C001E0
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 19:13:34 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.143099.1692126806829457099
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Aug 2023 12:13:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=ZUYCRjl8;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-4fe8c3b5ca0so9369843e87.1
        for <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 12:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692126805; x=1692731605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6k/aUo216OcqQZIPc0MEm/lOtL18ltiB1zKXzOdvi44=;
        b=ZUYCRjl8TxVIfSZe8mFXiPKP+ry5edJSsQz/IVpBqratQ2Rhop0WcWCVbIPSBZmzlw
         uBtqoCiUl86+U3jat+vAyIsxnwlgw7WmyF3e5KFtFCY6mLXxARSLemfzNcNWQl8iOnG6
         mJa1vXJLZUkXHP5/UOidH28caZGKEBfdhklP6UV2Vn2uxKI6gCmWBAwSPH7n8LnkCsOq
         Nz6iFjegsWPLgawKL5G1mvuJJ8/3df9adATO5Arj0925W58FwDaeaiU3exnS904DnSFX
         lqVcqcd0Gkjr4j7DPOqD5MuPHpAflBmmnr14yUjyFPkhg8w8mbkzxLX+BIKk0YchG8PM
         8qkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692126805; x=1692731605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6k/aUo216OcqQZIPc0MEm/lOtL18ltiB1zKXzOdvi44=;
        b=ZhUeut1T7iwgHak32yFm0yPiKpHrdx5LrtA2PtL+cbL38PAUo6/BhXv29MU6jF1l0U
         S/iGonAwJtUWTvok1UJQQ5gFPKAs8rX6AREZB57DLK3mA1bSUTUtCaXTYZL3Mz+cK/Xf
         85dy71/Xn4bLIRV24XumA4gDd8EW/BDrLtqOD1aAE3MuyHpjhUsocuKcyWedLb1bmd0p
         ZMFv8xbon+nv0jlG1IHUdYnmTqjvW/NIN7/acRPR06xbOKcnw0f60DaZbXx/b+cVuJN5
         xI1X44hiSGgxcVQW1A2I/QFisKTbkjOkkP4S6Pk7mkrCJ4z06SDDtpyr4NsBwUOniLkV
         fz2w==
X-Gm-Message-State: AOJu0YyIROlH7F3uMKq3QYplhYXKs3kIvW7ltWeBtye7vMy3DUpidOJk
	pjfh+dwJ1SNzkwfoyLkubxLh7OaHkO7FWrWuztU=
X-Google-Smtp-Source: AGHT+IF8ThBRqceicKGS0s/GkshliwrYw7PsWYru7WQEnqd3UUzzLepi8DPYauQV+fltEWiYRRqE+KURozR1V/5khZ0=
X-Received: by 2002:ac2:5936:0:b0:4f7:66bf:b263 with SMTP id
 v22-20020ac25936000000b004f766bfb263mr8500667lfi.24.1692126804724; Tue, 15
 Aug 2023 12:13:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb_CCWG_Domp-goEZuViHtMy_y9-5v1GHE1jbohzEGoLUA@mail.gmail.com>
In-Reply-To: <CAK5yBb_CCWG_Domp-goEZuViHtMy_y9-5v1GHE1jbohzEGoLUA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 15 Aug 2023 21:13:13 +0200
Message-ID: <CANNYZj8qfbMCoPcTq=BViDaa6vEzCUb6QbbOXihJoMGEdtn7Ow@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 15 August 2023 (WW33)
To: Stephen Jolley <sjolley.yp.pm@gmail.com>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Aug 2023 19:13:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60803

On Tue, 15 Aug 2023 at 16:52, Stephen Jolley <sjolley.yp.pm@gmail.com> wrote:
> The various systemd issues have mostly been resolved although the AUH did break as a result and will have to be fixed and rerun.

I sent the patch now - it's for yocto-autobuilder-helper, not AUH, so
when that's applied, AUH job can re-run.

Alex

