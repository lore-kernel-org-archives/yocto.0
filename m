Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B89FCEE33D
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 16:56:30 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1905.1763484989800855894
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 08:56:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bNvUjLg2;
 spf=pass (domain: gmail.com, ip: 209.85.219.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-8826b83e405so83483996d6.0
        for <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 08:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763484989; x=1764089789; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0D9jz4I6V+IvK2BkJLFuZSvg2GFVjC8fzKBb/sYr3+8=;
        b=bNvUjLg29KWiGEODY37xtFQgqCF+gO0QQe0TxBlqhiRuYxjE065JL4+aR0yfutAiAn
         E752XcSY0fRWgm8sRaSgKtsg2H5H6chX1FORpDmTkrZIejIkJhEa4NJszbeeV5DRw5b7
         o9KvrqLj9T2ik6XL0Nw+g9ZxQ7ltMtUoclCKbdz57DgR7AHeqpNjAbl38pOaEXlfUPBT
         g+I+U+pUr0pONru7Wly/EjitPWInTJK2EWrxYSmkiiN2rmodRZW4aeFNVoGo7odPlbpO
         h3VKagLqeOKEiue7R3pLkWpRSQjCwv79+rDs3QYL+imujhqmWOrBGMCNWa4SAbEmhayF
         t+gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763484989; x=1764089789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0D9jz4I6V+IvK2BkJLFuZSvg2GFVjC8fzKBb/sYr3+8=;
        b=syMlPNeYJ7TygBejVcHEQztA6TB6Ba/ZGYzRzjDyhqVRGVcaw3FdF5MfK6ItiLPpfu
         mRQC5NG9QrTrn54BkxuWRZhdqq0agIXQN/TWJlpKzslGh6LriLWuaJDeCw4H/haUVq+r
         ig22I4UJ3WAUYnzXEI29ZDYFs0ByN7o+uje9ctlrF5hBX/VxFFV1ajk9LeJ5k663WJpG
         IRteZHupEhXYX/wAWVJJoXvaXD5dW6smYCeJvREsbseW/ulIZDLDbCfkDOkQL1l1B3zt
         bTodoyXBwqVS8KSl+2eWhOeHxK4ucyLhQEOiAccc0xcQ99bOMATu9d/uHCsNnQl91lCu
         9V2w==
X-Gm-Message-State: AOJu0YzZ57840v4qKv68vLP9MngE+I2mRf+whw0hHbwDmyWpMKY9DI6y
	iV3+RjDHKiw41zg8iL25Mj6aPyyOd3O/U79mrqrspwu5mS4bv1xzXXMU9bYjiRlbpbll4e9DnQa
	hQZdC8DyQngx5gdkQVbVDEeVgkBuJ4eI=
X-Gm-Gg: ASbGncv2ahNWTtx2y7fTjiyMW7PP6LteUKV/6BrowXdZ9cE2/jwR9n4VfX7NmJBIKFi
	M4pm0UarKYCNzvTZdeAv97VdAn0IGWI3geCKtNFHqRpzNZPDcOnURerwTHSFg+Kp1iMdbe0qKly
	Q1MSCb0h2saLCfxK6yuJ69V2mvfzGZv5Nyjx/xwojj59ZRLczMTXKaxjWXDwCcnG+cpnSOfBL/l
	+Po8sJd6yqvnh29koyERonGLgZLaEsVHv2UwL3pe0K06xx3IBiW2ynDYd6gEq63GsehuV8gFUsG
	DPAEnf1PuPQfRiY/ly6IYgkppiIPa1fIvD4lYQ14
X-Google-Smtp-Source: AGHT+IHZlPxgpbT2Q3/kElg8YQgwZ3vXkxMKj4ZusSHC+puu0et+icDeyA3sE7I94CGk/jj37inhtaeY90DI8GJZSgo=
X-Received: by 2002:ad4:5c66:0:b0:87c:2206:2e3d with SMTP id
 6a1803df08f44-88292608356mr201442006d6.25.1763484988789; Tue, 18 Nov 2025
 08:56:28 -0800 (PST)
MIME-Version: 1.0
References: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
In-Reply-To: <CAK5yBb8SJ79GDs5aGpz0MGuNNdKf26Z7nw81yNtAsUr9VNq01A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Nov 2025 17:56:17 +0100
X-Gm-Features: AWmQ_bkuE6AaWWA5avengI4U9gI6ucRMjKRTJlULWefjcytgLpzSa_8pzBkoCB8
Message-ID: <CANNYZj-=_OYQsfqUKoMcSU3m5whK=XwTB3anD0-8XykfqbE5Hw@mail.gmail.com>
Subject: Re: [OE-core] Yocto Project Status 18 November 2025 (WW46)
To: sjolley.yp.pm@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	",openembedded-core@lists.openembedded.org" <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Nov 2025 16:56:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66031

On Tue, 18 Nov 2025 at 16:55, Stephen Jolley via
lists.openembedded.org
<sjolley.yp.pm=gmail.com@lists.openembedded.org> wrote:
> Patches in the Pending State: 175 (16%) [last week 153 (14%)]
>
> https://autobuilder.yocto.io/pub/non-release/patchmetrics/

These both seem to have rolled back to about one year ago and show
situation as of 2024-10.

Alex

