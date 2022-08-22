Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B987BC28D13
	for <webhook@archiver.kernel.org>; Mon, 22 Aug 2022 22:29:47 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com
 [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web10.25096.1661207378635007004
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 15:29:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=c025dauc;
 spf=pass (domain: gmail.com, ip: 209.85.128.179,
 mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f179.google.com with SMTP id
 00721157ae682-324ec5a9e97so333221647b3.7
        for <yocto@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 15:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=Tv6QbTaEIQuk3ELgF5K6mXUnbEfCFvdyjtoQQi4PbTg=;
        b=c025daucId7XCWC2phTqX9JbyOe/UxURQhj6+b3lcZdhYuRCXyj8dbZnQKTgR2zRos
         6UThhSsiC9i81mKZajAJIVPC00B+hsX3PaHMEEbbQZrXd0jpnMtyK35CA2oWVtr3E1C9
         LLCsRT0HxMYPWFrYTxxPIBvHbtjMlkj63rL408kAkgklsPaA7w6XpmdLDmGv1ugF1aMd
         fluCSBAlO0zPFd/8JtvoArFCj5aaykoZOH8ut3e/qFMdkQMQghj6P+pmxn0ll9NdUZ79
         KSiyQXkqNHd2+HYqGblsrUcHKIeyEfPemOiq2fLxVASWkECNOusFUaRFaaYq/2+HmoNi
         eSQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=Tv6QbTaEIQuk3ELgF5K6mXUnbEfCFvdyjtoQQi4PbTg=;
        b=a3KXV15JFfaQojZNHxe+jYD114P+oPDg2bSqdjqwVqvZcPNnWuhs9wze9ipemq7dqN
         OkB/ILQi/wWqlIUX9kDjizGiK9MD9gzyB1DEACV+5DprkUGBBnxUNy1j54PDYDDE8EnZ
         dCnnD37o5f4xrXbZdn7vkTYuh20ndVXcIkcdbQUzGzT94HqenLOZ8En6CcQ+Ubocp8cP
         9ZzuB1W3/qhIJs/zYomrHHIyqYFhAAWm51d6Oa2s8Yk0Or/wHCsM94OZfPu0tFKwYVs+
         Ud6oBvBEwGTqUzHF7OklkncLJgfB9Jg+KRbba82xS/CdsolObSD8ZvaJCOJBy6jO6BNf
         RC7w==
X-Gm-Message-State: ACgBeo0i24TapWpKMnoKFo9pBhIQdW5r4GswRvDf85AO8C/+4wyTJ1Kc
	kT/17LHp8kQvCAHJWqamXIEzYGjC9hf6XNvVHRU=
X-Google-Smtp-Source: 
 AA6agR7z+eg2WeQokV0sIaqqDAlqswLw161GOlzTUc/+px7F0QN4810RS4WgFHazyEwKTpT64HGUqsuuI/iHVEiqz4E=
X-Received: by 2002:a5b:107:0:b0:67c:4077:17f0 with SMTP id
 7-20020a5b0107000000b0067c407717f0mr19873167ybx.363.1661207377542; Mon, 22
 Aug 2022 15:29:37 -0700 (PDT)
MIME-Version: 1.0
References: <53C07165-3951-4450-B175-E323971C8DEC@bitflipper.net>
In-Reply-To: <53C07165-3951-4450-B175-E323971C8DEC@bitflipper.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Aug 2022 15:29:11 -0700
Message-ID: 
 <CAMKF1spvyQh1czn+HiKmppXBCO_tkor_3Ogfj6wguwA0x+tAyA@mail.gmail.com>
Subject: Re: [yocto] Bitbake + Patches
To: bitflipper <forums@bitflipper.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Aug 2022 22:29:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57876

On Mon, Aug 22, 2022 at 1:54 PM bitflipper <forums@bitflipper.net> wrote:
>
>
>
> I was told this was the right group to ask my question. If this is not ri=
ght, please let me know.
>
> I am currently using  Zeus, and with Zeus, we get Apache v2.4.41. But I w=
ould like to get a later version of apache because there have been a few fi=
xes related to cyber security. So I believe that, given we=E2=80=99re using=
 Zeus, we can=E2=80=99t upgrade to the latest version of Apache given the c=
urrent recipe that Zeus uses. Therefore I believe that the only way accompl=
ish getting tho the latest version of apache with Zeus would to be =E2=80=
=98patch=E2=80=99  the v2.4.41 version that comes with Zeus.
>
> Looking at the Bitbake manual, in section 4.1, it states the following:
>
> "BitBake takes several steps when fetching source code or files. The fetc=
her codebase deals with two distinct processes in order: obtaining the file=
s from somewhere (cached or otherwise) and then unpacking those files into =
a specific location and perhaps in a specific way. Getting and unpacking th=
e files is often optionally followed by patching. Patching, however, is not=
 covered by this module."
>
>
> The manual does not cover patching.
>
> Where can I get information on this process of patching something like ap=
ache or any other application that was add via IMAGE_INSTALL_append method.
>
> Any help pointing me to where this process might be documented is much ap=
preciated.
>

look into mega manual something like this would help
https://docs.yoctoproject.org/dev-manual/common-tasks.html?highlight=3Dwrit=
ing+recipe#patching-code


>
> Thanks, Jim
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#57874): https://lists.yoctoproject.org/g/yocto/messag=
e/57874
> Mute This Topic: https://lists.yoctoproject.org/mt/93191096/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

