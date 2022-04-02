Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C907C636C9
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:45 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web11.13429.1648916139187222504
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 09:15:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=k+Gz9wVE;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id kl29so4288630qvb.2
        for <yocto@lists.yoctoproject.org>;
 Sat, 02 Apr 2022 09:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7ZUHaqMm/llLG2mpX9PvcQhCf+eANfWtZ0urwSIcrpc=;
        b=k+Gz9wVEk45UFAkhVvutvK/ZZ5AfH/Kwe+jV+i7mlKMJJQXWtldVGy1flWytWVxz1P
         L2N+HMNhcUs2uoxKPyLTs1wesDJdH4rIMS2tpowvkrF3CwLCaMBCk9x3Av5qOlZ2hYW7
         1OoH67NoLTJdNWoJbuOTlD2kIn/XZivHAlKkAN2/Q0e3f3/jAb5eIz39YGwdUn0gtsMf
         v4LuxyZPlXAo4sS9hET/N8E/mxV1S0iSXNrTn5PwF5yiWrbSgjunMePwlh8Z7DRaE3L8
         L5uUuF7AfGqvWeOsLFpK7AECViDQsA8J91kRLX2DElCsQN8jVEvzaw9T2CkfJ0nDAfeL
         9ScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7ZUHaqMm/llLG2mpX9PvcQhCf+eANfWtZ0urwSIcrpc=;
        b=WX8D0IFPzn9TyCPXdDWoKzzw2VmOAFQbZQvmAfci0ekATXgWEaF/FCwOdkoKq4B6Q0
         mg8rZieuVdXEpLAHGDrGPwBRQr1lhjzeJDQmU3EO2pxsCTF7D4DOmZ9/i9pJQ8g4lTbJ
         qRcb18qq4/HvG8w2aRas1Z+5hUcBYn4sWla7eE8ylUVS889nI29PWt26HZGRFg+XcDnE
         7g9rdE65FaOiALFW6F+s5hBS49KOBf0zBPZpjxU+/az3PqgrFl1GLkpWWsdW+LzlfFW4
         eOZEHpbAZXkvkdUhEGsbXDzn/PSYYl5llzlwfoMkzO/8jlL5MX+1LUXBLsoKPrIaTu0A
         HBPg==
X-Gm-Message-State: AOAM533LbaNAvsdbQXQWsXXQ1icTMKR8IKrx/aMf/9MZLpk621tB4CTN
	mur2EKlAR5AEbydWEDO0od1U7G1NAYJ6uR2aLRs=
X-Google-Smtp-Source: 
 ABdhPJzK/AwI/+Tt7G3JZeO6LT+QNtGTugbNuM5ukKcfLIctH+gMxyRaqM1X+LQcOoCfS63e/qk1EFyuDuM+Cfot3/4=
X-Received: by 2002:a05:6214:d8d:b0:441:84f3:24e8 with SMTP id
 e13-20020a0562140d8d00b0044184f324e8mr11938795qve.16.1648916138232; Sat, 02
 Apr 2022 09:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <d53c8921e56ece2984cb97f78c4b038f@vivaldi.net>
 <CAMKF1sqZHZRNvW0BY3MfVH+cKv3nRtjTRab_EXJwKGpANu_EZQ@mail.gmail.com>
 <16E1E0852A508284.15950@lists.yoctoproject.org>
 <b4f0f9c76768d68ad2f4b1822d11bca8@vivaldi.net>
 <CAMKF1sqsAEdLEtD6c_vnoNX1FXBZteiDuuMyEiFvMZ4i7n3AXQ@mail.gmail.com>
 <9bb492b8e60e2ba16b978016203341a7@vivaldi.net>
In-Reply-To: <9bb492b8e60e2ba16b978016203341a7@vivaldi.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 2 Apr 2022 09:15:10 -0700
Message-ID: 
 <CAMKF1sqa9K8XJ512VByqDkpPLtG7c7OkvoDsVLysVhukN2bFxA@mail.gmail.com>
Subject: Re: [yocto] Specified SDKMACHINE value is not valid
To: jchludzinski <jchludzinski@vivaldi.net>
Cc: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56643

On Sat, Apr 2, 2022 at 1:47 AM jchludzinski <jchludzinski@vivaldi.net> wrote:
>
> $ git clone git://git.yoctoproject.org/poky.git
> $ cd ./poky
> $ git checkout yocto-3.4.2
> $ cd ..
> $ source ./poky/oe-init-build-env
> $ cd ./build
> $ time bitbake core-image-minimal
> ...
> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>     Following is the list of potential problems / advisories:
>
>     Specified SDKMACHINE value is not valid
>
>
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
> ________________________________________________________
> Executed in    3.92 secs    fish           external
>    usr time    1.07 secs    9.77 millis    1.06 secs
>    sys time    0.18 secs    2.96 millis    0.17 secs
>
>
>
> On 2022-04-01 18:09, Khem Raj wrote:
>
> On Fri, Apr 1, 2022 at 2:02 PM jchludzinski <jchludzinski@vivaldi.net> wrote:
>
>
> But obviously commented out.
>
> On 2022-04-01 16:43, jchludzinski via lists.yoctoproject.org wrote:
>
> There's this:
> #SDKMACHINE ?= "i686"
>
>
> OK it should be ok then. Can you describe your steps to setup the system?
> maybe there is some caveat
>
>
> ---John
>
> On 2022-04-01 16:22, Khem Raj wrote:
>
> On Fri, Apr 1, 2022 at 1:09 PM jchludzinski via
> lists.yoctoproject.org
> [1 [1]] <jchludzinski=vivaldi.net@lists.yoctoproject.org> wrote:
>
> I'm trying an experiment building yocto/OE on a Raspberry Pi 4 to
> host on the same RP4. Admittedly, a not practical platform for
> this
> purpose but it should work.
>
> I'm trying to target the ARM ISA for the image using yocto-3.4.2.
> I've tried simply using the default setting and end up with:
>
> _ERROR:  OE-core's config sanity checker detected a potential
> misconfiguration._
> _    Either fix the cause of this error or at your own risk
> disable
> the checker (see sanity.conf)._
> _    Following is the list of potential problems / advisories:_
> _ _
> _    Specified SDKMACHINE value is not valid_
>
> I've tried editing ./conf/local.conf:
>
> MACHINE ?= "qemuarm64"
>
> #MACHINE ??= "qemux86-64"
>
>
> It's complaining about SDKMACHINE setting which is a separate
> variable, can you check your local.conf if it's set to something
>
> But this accomplishes nothing. Needless to say, I'm a yacto/OE
> newbie, so any suggestions would be greatly appreciated.

are you on a x86_64 host? Secondly try to uncomment SDKMACHINE setting
in local.conf
and see if it helps. Also check if your default shell is bash or dash.

>
> ---John
>
>
> Links:
> ------
> [1] http://lists.yoctoproject.org
>
>
>
> Links:
> ------
> [1] http://lists.yoctoproject.org
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56618): https://lists.yoctoproject.org/g/yocto/message/56618
> Mute This Topic: https://lists.yoctoproject.org/mt/90188098/5071304
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
> [jchludzinski@vivaldi.net]
> -=-=-=-=-=-=-=-=-=-=-=-

