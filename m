Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1058EC8748
	for <webhook@archiver.kernel.org>; Sun, 10 Sep 2023 07:42:25 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.32330.1694331742517581521
 for <yocto@lists.yoctoproject.org>;
 Sun, 10 Sep 2023 00:42:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=VhC2hIHY;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: tyrocjl@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2bcb50e194dso58049561fa.3
        for <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 00:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694331740; x=1694936540; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W9Fu/rUrEMXIAJnlbjk+S38wi9WgTUux+clt7p7myu0=;
        b=VhC2hIHYqyM6BSYEbMFcjP1LC8JUquAAl4ufr8ShhPAgpTDUnZFJ5+OH/6Mjm+bVPK
         CELSHk98WXwpBie1uNvylVPJ4v1H3T5qAHom5FxA8QsmyILEVccC1kWuSeDcr+ynkQfu
         1xiKyN3rEuUiY+v0SKg6hsTGbaemyArTC8qMOu2dykVfMJZJAMrJ9ZfOoQwGo/MhjW6U
         dU2D2llT4Ufw65qpa1X/TcoWSV81/tK5ZcGcbLEk9q2B1H7xhOHPEsAsWNXVjgsCkitU
         UJGzXUycep50Hkt0Jc3aZTpiEIZRfp8kGLQCYT5sgamDKD0ykRvr1vQ1R5NiyjqWW9r3
         c+TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694331740; x=1694936540;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W9Fu/rUrEMXIAJnlbjk+S38wi9WgTUux+clt7p7myu0=;
        b=c+fiR/EYwu3UYEcl72d8WW3XEaUv7crUDw1+DlV/ch+ElZx58m9XLHDkeI0kZK6bhe
         39nNiNMBZO+c3NbUSE0b1TeXQvIIosifnYldBkv1LLBzwbgsandYxb+M2Zf1cNO95DbI
         rXpChHG79dZoHD0FDzTbymZ41LjFkNIkmE8uiRiXXUEhpvnoPCQbGKbDSoI/qzcm6gvJ
         JvBKg0X5XIFXWCSURCgAV89fSyMAvaV779xi0uYDa2Kvg+vdD9OemaEgSa/2PKOJjg+d
         4sBXOMXPAxI9aogiIDsUe6FZgideEGr7Pb80RrP3KAwtlQC/Bi5Ei5q2sA/31mt2dmcU
         zwiw==
X-Gm-Message-State: AOJu0YwH8RNA+CI9Ydv31v7ZstglFwdyItVza4TtZ6v1Z73AXYfKtSZU
	MA/dJwuD9u93x1FOdQUoe3A/RlEyD4cgBwvQk8MvHmoeRGnQZQCq
X-Google-Smtp-Source: AGHT+IHle71zUzzKJm5MeHvxonMZfPMHHgHcMyPXNZddVM560pTMDp5M6Ov7KOzGplNOnfRWJKtRlKreYSgLGH8sdzg=
X-Received: by 2002:a2e:880d:0:b0:2bc:b821:84ad with SMTP id
 x13-20020a2e880d000000b002bcb82184admr4341278ljh.16.1694331739233; Sun, 10
 Sep 2023 00:42:19 -0700 (PDT)
MIME-Version: 1.0
From: Jiliang Cai <tyrocjl@gmail.com>
Date: Sun, 10 Sep 2023 15:43:30 +0800
Message-ID: <CANzPQ-D9ONa3ADnRAT0EYGZWmGTf_Qdp77PdBaAC3XObF+cQ1g@mail.gmail.com>
Subject: [yocto] How to add a hook or handler for specified task?
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 10 Sep 2023 07:42:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60954

Thanks in advance.

I want to add a handler/hook for do_image task, not for all normal tasks.

