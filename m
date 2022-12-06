Return-Path: <chrisfriedt@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B09C3A5A7
	for <webhook@archiver.kernel.org>; Tue,  6 Dec 2022 19:15:45 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web11.365.1670354144068946732
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Dec 2022 11:15:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=X+e4skMW;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: chrisfriedt@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id bj12so8557983ejb.13
        for <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 11:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9UyUtV+pvFmgIglJyDhhq4iGcMjAV+XgzMHz+cP4sPQ=;
        b=X+e4skMWyXXhWdGUwfbjG0JLnH5seMPzKRPWwg4divs9HEpGvuPjPrD3SRWZDfu5PH
         qUtmy7J39NpDS/DKct48ad8YF4BoNP/rri8GsSunVurYLW++c79zNcKbqdiwsJsBR2qi
         OmCqA+a1cnsNtj+K0pXeeOzd39Uxq0ZYzQTnz8TD7T0mwutr8a0++HqkgV6qTy9uIpYC
         +cyvJgtlqXbTqqbaptuHdngOYB38os/BIli3/XH24H3xcXvUeaJcHQKmZt0Iacn/Xidv
         omhvQnsXJPa+9QQaZLgYLuKXlJ7MGmTx+frNsJqNZRKTrZ6tEla+nFL2DlIAGcc6xquh
         +hKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9UyUtV+pvFmgIglJyDhhq4iGcMjAV+XgzMHz+cP4sPQ=;
        b=qSvnFd5DYpIb26deOElntwOO4l7ioV7euIElcpX87wurYuIcRBPACuPq2MKAlEM1nu
         HizdYeDs9zDEqJChBcFEdZ3/3BGK1cbX/OaYHalBCqWnuM76F4fEkU0dvI5vWT/3GYNU
         DGdTArj4TyjB/PjYNlK7lVyngOx5c8SU36PUVxpnJLMkl69mm2lY7DJOde9Hd+g9wmRu
         n5TTzxKSZPOdASiHjSiOOW1bC8uqluLDOpS/FQCZwqjxvVT1hvmwWqyxVK7LZqXFIY3f
         vNpGkRCqX/rK2xQVrI+S78VWCgGd5b0Ofo5CBPU0GOfaPFhpz4MTpMcQvxBUWtCf38+B
         CYeA==
X-Gm-Message-State: ANoB5pmMXnRF9EHyKkNARS8o9kbzT8h/AniJu6RjN+dLpLX77u4m0KnJ
	gQ/fplSnFqbT1lZxKd/QG2JoT98kBtTMW0Pmap4dptpYYBG5YQ==
X-Google-Smtp-Source: AA0mqf7erPHdKcrxw9qlv81FUcsfzEFwud64zU43UdlHvgnJRuAiUv0FRd5XKUAAt+aASQTyLWk2+MgCH0Vfw2voXi0=
X-Received: by 2002:a17:906:3982:b0:7ad:8bc6:46e7 with SMTP id
 h2-20020a170906398200b007ad8bc646e7mr12040943eje.28.1670354141670; Tue, 06
 Dec 2022 11:15:41 -0800 (PST)
MIME-Version: 1.0
References: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
In-Reply-To: <CAF4BF-QXr8QVZOF_pPonpJbPN5O5sNjDaL78q1b5qbEcobhBqg@mail.gmail.com>
From: Christopher Friedt <chrisfriedt@gmail.com>
Date: Tue, 6 Dec 2022 14:15:29 -0500
Message-ID: <CAF4BF-Ti50015_P5Z7R+3rrCyQzKviHJU-yHRrUvvoXJCdtvOA@mail.gmail.com>
Subject: Re: do_install hangs on native tasks
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Dec 2022 19:15:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58742

cfriedt  2572369 3821910  0 11:07 ?        Ss     0:00 python3
/home/cfriedt/build-zephyr-sdk/sdk-ng/poky/bitbake/bin/bitbake-worker
decafbadbeef

Perhaps the error is -ENOCAFFEINE?

