Return-Path: <smooge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 215A9C433F5
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 23:28:47 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com
 [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web12.7627.1636673326050447722
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 15:28:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PrpFiA8X;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: smooge@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id w1so30416853edd.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 15:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=40D8wuibocI72aKBjMVRJ7b4nZ/+N2E7pBpG8s6+o9I=;
        b=PrpFiA8XKYWMgkejHmVilbVki/YhLAeeyyL583D5W0UJ7BlZoWWmwXM5R+hMDyism1
         jTMxPgNn1YH3kKVUUJdwJCDMtMZzNzwd61G/vtdbu+4Oz3AQBzumc6MAPtTrpPeSYiS+
         Xsm3j4MxTi4lIO7bZ3aIeTbjVLQTT0zyfT48SEQuJGvM0/nmqaE8F05CgLxRmPMODuFO
         u8yhk2laCpLd0LbWMNOrtdrJft9o1E/GOrj/F8Ig9HX+obKUVqOd9LF/EWb19dXiYJyV
         D9gwnHmAb0UTNPpsV6YGasqP05k66LtAGjsz+FufhJVmk/k33yFDufe8IP0kkvL10wt+
         /png==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=40D8wuibocI72aKBjMVRJ7b4nZ/+N2E7pBpG8s6+o9I=;
        b=Bsa9ZzUNrZYEn+cy73wQPIqoVhxLmXH8qhXrDW7EEg9FWCTIQNvVoP5cF5RrxFrRM+
         j3b1grgdyX8VLPG2RsbIlynTBbWTbKWO1eAqbwm9DcaEYv6p4gDhoLXMs5OUTJ3snlGR
         8AGWHBoxoeS41t7nfRlV76Ng02NItKkn6o17yE4WsRGALxTVb4muxldHgnZ1nF+UMiNo
         Nd8yOYjbTrzVwDR03NmzO+wyelTOnOKorsDB22CFujjha5Z61v1lSUgUUbfYYTDueRGW
         M2lqgIjUbaRxc/dvPr/pS52fPfl72IBqoJFg8p4/NSPF8AK4xwfwwhwQ36R1SZA55/yF
         zggw==
X-Gm-Message-State: AOAM533dDNF9gWsOUZOx/cl/os/Td/MBb27AlutQwytoxpbnOLZSNTUr
	S4u8NBFIu5DMZphQ9DnTD5dPDC9LjdK+48CxOcw=
X-Google-Smtp-Source: 
 ABdhPJyZFjiUHXm/yoGmVLNVsOyJEcuqBSEmXfHgABf88728I6XCFCsnrFNgAmM4s1ykOpas+tJudkI2QPLEi7M0GnY=
X-Received: by 2002:a17:906:6a08:: with SMTP id
 qw8mr13518762ejc.200.1636673324215;
 Thu, 11 Nov 2021 15:28:44 -0800 (PST)
MIME-Version: 1.0
References: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
In-Reply-To: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Thu, 11 Nov 2021 18:28:32 -0500
Message-ID: 
 <CANnLRdjO+iCFGhHT6X41kTa5FAJP=fOToR+5DbiTaQVm4K8VpA@mail.gmail.com>
Subject: Re: [yocto] Yocto suddenly creating directories with 700 instead 755.
To: Manuel Wagesreither <ManWag@fastmail.fm>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 23:28:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55319

On Thu, 11 Nov 2021 at 11:10, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>
> Hello all,
>
> sorry, wall of text incoming.
>
> tl;dr:
> If recipes install directories with `install -d path/to/dir`, how is the default mode determined? What can cause it suddenly (that is, without updating metalayers or similar) to change from 755 to 700?
>

when I did this to myself recently, I had changed the shells default
umask value to 077 which caused exactly what you are listing. I would
check to see if the users or system wide umask was changed recently by
an update.




-- 
Stephen J Smoogen.
Let us be kind to one another, for most of us are fighting a hard
battle. -- Ian MacClaren

