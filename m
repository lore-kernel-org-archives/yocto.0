Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84E4C4332F
	for <webhook@archiver.kernel.org>; Fri,  2 Dec 2022 19:39:53 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.85617.1670009983418656557
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Dec 2022 11:39:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eFjpNnwO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id bg10so4267517wmb.1
        for <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 11:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlkR0gylofAPBbQWIupQc8dn/0oq+vxpW05NfSBZSJQ=;
        b=eFjpNnwO2jpT6KBuxqHrFdztRYpnlFFjQa4O3rh7n1r4Ky5CZOh9g1X9ANdq9HMbON
         7IVrQlKqu29k93ygZUxbecyc3emkVkTuL0e/oJG/92aJUpj+HZtX9xMMZ1/GnL7r/32J
         pE2ExDLXT/PqCF5q6gRGu59bYcWNGlHAgENeI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZlkR0gylofAPBbQWIupQc8dn/0oq+vxpW05NfSBZSJQ=;
        b=3iTYQYYv2imlAGuCTiJvwcWDipflUSogBWptFNzraMWFEc8mCWimotp2sHzrFQhXma
         ogE92FaleffK+/zQCakc1up0gaVvyfC1wZSM3U8kwsEMz5cc6KJzVCkTSqxonkDya18N
         5KdvWqlkiFuzyAKEZhUcfDXT86fHDifb3FaJeQVDCYZD7HQyGAEsRxTLdEMkYHTyXki6
         uIyWruD/SmJG48kiwOzVsu8oiOkxl3duSX+71QoYrwZFfu64KjYQkvJJp2lN4xQSaoLr
         oCvXhu8gXyLLpz9KMel81mYkdbmjr0UaheQb1CBzLNGE8lfQGt0FbEH9KTahueXY7H2W
         CNPQ==
X-Gm-Message-State: ANoB5pn5Tv1TtAtqUzUZbLknVE/6w508kbS/ISjnngXupZTYM32I/d6w
	kJVs2TBLZI2h4MAyMImC402+hA==
X-Google-Smtp-Source: AA0mqf6Jf6A/1MEjeEn9SELxxj63RvomVxY+JE+L9tdvflFfCZdsy7oINoKQcj5OpzpQA1k94zxKIg==
X-Received: by 2002:a05:600c:21c6:b0:3c7:19a6:8146 with SMTP id x6-20020a05600c21c600b003c719a68146mr54406387wmj.158.1670009981596;
        Fri, 02 Dec 2022 11:39:41 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:c580:b64c:3f6a:8b71? ([2001:8b0:aba:5f3c:c580:b64c:3f6a:8b71])
        by smtp.gmail.com with ESMTPSA id t17-20020a05600c199100b003c7087f6c9asm14084737wmq.32.2022.12.02.11.39.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Dec 2022 11:39:40 -0800 (PST)
Message-ID: <9b7d3116deba7b3e759e4db25cd3a4a7084b6400.camel@linuxfoundation.org>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: add x86
 (32 bit) ptest options
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 02 Dec 2022 19:39:39 +0000
In-Reply-To: <CANNYZj-v4RD2VLh-+DoTH35Hkd--vHwjeEBi4GvBbGi_UhbYNA@mail.gmail.com>
References: <172D0C629E2E932B.27320@lists.yoctoproject.org>
	 <CANNYZj-v4RD2VLh-+DoTH35Hkd--vHwjeEBi4GvBbGi_UhbYNA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Dec 2022 19:39:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58720

On Fri, 2022-12-02 at 19:19 +0100, Alexander Kanavin wrote:
> Is this sufficient to have those builders show up in buildbot (so they
> can be manually triggered), or should they be also added to
> yocto-autobuilder2/config.py somewhere?

Needs to be added to yocto-autobuilder2 as well.

Cheers,

Richard

