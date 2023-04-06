Return-Path: <dbaryshkov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7A2C7618D
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 14:10:35 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web10.159280.1680790226286575597
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Apr 2023 07:10:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bUgkFELs;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: dbaryshkov@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id bi31so29115297oib.9
        for <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 07:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680790225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o2OzlMqAq+Hq24ts/PEFo0+7Yecxx3bHIOYpP8+htSw=;
        b=bUgkFELsOn7iHuPnl1pGNKEbyKMx5UaeZKxYx4FxAF66ioelZbyYPjBd3LPU//Dele
         lIk5mkx8FDdAOKNfNwTDboisDTAmVbQozQ68tI7HGXN7psdNTSygopl2VxwlJrYpQU/w
         htXFV7TrLFoMdhyC7u4ao97JV4rl2WRM4ioiz1fT9NL62ZGhWotZF2ltXL6faHhXxhLY
         eRIm0YU9RBZClcRswOqwMGkur22S+BThkppX7ScZhFjsceuAjXA/rcRDSG6uEleLd+gE
         2tTZNIVCHqocyq/UA3ERUdZiN4NS2w0cyYZhG6bJt4cvjT2Uh7uLY2hpRyYximFucVyq
         I7OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680790225;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o2OzlMqAq+Hq24ts/PEFo0+7Yecxx3bHIOYpP8+htSw=;
        b=XE8bCF6sZzHt+IRlGbSggUSp7c4Xf4npnFehEC1TC+FhvgvcuVnbTLoy9mKAq/wREC
         PUDI4nwrqbBMBM2Fo1yvpva4yy1CVrvrjiq278SisjWEtoR9B7BwydQW8CciDB3vZcxu
         btEhDRVOQM6BgykTECGJaBy/uWflB3FV4n+h7EfAcib9XUvL5gS5Hny00Kt0pAIs3xRJ
         Wp0O/moYMhFzCFHuUbHbBHxqrzmjSg16ebhaff809WLF9Lvb/j93zHUTTtxpOPy2eP0H
         lrexSFYQ4SCv3exR4YTbdA59acEwEmZ0nPYnH/pfEB1l35/hQeXvgXpWjvOPaYkjDflB
         /COA==
X-Gm-Message-State: AAQBX9cOeKhzhhVSDzlpecq1O/7AIE6sGWLS0USBy4oYtV7qYDZSFG6P
	zGMoQD0VO+ufJpZb8Y+sAd56/DwfR+HZe/adgio=
X-Google-Smtp-Source: AKy350bUrXc+lyfU/xoX68UD9JLONNtPM6HrXLjxKARQmx8Vxk5WzaY3Z9frAZCHpPEWZV0HJfue4j7QurweVGwA+eY=
X-Received: by 2002:a54:488f:0:b0:386:cb70:3828 with SMTP id
 r15-20020a54488f000000b00386cb703828mr2738515oic.4.1680790225601; Thu, 06 Apr
 2023 07:10:25 -0700 (PDT)
MIME-Version: 1.0
References: <CA+chaQeHS5k780TKWJNZAo2G2pS8-5g2n18nBD720_0+ryv4fQ@mail.gmail.com>
 <30535.1680789674133651247@lists.yoctoproject.org>
In-Reply-To: <30535.1680789674133651247@lists.yoctoproject.org>
From: Dmitry Baryshkov <dbaryshkov@gmail.com>
Date: Thu, 6 Apr 2023 17:10:13 +0300
Message-ID: <CALT56yNVMqxWFp8TvfzV1Astiz5eKbOoOyKQSyx19aWz10-YuQ@mail.gmail.com>
Subject: Re: [yocto] How to remove Rust (and other packages) from yocto build #bitbake
To: Jesus.JimenezSanchez@verifone.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 14:10:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59632

On Thu, 6 Apr 2023 at 17:01, Jesus.JimenezSanchez via
lists.yoctoproject.org
<Jesus.JimenezSanchez=verifone.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> Thank you, SKIP_RECIPE is what I was looking for. Unfortunately, it is a dependency for python3-cryptography, as was mentioned in another message, and the build fails instantly, so it doesn't look like we'll be removing it.


Also in some of recipies your dependencies might be gated by
PACKAGECONFIG flags. You might be able to gate them by disabling some
of PACKAGECONFIG features.

-- 
With best wishes
Dmitry

