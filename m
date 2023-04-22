Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46E56C6FD18
	for <webhook@archiver.kernel.org>; Sat, 22 Apr 2023 10:21:48 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web10.4821.1682158905387951172
 for <yocto@lists.yoctoproject.org>;
 Sat, 22 Apr 2023 03:21:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@linuxfoundation.org header.s=google header.b=TfWhypsr;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-3f09b4a1584so17955495e9.2
        for <yocto@lists.yoctoproject.org>; Sat, 22 Apr 2023 03:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1682158904; x=1684750904;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=xqUvwrMDROifndAEQ1e90yMnCfsQC0d+Zw+2rFIb9yU=;
        b=TfWhypsr34AppfcJHR0b2dgnmKzcyM2xXq1MdeWbOoLNNsQu1jDAn9js8sQlxmkkzN
         Q6RNKwCjoBu2/AIgsWi9Q0hNvJSrGFNaDJOVjJJl3ot3N8EcrYuWTiATziXjm3QjPN83
         /3hRieFQ6ubN/Ng8YfSbnVhfQXSZn4/PXY1Tk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682158904; x=1684750904;
        h=mime-version:user-agent:content-transfer-encoding:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xqUvwrMDROifndAEQ1e90yMnCfsQC0d+Zw+2rFIb9yU=;
        b=Ejt2QzProKEg1c/G6Uh+Tfgn9WqfZ+xqPQ60QXvPbSItQMNfPz1SOIgRkt6dTmyB0L
         m/eM5TtutWtLTsdcGhC3XTwfc260nFJNBr3IyxTUx0hcZi5uzwDSZUlSwBeYMMsik9xl
         j8qqsn9j3I5TYrbmUNDK33koLF/gdy8CRg2qOLtJApr6ONczClmoQJOd+jWCnmTRsobd
         l+N9lgwqUtID7OlnUe9irPwHalC7PpgZuet6DZkg/j63wF130DwuGazi5rRpv3YTrvIv
         KWtj3YHNsQ2ALTb/+Iw+mkgGiUbA4FNSE1rGhnw+HehRHPj0RP1+7ZFoVhIk/hLt9+2Y
         uk+w==
X-Gm-Message-State: AAQBX9fV+BgWOKuxfHje3yrxkCcc1tx/8/lh+bEb8SqCqGsh9i2xqhJY
	Es8wdcEqhwLJLi+LvIYlkrojmw==
X-Google-Smtp-Source: AKy350ZpJcy142aUz5lzTGFj+JR0WqxPOLqUjfJ45G2wxWsQ2BCRULRuQDByEZ4KXXHoG84wn0W2Jw==
X-Received: by 2002:adf:dd85:0:b0:2d1:9c50:5746 with SMTP id x5-20020adfdd85000000b002d19c505746mr5822625wrl.12.1682158903846;
        Sat, 22 Apr 2023 03:21:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:5f22:3f4c:8346:a897? ([2001:8b0:aba:5f3c:5f22:3f4c:8346:a897])
        by smtp.gmail.com with ESMTPSA id b9-20020adfee89000000b002f777345d21sm6224340wro.95.2023.04.22.03.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 22 Apr 2023 03:21:43 -0700 (PDT)
Message-ID: <d378f74aafb16b2b1bac2bcc6369a98a71c43241.camel@linuxfoundation.org>
Subject: 4.2 release going to rc3
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lee Chee Yang <chee.yang.lee@intel.com>,
 "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>, Jing Hui
 Tham <jing.hui.tham@intel.com>,  Zhao Yi <yi.zhao@windriver.com>
Date: Sat, 22 Apr 2023 11:21:42 +0100
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.47.3-1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Apr 2023 10:21:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59760

Hi,

Whilst we had a green QA report and were thinking rc2 would release, we
did get a user report of problems with graphics on qemu and sato was
inoperable (bug 15100).

Sadly our QA automation doesn't catch an issue like this and it mustn't
have shown on real hardware.

Due to the nature of the bug and the fact we have a fix (kernel upgrade
from 6.1.21 to 6.1.24), we're going to build an rc3. I was able to
include many of the migration guide and release note changes too.

It is build on the autobuilder at the moment. I have chosen to include
some CVE fixes and fairly critical bitbake fixes too since we are
rebuilding and they were available.

Cheers,

Richard





