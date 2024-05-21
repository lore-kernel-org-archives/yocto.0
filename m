Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCDADC25B74
	for <webhook@archiver.kernel.org>; Tue, 21 May 2024 14:26:15 +0000 (UTC)
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
 by mx.groups.io with SMTP id smtpd.web11.21045.1716301573354198107
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 07:26:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TXPKLJ4C;
 spf=pass (domain: gmail.com, ip: 209.85.208.181, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2e3efa18e6aso36898281fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 07:26:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716301571; x=1716906371; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SrUZh0o56aU6PlkoOj7gwDJQuQARsYDSfoiistBoX20=;
        b=TXPKLJ4C5U3kSXlH9iD07ShcoRxsnkdbulyy3R26aT5xPG1Ihx/fKoK2r+Me9nMEYE
         qblbhpQUUuVlCH2DbyHbE/1c2ml3g+kXfdN69U1mm5TM3el9Jg7bfszDknYVr3FGl7uQ
         OmTuzd2gLtNSuUk8qkGnckIUQNjqRE+3foqm6miaBK4QZwHUS+2yIxdEGry+XSTrwiNP
         ve/NbnhW+mYXMRXjZ3jlk2TAGsbP/dXUU9JZDPwIqqJGGVkZPN8Zjge845JjKYvaawvD
         j9FbOFkCyq03Wt2ovbemW/c/jN10a6IpnnM9jNv6w00gw0kZAP9gXYp99/jtkipH2yLf
         iQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716301571; x=1716906371;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SrUZh0o56aU6PlkoOj7gwDJQuQARsYDSfoiistBoX20=;
        b=Ldi77HLR8x+DNMXROfCD/5zkr2YyS/MZakzNAa6zyJz7p39pQI/rawBeD2smDlDRUK
         UJJnmX+PEGAO1jTYE+1ftunwVh1msJ4njQy/yZyVxdKyrBVLaL9YLGleZU5Yt4Yg+kr+
         J816PGP2D7nnnRSBgVWvB7QPSS0Bu2GFxalcnu4as5pYWBXMkrZmRtIpdF50Pnea6LZw
         Y0qoIySDlEYt2LC4MWFiSwT5Hx9GgDszqz77KwkYVtbwWqWtQ5xM+bnd4k+jzofLMQBF
         m0h6l/A6r4+a4K7gmbixlnCMmIIyoFp02dzx9yloqMmRcWEURkaySO7b9JKWcyiWWvwn
         UU9A==
X-Gm-Message-State: AOJu0Ywz149aNHTg1LsZi72VixtRv77nvDmVLW4ODL4ZavOGaGiseyns
	d8tBMZvUafa4zLlk4SM3pF+EhhQvU2LsK5fK//NvuB4ietyMF3NvLFamIdL2GoYvHMXMh2q9VFI
	cYkC5oGMu3Z/pCgZ1FFNFvG3PWMbrAw==
X-Google-Smtp-Source: AGHT+IFgjLnlkaZgSP7EYi7Ez8VlQwK/gVDWP5AqTqPouxnLsF94JvVJo4bkLLSHwqtDQ/qfVb5WudyNKFpYxbV0EFc=
X-Received: by 2002:a2e:98d2:0:b0:2e1:ff62:d92 with SMTP id
 38308e7fff4ca-2e7171b80demr29705961fa.19.1716301571138; Tue, 21 May 2024
 07:26:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj8Vm-PZ+3ARi12HjqGZ0UnvMWqNYPsNRjg0zveTc0T9CA@mail.gmail.com>
 <9920.1716301235291965196@lists.yoctoproject.org>
In-Reply-To: <9920.1716301235291965196@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 21 May 2024 16:25:59 +0200
Message-ID: <CANNYZj_rwBL+uXQvsm9n=ZZikEZoC2Os97qX_M92ZAWK_TwyVQ@mail.gmail.com>
Subject: Re: [yocto] runqemu qemux86-64
To: yocto@lists.yoctoproject.org, sasikumar.e@fdss.co.in
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 14:26:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63155

You need to re-run bitbake after you make changes to configuration in
build/conf/local.conf or other files there.

runqemu itself won't trigger a rebuild, it only starts qemu. If for
example the machine changes, then the files are going to be expected
in different locations and only bitbake will place them there.

Alex

On Tue, 21 May 2024 at 16:20, SasiKumar E via lists.yoctoproject.org
<sasikumar.e=fdss.co.in@lists.yoctoproject.org> wrote:
>
> Hi Alex
>
> I am sasikumar,
> I am an embedded design engineer, i am new to yocto Linux, i have done the step-by-step procedure provided in the yocto project quick build and was able to run QEMU, after that I tried to configure the machine name in local.conf file and it failed
> thus I again tried to run the QEMU by changing the values to default in local.conf file, it failed with the respective error
>
> runqemu - INFO - Running MACHINE=qemux86-64 bitbake -e ...
> runqemu - ERROR - /home/perdaa/poky/build/tmp/deploy/images/qemux86-64 not a directory valid DEPLOY_DIR_IMAGE
> ls: cannot access '/home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf': No such file or directory
> runqemu - ERROR - Command 'ls -t /home/perdaa/poky/build/tmp/deploy/images/qemux86-64/*.qemuboot.conf' returned non-zero exit status 2.
> runqemu - INFO - Cleaning up
> runqemu - INFO - Host uptime: 278.63
>
> I totally  deleted the poky folder and again redone the process yet it is still getting the error, how to resolve this
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63154): https://lists.yoctoproject.org/g/yocto/message/63154
> Mute This Topic: https://lists.yoctoproject.org/mt/106199430/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

