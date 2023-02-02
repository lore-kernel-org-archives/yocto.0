Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13E19C636D4
	for <webhook@archiver.kernel.org>; Thu,  2 Feb 2023 09:32:45 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web11.10924.1675330359266278919
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Feb 2023 01:32:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nA2C8Lml;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id u12so2160113lfq.0
        for <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 01:32:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bDkGe2DpxnmImen8H4VuPgdfpmgu+LmVwkVouOdSyw8=;
        b=nA2C8LmlD6XdL0md4DljQZStPcKvOEeZ5kIMwmP0pqRzH10FwGSfncy1in/4nAQ5/C
         Y8sFbQDRe4YVKPjIADTZO9tLSUtNjXkJCl+glLTuenBi5llrWGkXGnRHaV9aWW4s+5h8
         GEhdIOLgF2RX9dmmty5WtLdOTjFrtAVk2Cy8TpXIEPVVNPM/C/ARFN21zgxrlaMqF3Sc
         Q22BqvG7Wo32/Nl1VOfxlVpksR6TNeF1cU/PxrPQ+Wd/Cdqa5/nwWDxOdsJvs2oRbOKU
         4txYfaczKk24BwVZhW+6Lv4i5O8hCXSKcrNbk2rCeI9KAMM9JZFXnbh4aeoX/qqZSx5q
         Nskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bDkGe2DpxnmImen8H4VuPgdfpmgu+LmVwkVouOdSyw8=;
        b=wwb1TZCGd6msBwgWSZTyRb9NSMic5T0WH/4b9pOzLTCokbUPJplZH2NvEmlvuJ7HCt
         T/66hHtVHMsNJwPU0kJ9fYkWmhueQrLqBU+DksrSllYJuWG4qBBmbgpALAmnBuBkLDUy
         VSV1nDSmcGVQhw/4qoJR3AXGRfhwp84uhTq374hZPQrevvbRwcHEEk+15dcf90zi2g7s
         G/j6EzE1GvmZpDV2gkJU8bcW0kBc/S759GibWSw5YQK845Wg0PZnymwckTNvQQtjfdHC
         R5VH3XE+zk/Nnx47VT3t1rbCJ8gMg2JCMDXATpOGCCjE6TkJ3ccBt9OAeZr5r0IKuIQT
         UeOw==
X-Gm-Message-State: AO0yUKUkjYnBYJtheWY7PrEeEbmDLlfPHHXLU5jPLEiq7Ej7gRGBcSrP
	KEDugnioqt0kJWw7MIb+rKQiBJiBIpeiAp+6zqU=
X-Google-Smtp-Source: AK7set9F00kEnOKfxXUSSfwf4DWvgtGCe2bStz4hqOAXspsUtcd5XJ7CPkX5eJQm+Y8PME6eOoZu2mnolc7bata3txM=
X-Received: by 2002:a05:6512:374c:b0:4b6:f2a8:884e with SMTP id
 a12-20020a056512374c00b004b6f2a8884emr978043lfs.191.1675330357208; Thu, 02
 Feb 2023 01:32:37 -0800 (PST)
MIME-Version: 1.0
References: <TY1PR01MB1852A5BFAD6020EA211310D3DCD09@TY1PR01MB1852.jpnprd01.prod.outlook.com>
In-Reply-To: <TY1PR01MB1852A5BFAD6020EA211310D3DCD09@TY1PR01MB1852.jpnprd01.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 2 Feb 2023 10:32:25 +0100
Message-ID: <CANNYZj-7gfsmqHWpeoP6F3YPNdm0bkrxZTbkJGzQgFkr0H2tCg@mail.gmail.com>
Subject: Re: [yocto] Ask for new plan of yocto
To: wangmy <wangmy@fujitsu.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Feb 2023 09:32:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59143

On Wed, 1 Feb 2023 at 23:50, wangmy <wangmy@fujitsu.com> wrote:
> I want to know about the development plan (plan/schedule) of yocto.
> However, only the relevant content before version 3.1 is recorded on the wiki.
> If I want to know the latest development plan, could you tell me where should I get information from?

The schedule for upcoming releases is recorded here:
https://wiki.yoctoproject.org/wiki/Releases

There is no development plan as such (in the sense of a promise to
implement new features and timelines to get them done), as any such
feature plan needs resource (e.g. people with time) to execute it, and
the project does not have that. If you feel there's something
important that should be done, you need to make a proposal that
includes appropriate resourcing.

RP has recently wrote a longer article about the situation, that you
should read, and ideally, show to your superiors at Fujitsu:
https://www.linux.com/audience/maintainer-confidential-opportunities-and-challenges-of-the-ubiquitous-but-under-resourced-yocto-project/

Alex

