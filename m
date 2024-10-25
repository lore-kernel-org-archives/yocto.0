Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B1BD0C5ED
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 09:08:16 +0000 (UTC)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
 by mx.groups.io with SMTP id smtpd.web10.7833.1729847283451252485
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Oct 2024 02:08:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZIxdJ191;
 spf=pass (domain: gmail.com, ip: 209.85.167.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53a007743e7so2212705e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 02:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729847281; x=1730452081; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6x022zZehC9bDwoBAe3d57ii4iZPypKRfnBt8yyqBuM=;
        b=ZIxdJ191jub7iWkYUaSQRy2q8g2C530YKBB31hCbu4u7RleBXiIjf2zLA+RNITCJKV
         YHmX4zzSsTPA0WsLcnmQBSFLNLJucKEIxR1ZN0N+3xkhBHhQH11dLGsmL+pMxW8qrT2t
         hC34bFISDNNyo9D4jDN/PqIK4Whj2AXzyEujd3LJkNVxoFM62Y18Mx6M5pfpQaUrzLuq
         F8lha1fPjoHnMtouOriIFfhVrIq9cjy0R93jn45eyYjavA6REjW0gnDar1AYfdin25D5
         OByreiDNTqn5TD2mqwpk/TZT78Z279Y23pKZ8D0W9DZvrE/v79JsXPmu5mCFjMFWMmpH
         A9Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729847281; x=1730452081;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6x022zZehC9bDwoBAe3d57ii4iZPypKRfnBt8yyqBuM=;
        b=Oa6jlU6w1TBMX0buypVQFfxOyUbSIYBCKKVNMoO03UgHALCqGxSsBNI76PniH9+xGr
         EhfaBMrx+PT14gZabDXHXQxivwNOGq8gSMfv7vHUEKf4QutGF/qxfdorxbSATmA2bK+O
         zQaYf1Is1Usz2b/GgGdiyH0vab6lzykE3xXgxD9L0pQpYQEpoy7NsbkcBVmoxutR69Vv
         S6hNYOX89Eu3UeR5nuqNlLRT3eFWfQ09g3fHayGbPfzCUcsPF6oAtw8yCQehwj+ll1SD
         63JteV8kKT3IdH8AAS51fd7as6AUf9rU50oHfXmf7qBBd9E6GzY6SxFfhC3T9dTbImGp
         JRhw==
X-Gm-Message-State: AOJu0Yy7ZFyGc/BtSRDRpD5MhLa2ieLhmg9KwGE1iZQ3uJqCa7MkBvJA
	2stC2tjYAWmjvfnq52WjrJzdBULLoJ02MjGzVq6OCXsJz1+uCz6m3EL7m8nU3de+XDm2Jw4jyiI
	It0RYPebpDPWnEESnOQ+1jj9/JtHVNA==
X-Google-Smtp-Source: AGHT+IHnsd4h1B9/UsndlgbHdlRZz57boAgKwP9b2GPi9YB5xa7Baj6ZiA8AuhgYHAYHxGwTQzg6JH6SPVWUgr0CCQs=
X-Received: by 2002:a05:6512:3b8f:b0:533:4b70:8722 with SMTP id
 2adb3069b0e04-53b1a31e2c4mr5190958e87.15.1729847281038; Fri, 25 Oct 2024
 02:08:01 -0700 (PDT)
MIME-Version: 1.0
References: <96c0c00e-7d19-4c27-a7cb-f4f98cfca732@bmw.de>
In-Reply-To: <96c0c00e-7d19-4c27-a7cb-f4f98cfca732@bmw.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 25 Oct 2024 11:07:49 +0200
Message-ID: <CANNYZj_-NX_k09uLbbzVrvZWNNV0v+Rae1h=USZPW0w_a71g9A@mail.gmail.com>
Subject: Re: [yocto] version-going-backwards issues with shared sstate cache
To: yocto@lists.yoctoproject.org, philip.lorenz@bmw.de
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:08:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64120

On Thu, 24 Oct 2024 at 19:26, Philip Lorenz via lists.yoctoproject.org
<philip.lorenz=bmw.de@lists.yoctoproject.org> wrote:
> Is this issue generally known and are there any other recommendations on
> how to deal with this?

I don't really know much about this, but I would consider allocating
PR values only for things that have been reviewed merged and landed in
trunk via separate after-the-fact release pipeline. Volatile CI stuff
should perhaps be run without enabling the PR server at all.

Alex

