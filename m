Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EF4FC25B48
	for <webhook@archiver.kernel.org>; Thu, 26 Oct 2023 19:20:19 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web11.80091.1698348015374939911
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Oct 2023 12:20:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N1v+3Rl8;
 spf=pass (domain: gmail.com, ip: 209.85.167.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-507bd64814fso1791389e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 12:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698348013; x=1698952813; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yXe8WCXYaYTFPjqCx+4/EZmBRc4gocrVEpXyxd0WI5s=;
        b=N1v+3Rl8t49dfO4gQ/4zsU4UF8/W9o5yXDIvvQUocSLUQxF7OWCqoY9aHVdXlxo07D
         NIcu4jFcM00tgAtSh/JyP7saPJFNvHPZ9v6hmXZ+4jjEdfwC/ruao2YcxVJMwuuETv7h
         mfgNJZPH2SLR30iEhRUMlNeJVHuO1juDKyBOxanyLEBd9uKQ2VvMBnZpJjWvwO3oDodw
         b3/v/FyWQkKy7Uv9j6GfUtO+jnRbgbwojUTECfK9ydFaTYPC/Hrkxh79mIrUjUNkXR3B
         ssMe6n+1S1k8cnTgluYQK6CYtZHQOo4fMmyF5lG8xluSgQx9LBSG6sFoLDcgSZZc0kp8
         l2Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698348013; x=1698952813;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yXe8WCXYaYTFPjqCx+4/EZmBRc4gocrVEpXyxd0WI5s=;
        b=pl54Bk7t+710XoTdvFc2YBg5S4bfGmFVhOApscEXyumqj/J5Y6v+HVciZvxoOHHbO5
         ojcbeO/meRZUTnv7QDHM0UAhJMJXzksJswo0iVwaCu70kJfPvsPqEGmhcod1H/l63u3p
         +4RbUrtdR/NXIwmaGKALkBmIp+7XTIyhTA3csqBTZlICqQJrfaQf0NLg2bca3S0SvNEk
         lpKJOF0/KyCOZrSISpKPfmvZr7unlDAi2LqQC31TR+92PB3PU8Gisn1eqiKVw01pwWnf
         24j5l9kjtePezmJT6o0HsQWbIjbP4dBSBgnw0HmxF/Pynq9E/hRw5Mo0ldThjE97zoJw
         29bw==
X-Gm-Message-State: AOJu0Yybo8Cff6JDoGRm5pCY0MAIybNRgZtTrh/eW6byzagaAyU6BVBD
	N+Ls8CYX4uKPrSjeFOnN00prt++A8Qtko12gsy4=
X-Google-Smtp-Source: AGHT+IEqNu/lwqZ4ajq5kWsUK2L4mj0JN4GHmtCPQS+zffh6voTuB+iUbvQUm8Q3NnmMSeaNNFTdDV79V8woLfIbako=
X-Received: by 2002:ac2:4a81:0:b0:503:2d9d:8226 with SMTP id
 l1-20020ac24a81000000b005032d9d8226mr209077lfp.17.1698348013237; Thu, 26 Oct
 2023 12:20:13 -0700 (PDT)
MIME-Version: 1.0
References: <20231026130340.2070302-1-david.pierret@smile.fr>
 <CANNYZj8bZv_VHPsnaGPa_i2e5NT9683a-3szQTJXKWu9cSZeiA@mail.gmail.com> <a1220b225b84ab44e8d1f6e94b88fb4f2104a36c.camel@linuxfoundation.org>
In-Reply-To: <a1220b225b84ab44e8d1f6e94b88fb4f2104a36c.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 26 Oct 2023 21:20:01 +0200
Message-ID: <CANNYZj-RazsYgjjoM6Vqjqvj0pGWfdUwPBkLsygLEXi8wnHdyw@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH v3] AUH: Add
 Openembedded auto-update-helper with list of layer to test
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: David Pierret <david.pierret@smile.fr>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Oct 2023 19:20:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61496

On Thu, 26 Oct 2023 at 18:17, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> In general you're right, but for AUH and meta-oe, I'm ok with this
> being done serially given what AUH does. We don't really want 11
> workers working on this at the same time?

Yes, I think that's fine for a start, unless it's proven to be
unbearably slow (e.g. days). To help with that I just trimmed the
default auh targets so that only qemux86-64/glibc and qemuarm/musl
remain - that's 2 out of previous 6:

-                'qemux86 qemux86-64 qemuarm qemumips qemuppc
qemux86_musl').split()
+                'qemux86-64 qemuarm_musl').split()


Alex

