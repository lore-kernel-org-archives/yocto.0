Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76E7ED75BCE
	for <webhook@archiver.kernel.org>; Thu, 21 Nov 2024 07:58:11 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
 by mx.groups.io with SMTP id smtpd.web10.6031.1732175882695445487
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 23:58:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DmEyGLGy;
 spf=pass (domain: gmail.com, ip: 209.85.210.43, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7180cc146d8so285394a34.0
        for <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 23:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732175882; x=1732780682; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JhKudFfeKekQpLS/ZBEw2I3vaujQNCpjFBqHbCMALi4=;
        b=DmEyGLGyY3m9fbYvTdwSBxmKVbI7uXZvb2mJPb9cnGxUePwk9FFOc3fkqn2d/KBPEn
         fhoAYB++5rRzVj6abWkfoijsSrvWYZYnu7qLQ4VBOJJu62gufRrh5+lBAWXWHTCUYcnE
         2z/YJjzrqfoKjrsd1uN6wEMnwyND8hI1u0FJsNJ2uQ4Ot4woe2EZxnWoZC5Tm3jZHvpj
         3u9y+Ed8D2oCOOI67DBiH3CewKW7BQ0k+oK87wycPoaEXHTHljw0I4LsnPP/3iuht14K
         3MSN3LjSJRrPJsLoT39I6sfotR/TFb78oOzU2bvZtcf8OY1+BB9uH78ZCmpGrpBwTirP
         SqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732175882; x=1732780682;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JhKudFfeKekQpLS/ZBEw2I3vaujQNCpjFBqHbCMALi4=;
        b=D7uJoT68eyueze7yvCAACLtBKsqHNvy5aOucCzfPo4bYPq9EY5AtlmjTAx2T6fE0u2
         JwLa38Qj1iZZltClPonaVFkNVgLuGLRA9NbcjxmXKozccnivdgZCqr7a7aj/dEdrCoJk
         A9VD3izApOv756zdWxf6LgCgOQ/QoWZ/yOx2vJnZYKbi8U8Guhu1HSOMdAqqHVApoLLj
         EIqPj+SFymdm4snSNhJlq96ZyJeZHmUcXs0iKSJ9phfCGzXiPyeEU00mmAzFvKolJ9G4
         m5hs74lZ9HFSmlN/wGVGEU2G4zJRHy0E5vHk0W22RyWEvLNBf+OH7fHdd72+YQKOTjum
         7yzQ==
X-Gm-Message-State: AOJu0Yyn7wO/PodaKriEJmdCvAD38MZi71KDFVOfk4UKV3zD578hMAzE
	6pAX/iFxjswKXngS0bCeCEPbeoSCJSpFLUOGf02VGTnNokGPupXxqYm/ww8Bst+SRPF8zwZ1/cS
	+QV3WAow/C6pdePwyySoCakWJNZzXlBXr
X-Google-Smtp-Source: AGHT+IFujwGRHuT3P2ByPz/gjQj5b2LTU857NWuIE3nHxGjXGkjQqyuyrPKnKevOfZrIItafj4M3i47UQhRaV780aUk=
X-Received: by 2002:a9d:6e86:0:b0:718:728:8ff6 with SMTP id
 46e09a7af769-71ab315a2a1mr5758520a34.16.1732175881701; Wed, 20 Nov 2024
 23:58:01 -0800 (PST)
MIME-Version: 1.0
References: <2Snm.1731416185813694899.IyUI@lists.yoctoproject.org>
In-Reply-To: <2Snm.1731416185813694899.IyUI@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Nov 2024 23:57:35 -0800
Message-ID: <CAMKF1sqXW=kxkudU6mrWf6=MwttYUHKDz36hS-jkod9FaBRQQQ@mail.gmail.com>
Subject: Re: [yocto] Unable to find gdb in tmp/sysroots directory
To: yocto@lists.yoctoproject.org, jmeyron@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Nov 2024 07:58:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64322

On Tue, Nov 12, 2024 at 4:56=E2=80=AFAM Jocelyn Meyron via
lists.yoctoproject.org <jmeyron=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Hi everyone,
>
> I'm trying to set up a debugfs. According to https://docs.yoctoproject.or=
g/5.0.4/singleindex.html#using-the-gdbserver-method section 5, I should be =
able to find my gdb in $BUILDDIR/tmp/sysroots but on my build, the "sysroot=
s" directotry is empty after doing "bitbake gdb-cross-arm". I'm able to fin=
d gdb in $BUILDDIR/tmp/work/... though.
>
> I'm using the kirkstone branch of poky.
>
> Does someone have an idea why it's the case?
>

you are using yocto 4.0 but documentation from 5.0 release. I would
suggest to use matching documentation e.g.

https://docs.yoctoproject.org/4.0.4/singleindex.html#using-the-gdbserver-me=
thod

> Thanks in advance.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#64263): https://lists.yoctoproject.org/g/yocto/messag=
e/64263
> Mute This Topic: https://lists.yoctoproject.org/mt/109534232/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

