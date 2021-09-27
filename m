Return-Path: <jdmason@kudzu.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0B6C433EF
	for <webhook@archiver.kernel.org>; Mon, 27 Sep 2021 14:16:01 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
 [209.85.222.172])
 by mx.groups.io with SMTP id smtpd.web08.31945.1632752160491148483
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 07:16:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kudzu-us.20210112.gappssmtp.com header.s=20210112
 header.b=01NATxCn;
 spf=none, err=permanent DNS error (domain: kudzu.us, ip: 209.85.222.172,
 mailfrom: jdmason@kudzu.us)
Received: by mail-qk1-f172.google.com with SMTP id b65so36500943qkc.13
        for <yocto@lists.yoctoproject.org>;
 Mon, 27 Sep 2021 07:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kudzu-us.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=8wKqyFCo46FLADoFtBKTMy5dRGiYVhkSxt1o9PGUroY=;
        b=01NATxCntL2w8U6GzA81Sze/acdsyi+7wHUMIpDb1pesO56mVEv4NPiof0R6VnP4jD
         4Y9B6UYEAY8A/b/SJF31eUV1j0VAW80ZaOajvRvtUmPLwTXLurTP7ngrTTuSfNOwkKDT
         wJWqUJ6GzVui8Q43gZY5edKGf8hsb2MLBrRyBfaSVwHTMjXxQoNm1xDYIIR4rN1N9CC0
         w4z3u26HBAlK7NBmVSWWk679/a1pP0Zwdu0UoK+nOncLpeSWxYSC2O1zOH2FmXrGBdO3
         Go0RTBdSHHyoZulH7S0g18lCANbF+uZBafUSL7jaHbxFxVqtDlF/xq4RsBKfwEeLE2OV
         nCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=8wKqyFCo46FLADoFtBKTMy5dRGiYVhkSxt1o9PGUroY=;
        b=3XdrcmZgPteg4pOPOpxhWcaWGFu9RH3C/Vsj3Py8xBQPgDuBmF1qltJH8VBDm1DKoy
         WHk3xqvR3c/4/w36O3IbpvwxChAQZsFdCT4QSusvWjrYm5F7JWxT4YNFJBzZxxGLIfSG
         TeLxWaDRsaHA9bWWitkiUr6iAl44rpS6DEdrkdkFToW5dnMSwxTgVKK6uNzmsRRlnbkH
         Sk3xfJV7AuNcWxX2GLHkY0UAN5BknhAeYaU8UFBDzq0XLru5JC0ClLVAqzFCoCghIooU
         sQ+KXR+EhfS8u8PphYvFAgTVllYY84vJaUTGzzKmdnb1vidDFZ3EN/XP6SacCQnQj0Gc
         zVaA==
X-Gm-Message-State: AOAM530qw4Zu8uvUN9kQtCwWppcIRRthM1QCLC/Z441mr9gvE8nlIahV
	TqpTZ6E8XPWYtyYtSjTwXutcwhziMM9rVUNg45ExjQ==
X-Google-Smtp-Source: 
 ABdhPJy/Ent2sz9y8bCL/tEwICEHhlTf0fganQ825Dq5w9rsBhCdVqDRoV/7xRxxTWqCGFIKgqmviAvt9fCodoRnyqQ=
X-Received: by 2002:ae9:eb8b:: with SMTP id b133mr201166qkg.188.1632752159590;
 Mon, 27 Sep 2021 07:15:59 -0700 (PDT)
MIME-Version: 1.0
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 27 Sep 2021 10:15:47 -0400
Message-ID: 
 <CAPoiz9yFsC3Ays+dp7=FV6yJ27jYEepLBi9wr-s993Ls5qGWRg@mail.gmail.com>
Subject: [meta-zephyr] instructions on building nios2
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Sep 2021 14:16:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54878

Hey Naveen,
I'm trying to build qemu-nios2 in meta-zephyr, but I'm seeing an error
in newlib:
configure: error: C compiler cannot create executables
See https://gitlab.com/jonmason00/meta-zephyr/-/jobs/1624976601#L1158

Is there an alternative version or library I should be using to get
this to compile?

Thanks,
Jon

