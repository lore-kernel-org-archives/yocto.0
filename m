Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADAC54E58
	for <webhook@archiver.kernel.org>; Sun, 10 Mar 2024 16:11:43 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.40765.1710087102310414128
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Mar 2024 09:11:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=ttws/GBh;
 spf=softfail (domain: sakoman.com, ip: 209.85.128.170, mailfrom: steve@sakoman.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-60a020e484cso23529227b3.0
        for <yocto@lists.yoctoproject.org>; Sun, 10 Mar 2024 09:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1710087101; x=1710691901; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4eFk4+iutXZDu7bb7ZH3LBVXfnbSvk05FDtshY41vJs=;
        b=ttws/GBhaSiGymi3Gmg/xNVyTKUbuRnEQ7cgz+cf/zuDxsQVwUrGwvk7+Ti++EexHw
         QebsZYZmFMEE6MOkAlAczB0XTfNmIGjIuCE7VzxKCuvbDC7cYB/IROUWNcvxWquu3uiV
         FdCtHtcAvgKlWwEG30D7l63B6Y02nWTNKuDBkrJeEqWpYvLO7BSf2UBxA66gMMYSs3m/
         0tSwCqMBIYvBbJ4ktIpKDHzh0nwTnfoGLMSAk0w4paQXYmqAopkiFCIDeOa9EtLTxQX/
         5ObsrhpEDS44XvrwzTqZhbfaFT9sy41FFuMwcIe1fw1A31J9f69dN8U9dbP3H+k2ycWB
         whYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710087101; x=1710691901;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4eFk4+iutXZDu7bb7ZH3LBVXfnbSvk05FDtshY41vJs=;
        b=AFV2Bkc8ltfp8v2WJWGSvtjNsIDuugoYRayQ1dVk20EGxuxZilGlSo3ZQffw2v4ERi
         mdJHOTeDTBKcNyGMYq5YYwjHjKA9eYPBCjmw9kV1PmBVvZFK22AbNfJh6zwoLn1qWmr8
         WOr++fSEcPGmEug5tnfawj1aUWYOUu64pRgky+JDfacCSkjjkoHFVZ0CANAFZYsdvsTa
         ObQq+veL/5xCUN56LYk/TSYq20uE6Wse8FV1bo0+aPXphvo9zEu49Im3ZFoFVGDHtnkr
         DI5S8NjRO8qebne+PnCQYQHDIv4NFcbsGd3yiF84efq/4bspNHtnZnZm8lrgXLsYEjvP
         7p5w==
X-Gm-Message-State: AOJu0Yx714eU4MeV7mO62Sj768gdphTZDoUgiHHoGtUUT58gZspP6KnV
	+GUE7xMB2tuNb6ja1l2D+sX/dIlWpxy0msyRVPzItckG+orHRfnXdqKs3TOd4GpBzD0D7Ab3phL
	wwdGVnYca2ibd3bMlmreUxK2dlpo5nDQYolVTilHjYA/Li4M/ozXqgw==
X-Google-Smtp-Source: AGHT+IEubhpWBSPx7fKggvViUC/v65nkr2stNbLRMCYHoFGnz4TnxcK/XUeSEgfKIruPGS/J8tlpcKpsxo39lz5mBlY=
X-Received: by 2002:a81:a504:0:b0:60a:a94:6ef6 with SMTP id
 u4-20020a81a504000000b0060a0a946ef6mr4330386ywg.20.1710087101323; Sun, 10 Mar
 2024 09:11:41 -0700 (PDT)
MIME-Version: 1.0
From: Steve Sakoman <steve@sakoman.com>
Date: Sun, 10 Mar 2024 06:11:30 -1000
Message-ID: <CAOSpxdaa9X1ySRN2hgnqqEu1Hf34vTSaKGZayUaVxx09GSQOew@mail.gmail.com>
Subject: Final nanbield release build on March 25, 2024
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Mar 2024 16:11:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62717

If you have any patches you would like to submit for nanbield before
it goes EOL, please do so now!

I'll be taking patches until around March 18 in preparation for a
March 25 build.

Steve

