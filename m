Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A769C19F2D
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 14:11:04 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com
 [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web08.5175.1660399862701521110
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 07:11:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j20eCthE;
 spf=pass (domain: gmail.com, ip: 209.85.219.174,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id i62so5469981yba.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 07:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=o8tZp4wCppVOXwSYOcXpcNStIbRyFAG2miHLA3bC/f8=;
        b=j20eCthE/7q6gHHslTfawSctxyu32/9A23X7C7rLZpY+URVUJsXesbbPlKpsCDy4wg
         WgqZSyTjWT7b2xzMekakodUXk2DFWYa5xLsYSXyd4rxVkMKRZPuC+zvj0V92afaQLqOG
         1maipr9UBjfGCPQiZvzGKo9TAJ30LkQKsDEWUSsAsRAYh0nR7uh2KH/oKPW6Wsy4EmpU
         KZkJRDTQgegpfGaaZoWOuGVNq4R525YDm4DCUSWpSuhXZEbYTVST1kwo27YZk8dotKOe
         QZBKn6ZluDTh7eqUWOSU+BOyRjFoVoQEtmAsGEssxSdb5OEjQF/n24M67fX/gkGqt177
         YCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=o8tZp4wCppVOXwSYOcXpcNStIbRyFAG2miHLA3bC/f8=;
        b=odMdLGqTbJR4ncBL3+pyQDKv8xC3m03d+fL03aegd1M55fpKUZnzg8lEsYBqN3EPkj
         +qZJPAS2arPIa8+tE38auCRQVgHpYRRPyk4kw4HVe9VsLpQJAqKEE27CD/zyQFkpNjAr
         6V4GaOwvF8kcaj54nIS9jxFQpmAzYJ+GccpJ1QVZ+p951Iifsn49aKckI7IzZ8cu3UtK
         rELdxHvLSMrgsXC+G7ddA6ZPiGaTmpvwxmOKBy+aknPwOtnIT4UqXF8hY0xgfcKXjo1l
         UGm0fdVkkK3RLENIGtfpCYdyavuNXaD4I/7XCIQbOBghObso/2qkQhQvvVjCYx1cyQP1
         rJAg==
X-Gm-Message-State: ACgBeo2oHA5x5D/6MT7YGShOLwf8DgXNcHbx1OfC4FEOtxDdoS98xFUw
	P6EOBifdKYNJcQ7qWHwoSXCPJeD1N6m/Hd4FTr0=
X-Google-Smtp-Source: 
 AA6agR4Kblmn6L67vAHcLStN8IvGj5s1ClemdDlcmILTYxMH+9E6SPXBWztLIrD1cA6eXJN3LRerKFGks7aGSh3tWMU=
X-Received: by 2002:a25:e003:0:b0:67c:3387:ef2e with SMTP id
 x3-20020a25e003000000b0067c3387ef2emr6411520ybg.226.1660399860072; Sat, 13
 Aug 2022 07:11:00 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAHwNHZWC+BJnU34rrm2d3UNKv4gZ3mt9vOug89pgtQxb+wh1bg@mail.gmail.com>
In-Reply-To: 
 <CAHwNHZWC+BJnU34rrm2d3UNKv4gZ3mt9vOug89pgtQxb+wh1bg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 13 Aug 2022 07:10:31 -0700
Message-ID: 
 <CAMKF1sqqKJrzLL3e=2O5F2R1f9t3LW17Q5pb0KwhDSu_15=+1w@mail.gmail.com>
Subject: Re: [yocto] question about PREFERRED_RPROVIDER
To: John Wang <wangzq.jn@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 14:11:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57838

fetcher will try to get versions of recipes during parse phase and if
your recipes are using AUTOREV they will try to poke at git server for
latest commit SHA
are you using AUTOREV by chance ?

On Sat, Aug 13, 2022 at 2:57 AM John Wang <wangzq.jn@gmail.com> wrote:
>
> Hi,
>
> There is a package with two versions, private and public.
> But when I use the PREFERRED_RPROVIDER to select the public version,
> bitbake still tries fetch the private one, and then bitabke terminates
> because do_fetch fails (no permission)
>
> What I expect is that when I select the public repository version, it
> should not fetch the private repository, am I right?
> Or, should I not use the PREFERRED_RPROVIDER to select a public/private repo ?
>
> Could someone guide me :)
>
>
> feature-public.bb
>
> ```
> SRC_URI = "git://public"
>
> RPROVIDES:${PN} += " \
>     virtual-feature \
> "
> ```
>
> feature-private.bb
>
> ```
> SRC_URI= "git://private"
>
> RPROVIDES:${PN} += " \
>     virtual-feature \
> "
> ```
>
>
> machine.conf
>
> ```
> PREFERRED_RPROVIDER_virtual-feature = "feature-public"
> ```
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57835): https://lists.yoctoproject.org/g/yocto/message/57835
> Mute This Topic: https://lists.yoctoproject.org/mt/92997258/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

