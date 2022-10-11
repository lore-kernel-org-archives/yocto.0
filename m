Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0880FC433FE
	for <webhook@archiver.kernel.org>; Tue, 11 Oct 2022 16:57:12 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com
 [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web08.9790.1665507428265424972
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Oct 2022 09:57:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EqAR1nCZ;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id
 c13-20020a4ac30d000000b0047663e3e16bso10453148ooq.6
        for <yocto@lists.yoctoproject.org>;
 Tue, 11 Oct 2022 09:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Y87nXnNS9Vu+AkdOrM3qhwCmVmRVAjuapb1jYHeiLwc=;
        b=EqAR1nCZ2vg0dMqMqbN6f9jGNkskouTVoV6pzUZerQNi37Lv62u4YGufL+Bunzi/6A
         +y5+7MQwP3lc1lFHYmnF2X5avpBSj6oRIH9BZunFscT+2HwjMy1ekW4qsx8PoVD63qf+
         otA0//5NoaCD/RYoyep2+5rLpm56ytnbHe4yDkJ81qdTJTIKmXQHFQDuxUMS6+xtiEjx
         Owvj7fe/C3rBLFvGOoKpUPToJDeb2iq3DKXT4SUGjIdmSi+ncTswmww8OHi4l+0m/oAp
         jRbEMSoo9kdi/j0jgUVfInfjAXl27Hes5RUmYyzLNyDAinVHeu7aDF1J6YPOaBWE0Sj8
         MUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Y87nXnNS9Vu+AkdOrM3qhwCmVmRVAjuapb1jYHeiLwc=;
        b=p0SK5NL9SQnqLaaVWIxOoiwEnjRmZ7iIXFYVsbgtAmi1HsxH8EMT8PhkTh94y5tnXY
         V456AkZTvCU5r5iOk9DKpOV/FhltoK10S86YVLbpMIZ/QmHQPszXdhe1CSxoHlBJp7D4
         +C7l8xA6sG+Bo3CVcQJYV57hoGxtUAD6/v2TYjLbPDLzCejmvk6MhVs50DNsyweKjrRe
         KUJJz6vlEPq7tdRAnSzex9HWynvXEFq3qHg36cOqziec2ZxialWUXYlS7tRqoi2l1/wv
         lOnB5Gaun2rRpwcWbRCyxhu20h8VwVmVEP1UnabjpoIaOBcky0OlNOZ01vf7hRmLAML7
         qwnQ==
X-Gm-Message-State: ACrzQf374C4zONdjt4jOaW2dLjW71KkyoTFtAK1Ff/SBWcXv4ZKR6Z32
	C1hXlnyzmSHvOYucocpmBdosAmbvEDArhk8ubaU=
X-Google-Smtp-Source: 
 AMsMyM71we0g9xeRx0s/goNVtfFd/VvlNPzuZcHs8qkZWZL2n8wSM4br3BkJCayitYlMEOOvGHFjf99m2EXUYODZSzk=
X-Received: by 2002:a4a:c90f:0:b0:480:8d45:3246 with SMTP id
 v15-20020a4ac90f000000b004808d453246mr182943ooq.9.1665507427341; Tue, 11 Oct
 2022 09:57:07 -0700 (PDT)
MIME-Version: 1.0
References: <4iAU.1665506177631879836.1HhY@lists.yoctoproject.org>
In-Reply-To: <4iAU.1665506177631879836.1HhY@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 11 Oct 2022 09:56:41 -0700
Message-ID: 
 <CAMKF1srCoSNmAROSwzJUTYqQk2vjo2py679OJFK1Ubx4h+Xw0w@mail.gmail.com>
Subject: Re: [yocto] How to create symlink while installing binary in recipe?
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Oct 2022 16:57:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58322

On Tue, Oct 11, 2022 at 9:36 AM Sourabh Hegde <hrsourabh011@gmail.com> wrote:
>
> Hello All,
>
> I have a simple recipe in which a binary is installed to /usr/bin/. Now, I want to establish a symlink to same binary also. I am using hardknott release
>
> do_install () {
>     install -d ${D}${bindir}/
>     install -m 0755 ${WORKDIR}/test.sh ${D}${bindir}/test
>     lnr ${D}/usr/bin/test ${D}/usr/bin/test-x
> }
>
> Is this the correct approach? Or is there any better method?
>

Looks ok perhaps you want to double check using lnr we have dropped
its usage in master but I am not sure if hardknott needs it or not. I
would simily use

ln -sf test ${D}/usr/bin/test-x

and avoid using the lnr wrapper.

> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58321): https://lists.yoctoproject.org/g/yocto/message/58321
> Mute This Topic: https://lists.yoctoproject.org/mt/94263004/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

