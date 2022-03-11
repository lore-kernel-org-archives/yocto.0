Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA00C433EF
	for <webhook@archiver.kernel.org>; Fri, 11 Mar 2022 07:28:30 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web12.3169.1646983709207259210
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 23:28:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=hQ7UP6dH;
 spf=pass (domain: gmail.com, ip: 209.85.222.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id v13so5893254qkv.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 23:28:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l8rR+Alt9tgFNIIpZEr/zvhU/2RInhny+WMlebmP3xo=;
        b=hQ7UP6dHAoLbowra9Lke7c/A2Rhoeo2vQGhOn9upM6IFtB8WptF1mgFuhJ8XCzf345
         BeZD5dGMHHuo1ae6v9jNMOkKlx6bVy0tfoay38lH79LBQaOxgXAQ1xGKwcHhCnBhX2Jm
         TA8KOBdkhXV3J/tbK3GzyqkgXiUzkyLBPDNdJpF6NttXpEbtMUEefUFEl+xp1euV8OYD
         EMXztjWAk6qseOxw5E0NbrD6ckE9rloFS0vfUA3JGgiDxtY4SavcxBmlTdYAyQ6QdO9B
         yVhK6r32VG/vCzZWeZoXX/pcNPWlKG8VoeBdwx16E8kvwG+8dH6x8hGHCwFCAqk5kYEI
         rCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l8rR+Alt9tgFNIIpZEr/zvhU/2RInhny+WMlebmP3xo=;
        b=Uen3Jd5M2gSzQYodWOK6pmZXvi8YzbRRJR8KhQkalvU+IfCqriDAM6/5j6rOLKmkCb
         CZNlno4mCQlBLS7H9w9IWAd2KxDVlxoDgAtGJL00HnjJ0CRGBLo+lfx16PaDnxzmWbFo
         HZYHwO+GAcz2q97IgCSwZAyLK2/1NsahmiMrnnqlpfeXgW20U/m98j6hHC+OCgpk12OE
         VqSb6qevpF4SaXrk+syOpWmgUYPDKX+b7yB1ZcUwBGt1hyJMrdRezO5/TMszmlQaMXEG
         SgZWCkaKSCeqkkii8r9WhqyEm367GbCYAU2DlrPRNPPKpR42Cgg8FAqtFoyXC97tzIc+
         Q6JA==
X-Gm-Message-State: AOAM530ks14mA8o63O0AncR/DFdO87pmeSxCpJoT9KnPBr/57wXv+3o+
	WMDW30zTkv7xVaKW/yOR24PnQJ3VrNZTUv/kRWcAC6vAgpQ=
X-Google-Smtp-Source: 
 ABdhPJx8P4QvMg/aBYf5zKkJ9uRNCZCoH2OGJsSNgeAnqueKT4oBwU1Gex23GLhJwGvD4kBJAgrZ/YaVQc+/WyFeH10=
X-Received: by 2002:a05:620a:4626:b0:67d:1857:cdd2 with SMTP id
 br38-20020a05620a462600b0067d1857cdd2mr5427484qkb.227.1646983708177; Thu, 10
 Mar 2022 23:28:28 -0800 (PST)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107CFE67827C60D3FAE3097990C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107CFE67827C60D3FAE3097990C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 Mar 2022 23:28:02 -0800
Message-ID: 
 <CAMKF1soBjQy1e9YxgT+drWF0MhMhmxt5_GK4EXXE-y+DVEK30w@mail.gmail.com>
Subject: Re: [yocto] nspr-native does not build on Debian bullseye for x86_64
 target?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Mar 2022 07:28:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56420

Thanks Matthias

There is a patch staged in master-next to fix this. Can you try
master-next meanwhile

On Thu, Mar 10, 2022 at 10:51 PM Matthias Klein
<matthias.klein@optimeas.de> wrote:
>
> Hello,
>
> Has anyone had the same problem with the master branch since today?
>
> For me the build aborts as follows:
>
> /home/mak/yocto-ocean/build/tmp/hosttools/ld: ../../dist/lib/libnspr4.so: undefined reference to `dlopen'
> /home/mak/yocto-ocean/build/tmp/hosttools/ld: ../../dist/lib/libnspr4.so: undefined reference to `dlclose'
> /home/mak/yocto-ocean/build/tmp/hosttools/ld: ../../dist/lib/libnspr4.so: undefined reference to `dlerror'
> /home/mak/yocto-ocean/build/tmp/hosttools/ld: ../../dist/lib/libnspr4.so: undefined reference to `dlsym'
> /home/mak/yocto-ocean/build/tmp/hosttools/ld: ../../dist/lib/libnspr4.so: undefined reference to `dladdr'
>
> Best regards,
> Matthias
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56419): https://lists.yoctoproject.org/g/yocto/message/56419
> Mute This Topic: https://lists.yoctoproject.org/mt/89705731/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

