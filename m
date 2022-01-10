Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED956C433EF
	for <webhook@archiver.kernel.org>; Mon, 10 Jan 2022 07:12:37 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 by mx.groups.io with SMTP id smtpd.web09.28802.1641798756857801794
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 23:12:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ra2RSx/G;
 spf=pass (domain: gmail.com, ip: 209.85.160.169,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f169.google.com with SMTP id c15so13075209qtc.4
        for <yocto@lists.yoctoproject.org>;
 Sun, 09 Jan 2022 23:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2PKaznBAGVdftgVwinGPF35YO1SyQx1RUURwVnzpWeo=;
        b=Ra2RSx/Gx0onxPpwbjfry4/zLRmPZpx/gl6hR2Dn7gAwStX+xGwVlfcnj2TpzMUdHe
         WX56EW6ADM1rD8B73/3DxEPeY/KUtvEeoJg4+3XVXb0JQeWEzF4QZUaTn4RKsERoy2Vg
         TdsaV1AGPjozyl615aPhQ3NbDQCs3YBPR1nFSw7NAf3qkbBqmh5yPosHK6iTjwUoBVpO
         obeFljLxU3fV+w0akz7R09hZRdAkOgBAPaN7cVMjrEupYa4FttfjC0UTeCZCsWFGZtE5
         u/+Zs+Jy3256FPv3Q6P/twqp2MTnxHlC9oqHZRAUl2I736yKX6yjtB3z9LyRzQmR4hlq
         YECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2PKaznBAGVdftgVwinGPF35YO1SyQx1RUURwVnzpWeo=;
        b=THcWVdnd/vpAdnumdrdy2UUrS1AdKYD/lqy6+Jyv4qohMcYhp7yUzyq+vfavCdtMob
         6CQ3hMiR7KYGTC0gOD9cT07hLTSFCRvgjaTb3MULcdTT0G/H7ayL+5n8SNb1BlTBp9tj
         DRvA8sUFuU/ZC4G8/lbGRnAuKQtixU8tO5pYUvt0dJcR37vDkU/1RUYkFj6tVwimFIpJ
         2zOOiFpZ63ypwqlRRCKNVNoztNUu3U35QRzMMTxfafvwlHtEiqBuEXR2/eTrpJUvW4Mb
         fTE52WvI4zQZcfRNg29YIx90y9UbOfZP7JnSgGQ0wNXOcsilnIr8J2F17oqbcaR28Qey
         mcGA==
X-Gm-Message-State: AOAM530eurmqWPXdang+dnuZ/OLWtGwl3dU3BEfc2wciH0U6c5vqL7Eg
	dA28lFRjEKDwizIuUY3Y5oVwUaUcIN2tG8rNjOlXTgikjjE=
X-Google-Smtp-Source: 
 ABdhPJwWVq3/CGLCnwAFjTs+LPSMbiW/LERVQ+IpWYXiuJqw24Md42zmu9xbqyb50EJ2JV/XnllhbKCW/25W5Es+0Kc=
X-Received: by 2002:a05:622a:1386:: with SMTP id
 o6mr64465056qtk.64.1641798755924;
 Sun, 09 Jan 2022 23:12:35 -0800 (PST)
MIME-Version: 1.0
References: <lBB9.1641595197305548305.JtdO@lists.yoctoproject.org>
In-Reply-To: <lBB9.1641595197305548305.JtdO@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 9 Jan 2022 23:12:10 -0800
Message-ID: 
 <CAMKF1spk7kawzy3DmGMXaQMF8sJfYM_WmrHi-1KagqEO=Y1-EQ@mail.gmail.com>
Subject: Re: [yocto] #python Freescale/NXP linux kernel python2 remove
To: b.senzio@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 10 Jan 2022 07:12:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55768

On Fri, Jan 7, 2022 at 2:39 PM <b.senzio@gmail.com> wrote:
>
> I found information on how to remove python2 from the recipe and add Pyth=
on3 but I don=E2=80=99t know if/how it will work with NXP. Also, there are =
a lot of people that say Python2 is needed for dependencies, and you should=
n=E2=80=99t remove it even if you use Python3. But this info is mainly for =
Debian/Ubuntu, and I can=E2=80=99t find anything regarding Yocto.

if you are using latest release then py2 is more or less not needed
unless you use perhaps packages like chromium ( which is also now
fixed in meta-browser ) but this is for oe-core and meta-oe layers
mainly
there still might be packages out there in other layers which still
need py2 so you have to check your packages that you need for your
distro as well.

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#55762): https://lists.yoctoproject.org/g/yocto/messag=
e/55762
> Mute This Topic: https://lists.yoctoproject.org/mt/88273074/1997914
> Mute #python:https://lists.yoctoproject.org/g/yocto/mutehashtag/python
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

