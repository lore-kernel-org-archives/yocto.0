Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DCC3C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 13:56:51 +0000 (UTC)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
 [209.85.208.182])
 by mx.groups.io with SMTP id smtpd.web11.12558.1654610202587036861
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 06:56:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ZO2pdZry;
 spf=pass (domain: gmail.com, ip: 209.85.208.182,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f182.google.com with SMTP id b7so6767862ljr.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 07 Jun 2022 06:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Rmt9I2m7svq+inDIsFywrMOc0KYTHKBH7XIg4CAnglA=;
        b=ZO2pdZry4QD4tzEhf7Ri7PVI8/lqSwCp2y6T9/J6T8BxvTgccN3kRrnwKy7BIfdWQf
         mod/p5DyhD31eZMfTuIA2JOlUlLsT7gPEYKNVL73BpMTj+BEk/f2MNC+tEescAQ7vVvU
         DPxiswOtzIQhl+ZefrV8MewjQVGaUdY+zYFW8wcx8/Vi6asqgSHlqBc4JXVhI8Rnx3m8
         ja8JhLapyZDmztWHm0UUBCaW3o56oUrKOzw+Mi6XHcCGQPZCpzGFN9UguBtnbn1SCOUF
         JoQMaWdX/FnrTwI6CsM701Nh6B7U0RUm/m2HoIhDoknHeBWzmcxloqBQ0bZNCb3w35Ic
         U8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Rmt9I2m7svq+inDIsFywrMOc0KYTHKBH7XIg4CAnglA=;
        b=ULGc2XQ5Wonn04LRwmAEP2Y+GBPtmusc7BljxIagWhgd13y3ykVdlQ2gqTduiGSro5
         AOyCTmphvgVcr1tb6PQH42ARSKMPfCD2A20D5BmGz4Ns0G+ZUn/pG7lg2CQpOgXzDi8k
         jM90DZ2FbTzFV4PjSl2bQsBhd8oUxgbz7hCQ3hoDbapYfAVsZZ3X59UxoyPJ2pOr6Xky
         wwQ0k8iubGxGx5WsowJI1sC4nOxD8eUb2zaUtx5SzEMY2ejVfkdm+2kcYSGXgeIBEU9w
         fDQHkxnHrpsC1Qtk0YJUt/Db/1YOHSbHzkV6o4bgWaiDa9gUAUY8hcWnaVabPyuMntf8
         OWnQ==
X-Gm-Message-State: AOAM532qr4+r3UPolM6bB69sbv56XKVT7zBPnBFD/z8gMUD6h50uHZpr
	nR22/vXFWc21khk6MgULIbg+I0Xb2EuxAlOjQvfJbMDWFxvW8g==
X-Google-Smtp-Source: 
 ABdhPJwjDydWIbP+VFDvDEEoq9ESxNMEdv9Y7j/P5gj/wlZMaNEOjNFD9UU8Q37tg/RyYmowKa9Y84DnF07XY3mQn+g=
X-Received: by 2002:a2e:97c7:0:b0:255:69f4:b9eb with SMTP id
 m7-20020a2e97c7000000b0025569f4b9ebmr17726247ljj.109.1654610200620; Tue, 07
 Jun 2022 06:56:40 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CANNYZj9pQhqgTnxhLqNUReNWdGGHPouaiLcBU7ShWCF9bV8Oxw@mail.gmail.com>
 <9515.1654604517673689637@lists.yoctoproject.org>
In-Reply-To: <9515.1654604517673689637@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 7 Jun 2022 15:56:29 +0200
Message-ID: 
 <CANNYZj_u=Vmj7D0rsdTsWwMWn+yXSjxT7wikabDFNu5e73rhjQ@mail.gmail.com>
Subject: Re: [yocto] How to remove the python3 from Yocto SDK
To: Vinothkumar Eswaran <evinoth1206@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 13:56:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57289

Python3 isn't directly pulled into the SDK, but is a runtime
dependency of other items, such as meson. You can check that by

$ bitbake core-image-minimal -g -c populate_sdk

and reading/grepping the .dot file for nativesdk-python3.

Meson in turn is pulled in by the sdk packagegroup:

$ grep nativesdk-meson task-depends.dot |grep packagegroup
"nativesdk-packagegroup-sdk-host.do_package_write_rpm" ->
"nativesdk-meson.do_packagedata"

I guess if you drop all python consumers from packagegroups, then
python won't get pulled in either, but that is swimming in uncharted
waters, and you'll need to ensure replacements from the host are
available.

Alex

On Tue, 7 Jun 2022 at 14:21, Vinothkumar Eswaran <evinoth1206@gmail.com> wrote:
>
> Hi Alex,
>
> yes the absolute path works. May I ask why python3 is part of the SDK and is it possible to remove it from the SDK ?
>
> regards,
>
> Vinothkumar
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57288): https://lists.yoctoproject.org/g/yocto/message/57288
> Mute This Topic: https://lists.yoctoproject.org/mt/91597064/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

