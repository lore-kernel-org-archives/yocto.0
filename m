Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18B68C5479D
	for <webhook@archiver.kernel.org>; Mon,  9 Jan 2023 18:31:00 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.80782.1673289050023375731
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Jan 2023 10:30:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dzwr5W/Y;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id y25so14353937lfa.9
        for <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 10:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1Hro6DSrkDd6ZriXJzaP15R3PTGBSy0L2hW+/vuyfmM=;
        b=Dzwr5W/YhpLLymt9LKwr5vMznGbu2NLmA8IVi+7/UdQiDmt/jDdvc0OjaHF5vSAHUT
         IBwA/IMfYdTZbfJV1FMINKTsNaeGAl+cjeTlGFTf0l4j2yLFyykDTqnrGThsFjm343Ps
         8umjpKzRnuwHOfPgwBer4z8zgeI6cXmzW5s0f7n+1au2odZawS0BtD4cjQbNDd5vN8et
         aM+so51MHEfAnwYvd5vLAI01HI21mNj/zet/CcgftlB4Ulz4MaWEcc/KjV2iW6Tt4IAo
         dia7N351gsoqRkMcAaUNAEkSaC0G1ZbcyFzqzY+zPi7DE+ijm2w+EtanVJcv+2QYMXnv
         k7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1Hro6DSrkDd6ZriXJzaP15R3PTGBSy0L2hW+/vuyfmM=;
        b=c/ChCD2GXgN21o1N3h0dHa9JbG0uz/Qt0V5f1gHNg2jBHZgDWZZbivEpOo7DWuyyem
         dS9PESPdGC2VZI/HVhAmyyQWHV9kotG+xXxoLOdOfVkqSgBlwN1sMi851U9CubWhmyVO
         If011I0MVXqcMgM8JIPtyn6OViMhRhYdlMhvexApTUHxJTsHCm6V2zgBSAOa80IUOSEb
         KUHT8gFjRcVADz3FtNPyiT+Zl8diHJb2Sma0SdJhA6uDwKnkc5f7pEcvQxKXS+pKMo9+
         kqzeq9HHwIzd4dgOc8SjC3GOYQpSMFnzS19OTQ3XANHwO2X+TKY9kl/N8R5lG9V/8fQk
         LeHg==
X-Gm-Message-State: AFqh2kpRzin9Z+Ts9jaTALOei8xv3qDhfzWT2O506JIGHfTsmVvgJqad
	FZ87c0zbUi4Q17K4lyRlkByEnfAQlxC8Kgf3EPA=
X-Google-Smtp-Source: AMrXdXsWaMwYeMcAWCQWxrXpVilrgs40X5W86t33vo+W+bhPnnM6nSHsnn+yWhU438zbOPSMPlLFBZM6mEBMBZEy8ps=
X-Received: by 2002:a05:6512:261f:b0:4ca:fd2a:d984 with SMTP id
 bt31-20020a056512261f00b004cafd2ad984mr2503937lfb.445.1673289048065; Mon, 09
 Jan 2023 10:30:48 -0800 (PST)
MIME-Version: 1.0
References: <0942e45b-2973-f095-61f4-3aa8b90f4080@smile.fr>
 <CANNYZj_ctBSuQG-_rjD8STSmcVCK__DJF-Rg4ngyrNmYgN5N5w@mail.gmail.com> <Y7xboMQghF3h1WVT@mail.local>
In-Reply-To: <Y7xboMQghF3h1WVT@mail.local>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 9 Jan 2023 19:30:36 +0100
Message-ID: <CANNYZj9tCki_0s_popFbTmfN57zBZgvL7_RowkYMpog9UBWJUA@mail.gmail.com>
Subject: Re: [yocto] Git repo setup for Yocto upstream contribution
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Yoann Congal <yoann.congal@smile.fr>, 
	Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Jan 2023 18:31:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58949

On Mon, 9 Jan 2023 at 19:23, Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
> No, please send patches against the correct git tree, else you are
> putting more load on the maintainers than necessary.
> This was the cause of:
> https://lore.kernel.org/all/Y5Sr9HSWIc5LVzl9@mail.local/
>
> This can silently fail and then you need to wait for 7hours for the AB
> to fail and this delays testing for one more day.

We never got to the bottom of what happened to that one. Part of the
patch applied correctly, the other part did not.

Alex

