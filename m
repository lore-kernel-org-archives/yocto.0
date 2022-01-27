Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80E9FC433EF
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 01:50:52 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web12.22456.1643248251482961237
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 17:50:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=dTRX8uqt;
 spf=pass (domain: gmail.com, ip: 209.85.160.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id y8so1305177qtn.8
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 17:50:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8YA+XasFpECcRdOzrm9hGMzQyKYJRajO4imyo83wg2s=;
        b=dTRX8uqt3kcPEmHvazh11LzMQouT0N5LO/wMaN3rJd4DVhSTVvR9afYzd/t5/HCrV+
         sHztJea+7pPrBSs3TU80j9H6AZmQ6XO4cVGa0lr2hfV4pXzqoQypI8VyhyTBftgUNKVs
         2tArTMYVYNYyOPIsoNhvT7PlUqlxHRhGrRM2yHCsS+ptwo38hurGSA5gOTDExnK4h3CE
         OtFwPAJsI+M/3HLN6utYVp7aG/Idwv2NmHSK4Qa5KsulopU7/Lh1AOLssYyCAMD01INn
         U+R/cjZA2Amb4J7pU0BSVnn8Ev9pszeZG0oBxg/H4IhTao/NMg4Fwk4EziMMW/wPpTNn
         lZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8YA+XasFpECcRdOzrm9hGMzQyKYJRajO4imyo83wg2s=;
        b=7ANJScDV/QjnxeKUIAaOCBvmkk2eoJe1s2TTlq2IxakVkoxY8/89NDyN8AzpS6Ahzj
         ir53uqQZYeUwFZPmZyxPqUqQN27H9qjw2HgnAr1cLQlpdnHP0lFT0VofD9BFJ5lKjS8M
         0PescD2vUi/gw61oUrcPS0d7O/pt0/h1HCCBhlnoEWDMczlLgYMKkj3rhzqfyMSBqwFs
         zlVHkqvj7iZ0iT6jFLJUBbEYuHaAjr3zQTd528P2VFnjKvUTFxcGL/0k7YExIPlYvinf
         epREmyP0wdNXGFDYmoyfl7Ha2xmMMoxLnGzXzTZWcF1LjcvENtkbqRkPXz3/NiCMJdOg
         G04w==
X-Gm-Message-State: AOAM5317vKegkCA1g6E9sUONLqWthWmzdjsUchqmRBI2u0PslwKbIMD5
	ZN5Q4B4eaFvG3DT4TqWa/GPsgkCzmWbYc0Jv9zPe7BOapDs=
X-Google-Smtp-Source: 
 ABdhPJyWfW/bAtloFtAcYTplMwQyJSdPu9BtrvpY69pTHe2ddE0SgIWH+40uIA5I9Qiln0duVZWAZ0ATEPkq2V6ppZ0=
X-Received: by 2002:a05:622a:15ce:: with SMTP id
 d14mr1216699qty.330.1643248250567;
 Wed, 26 Jan 2022 17:50:50 -0800 (PST)
MIME-Version: 1.0
References: <16CDAE6528BAE915.24088@lists.yoctoproject.org>
 <8885103.CDJkKcVGEf@linc>
In-Reply-To: <8885103.CDJkKcVGEf@linc>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Jan 2022 17:50:24 -0800
Message-ID: 
 <CAMKF1srJVDL_jyzR5fsB1t9maoFn054VrVo5X0jwfPgJe7+JEA@mail.gmail.com>
Subject: Re: [yocto] Additional hardening options
To: Paul Eggleton <bluelightning@bluelightning.org>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 01:50:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55989

On Wed, Jan 26, 2022 at 1:17 PM Paul Eggleton
<bluelightning@bluelightning.org> wrote:
>
> On Wednesday, 26 January 2022 14:39:39 NZDT Paul Eggleton wrote:
> > Hi folks
> >
> > I've been looking into a couple of compiler flags for hardening that I think
> > we might want to consider enabling by default in security-flags.inc:
> >
> >
> > 1) -fstack-clash-protection
> >
> > This option was introduced to gcc 8.x and provides protection against the
> > stack clash vulnerability:
> >
> > https://securingsoftware.blogspot.com/2017/12/stack-clash-vulnerability.html
> >
> > It has been enabled in some Linux distributions already (e.g. Ubuntu,
> > Fedora).

That is good testimony,  it will be good to know how  this option
impacts performance
and does it work across architectures and libc's supported in OE.

>
> Another quirk of this - with dunfell, the buildepoxy SDK test fails on Ubuntu
> 18.04 with -fstack-clash-protection because the version of meson in dunfell
> uses the same LDFLAGS value for both host and target, and host gcc doesn't
> support that option. Not sure what to do other than just filtering out the
> option from LDFLAGS in the test.
>
> Cheers
> Paul
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55987): https://lists.yoctoproject.org/g/yocto/message/55987
> Mute This Topic: https://lists.yoctoproject.org/mt/88687579/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

