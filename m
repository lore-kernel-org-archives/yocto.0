Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEC9BC3ABC3
	for <webhook@archiver.kernel.org>; Mon, 12 May 2025 11:48:24 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
 by mx.groups.io with SMTP id smtpd.web11.48427.1747050502678679377
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 04:48:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=URCpxXsx;
 spf=pass (domain: gmail.com, ip: 209.85.219.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6f0c30a1cf8so76144536d6.2
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 04:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747050502; x=1747655302; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H1ooqfMgSv7NWx5l/uOGvMHEApIz4kU/JhFpn5vu2oo=;
        b=URCpxXsx2ct7ahQyGuS8vlIACp8MOVDMIMlH5bDIJQkT+M+QEn/P0PAyyewTxLrMsv
         IoBkbJlfWmQ/QqaUv06T6uluJI5wHhOZ5aqhYbuKNtNzl19EvpX4+zYmptmjnR1mhsjy
         ImTghkUjwXB1N+nsSqXHtKcV53DPgmftckXr3Fou5SezaKSu3pRD8Q0+QBWV0qaKzUby
         0uGXWdvUSkHqNKo7S2nqrrKaHphnq61xb73UEljkK9SK5bG6NXXget9SCRCCklMRyX8j
         DhaodECSP3S0WC8IgxUOneeL30QMzLWaFASTg++O+1QzHeWmb10KDbtVw75cfUvUmWPF
         F4Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747050502; x=1747655302;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H1ooqfMgSv7NWx5l/uOGvMHEApIz4kU/JhFpn5vu2oo=;
        b=Z8iZmJ5aA8OGkScc96bHSuFnhXpm3zwD+GvRERH/sMnROPfyhaPB5t2ec5IC2xWfdz
         3aNO4BOPdCXpEWf8dXLXcxKfPXaQvr66hVRx+rdTDIHItnL1rHDN2FfadQUwNdoF4JVS
         /0IBEFUshmtTitzY5AJty2CvGk8Tljjap2ovg/oE++q0fpNemVdUE4YPlxpLKMizE+Es
         bEgtYc7xm31r4EzP0gfyN5wPwV/48SuGIm2jLM/fjmZ4T9CegFaNVvxvmRoIsUilhANC
         UxqYKVPlyQO6Dhw49Z8GEGXT9/ZRHCSiBdGmvoJW7jjVWw7HpfpTg5GHk87s49+B8HU1
         eyow==
X-Gm-Message-State: AOJu0YyZf27IrWn5//uiLJgOiNLVJO0Pi4uOf+kKxYExBB26VXjmdWH7
	zGs2Yhc22jHNVWx15Cp9CHUXGZ5iWIaxVul/8Ne9q08SDKrnncROACKYXyZt2KVXGlDxh0qCEQe
	9tdurWnDFL1sZHKpNY2D/mKmZMeUKMQ==
X-Gm-Gg: ASbGncuAYyDGpXn4e85YSNC4zuxnhod2Q4r48EHVYl0kaRR1jNn/D9MkdWf+8qBWAuB
	tGlZf9XO1ErM9d8O3jHyRCtnV9FzgK3ylwrqp3onkIql2Ito9YinG3tAr4/G+atLEB97ZKvUFDL
	bXbArU6QTClQXXUIkvDpqm3NlWDxKFUcJUahNaeI2DGNiY
X-Google-Smtp-Source: AGHT+IGZxIkHWVlcTUu1rVgGZHOR2UCEukDYFs88aEcjLiGWsXT/KjFYgWXDbm1Rm1yNWOx1VKQJqcGGj79EGzooJM8=
X-Received: by 2002:ad4:5745:0:b0:6f5:106a:271e with SMTP id
 6a1803df08f44-6f6e4840e35mr270948836d6.38.1747050501724; Mon, 12 May 2025
 04:48:21 -0700 (PDT)
MIME-Version: 1.0
References: <PH1P110MB1683BE97556B7C84A7FE68459F97A@PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB1683BE97556B7C84A7FE68459F97A@PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 12 May 2025 13:48:11 +0200
X-Gm-Features: AX0GCFuBCZHTOWNaGU0X2DHduLy8GALa6zOcTOCINiZMI1ZLoN9dk_xFOu4DKuE
Message-ID: <CANNYZj9LU5zr7cx-0RXkP=uKM8Q5OSeh4OgB=YD9_OnF4CSHFA@mail.gmail.com>
Subject: Re: [yocto] Release 5.0 LTS(Scarthgap)
To: yocto@lists.yoctoproject.org, steven.monsees@baesystems.us
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 11:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65314

On Mon, 12 May 2025 at 13:33, Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=baesystems.us@lists.yoctoproject.org> wrote:
> Is this considered the recommended way ?

No, it's okay to go directly to the version you need. The amount of
needed fixing will be large and difficult to predict though.

This is why the recommended way (from me at least) is to not do those
big bang transitions, but rather set up builds from master branches,
and maintain them in parallel with stable release branches. One is for
future development, the other is for released products.

Alex

