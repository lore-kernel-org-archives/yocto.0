Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03CFC4828D
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 12:41:11 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
 by mx.groups.io with SMTP id smtpd.web11.14250.1706791267782458436
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 04:41:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Dybej56M;
 spf=pass (domain: gmail.com, ip: 209.85.167.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-51124d86022so1406169e87.0
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 04:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706791266; x=1707396066; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zjOCcyVKiZrfv4uFUmXJob8lSc9I4FbO6oRzWFZc4+g=;
        b=Dybej56Mho4AlXc8pZP0Qt76uUD3GN2COkVf4Zo6zPzSsOlkrMAwRvuINrYcRBYH/J
         LSlV9xc9egmxPeogBXCkmLTPOoIw+Fl9P6rtnHNqqjmS/n60qQ4pTQt2H9gPVKv2C4eL
         Bwov+rC7y5FYUZlNnO8fDh4EsbrasGlUT23BBimPy24Y4qlqu/84IT3AMjb1J2F0iTIQ
         Stav3umTy0w505vwGTebtWk/F6+7pgFTl9ufzvoNo27A7syiW+ltyZMrNFhE7Nab/t7I
         UE+rv/dZTrN9yvbDUooom6LKLGjRWiZjTdRKlsTOqnJ0qjXBdHhj36rHAsRKYuIomkOa
         TUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706791266; x=1707396066;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zjOCcyVKiZrfv4uFUmXJob8lSc9I4FbO6oRzWFZc4+g=;
        b=p3CpP9X9OVanMW6iMQPkw169aL0PjEulcph3JxWlrypAEX7Tgo/OKkslRokPsjBW/t
         PW1wmfBWY34FqCsJpHnGz/Psrzy3ZojsNXTlz50IDH2IJ5zdbuqftstKM13t5VeovJoL
         JdRzxrztFPlLKwlNYXo8tGHFllO97wWjt/6+X+GCBvmw5Ng9/SusYYD8VbpJ7py8KZYm
         PtCh7woE4esjrce4KSjEc9BcJ6XvgrGcCQ3vBS0fLOIqhcIc8pQ6Ab8Tabz4xFGNlpWq
         zyKYq6HvUjlqtK7V1E9FeT3+u5gHp0ysJ8KjyNWlIS/wHGSZVSCXrYbbj8tA8HKAwNoi
         +Ing==
X-Gm-Message-State: AOJu0YwfbAm8h+p9GtWpmm0+0vLKjlZVMXyKemTyJUI9wzu7EZtOJo3N
	EFDiNx+EjYLItBdLUrQiBw/cu0bvj2oZ97uETzsb30RypO+FiuynEgTjk2yGXIH8O1Ojwq5wp2J
	a/2o0PiNg1Fk4ppINyT6Y3UWqT3Vv9VYh
X-Google-Smtp-Source: AGHT+IHDl4rBoCLe7j5qiHAi5wqChCXdnsXJYvt56c/SAMgGEKmkC7g1I5FssH1MGlMcyk2V0mQbeCEGwfPfZJGTnwo=
X-Received: by 2002:a19:7507:0:b0:510:c2c:36d7 with SMTP id
 y7-20020a197507000000b005100c2c36d7mr1693119lfe.19.1706791265468; Thu, 01 Feb
 2024 04:41:05 -0800 (PST)
MIME-Version: 1.0
References: <2lkB.1706790822146076422.hOyA@lists.yoctoproject.org>
In-Reply-To: <2lkB.1706790822146076422.hOyA@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 1 Feb 2024 13:40:54 +0100
Message-ID: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: yocto@lists.yoctoproject.org, timotheus.giuliani@philips.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 12:41:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62359

On Thu, 1 Feb 2024 at 13:33, timotheus.giuliani via
lists.yoctoproject.org
<timotheus.giuliani=philips.com@lists.yoctoproject.org> wrote:
> we run Yocto for pull request builds on cloud runners. Each run starts in a clean workspace from scratch.
> There is no local download directory and no option for network drives. The latest SSTATE cache is provided via HTTP.
> The changes are small in most cases so that the pull request build spends the most time fetching the sources.
> All sources are provided by a mix of private git repositories and tarballs on a private HTTP source mirror.
> Fetching big repositories like linux-yocto is in both cases slow, more than 5 minutes.
> My question:
> Is there a way to speed up the initial fetch task, e.g. by truncating the history of the repository and just fetching the sources needed to build?

Don't throw away the download directory, and share it between
builders. This is tested, and expected.

Alex

