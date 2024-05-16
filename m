Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24C02C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 15:58:49 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.18007.1715875119146132964
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 08:58:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Xp4ds/I5;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-523b017a5c6so1551769e87.1
        for <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 08:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715875117; x=1716479917; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vHNCNwfPW7zRngGYoSJp21Qf83mA0tnMRBU2pp/NzxI=;
        b=Xp4ds/I5SSKgqRBgj1upLdBEClvZYufxWJSwvoJyrYoCGy+jxBUuObuS/4QgLo8M+g
         ugolECA2Hx+CkOCMvgVM/UWVfL+6Y0fy0V39h6nzlWN5Dv4nQ0i9onn2YoD/2xwRZfvu
         /56kd2yU/U0VEYAo6dOb5c4b5mHTmLp3wa8amfuz3vlmPl03WG3AoUApib4w1MhfZd2f
         tKzYVf5eRwPQRZQBzwnfVJUXSDmIDR96cRST0hQg6gyDyOEDNo+rOEmgryW9AZDJXMK1
         +fhyFKwqo8wwIxrghVLw4CuE/N95JSqnmmF99+TotL4kwpm5/RIDE+RLCHhGxt5lbI65
         pdLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715875117; x=1716479917;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vHNCNwfPW7zRngGYoSJp21Qf83mA0tnMRBU2pp/NzxI=;
        b=iz59SX2X7CvRKUc4mPKeVKTuuOadWBDFMonMvtlOKR9jhFiX0vppZWn0xsRDzpY7i2
         IY/GnrANsbScmU8zwACTs8zmLlVsaxOaIs5cyWh0MV5ceLxcYs2cwtpf1bv86apNUene
         9lJ8p0tPbMSpbHVUAGwgaQRLirWqyDWHfSjH3jK0izcIOh2wwWvrekntMxC69r1Gh1Gr
         jiXaeHclo1WZdhdZm3eIXy17Be3/tPpN3XEwyGtUcVUWhNK4yn70uJsPqVba/f2MiiTT
         D602Bm/42ucvhhf3Gzq0O1NsVPFGCtYoY0x+LW3welSh71PeiTy/CHT/uDt5Iz9eb1MK
         cbkQ==
X-Gm-Message-State: AOJu0YwUpot9k5kfrbCGKwSRtiPLYF/m2tnEGVLHVQPW931mtx98J0ed
	gnqaQX/1juc1HXiNwU8KNqRA8VIpbwRwDMEwOOxQD9MLPSH8PaFIuDx0fFqo7mWy89RkB820ilh
	tPFAYXAvo+7kMJ8V0j1gN1UHwQqZM7Hzn
X-Google-Smtp-Source: AGHT+IEq6fkCYVkv9x4Hkkf5bZmqpQHFGiMpzj+/98HSqS0EC7rUPkJTJo5DCWh678Qyxamfnx8N8mhHsMu0l5o6GfQ=
X-Received: by 2002:ac2:4a84:0:b0:51d:9aa7:23e with SMTP id
 2adb3069b0e04-52210475801mr15279086e87.65.1715875117040; Thu, 16 May 2024
 08:58:37 -0700 (PDT)
MIME-Version: 1.0
References: <ylyl.1715874478415461344.p2g1@lists.yoctoproject.org>
In-Reply-To: <ylyl.1715874478415461344.p2g1@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 16 May 2024 17:58:22 +0200
Message-ID: <CA+chaQcE4CXETG8EN4kd4RbUhF2z8-fdpwpGzed7Pe8o_vx3Kg@mail.gmail.com>
Subject: Re: [yocto] Can someone help decipher what an error means #bitbake #kirkstone
To: yocto@lists.yoctoproject.org, mlynch@hi-techniques.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 15:58:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63122

Can you show the recipe?

Is the AnalogDevice.h file originally under ${S} variable (which is
excluded with PSEUDO_IGNORE_PATHS by default)?

I think it's not based on
"tmp/work/core2-64-poky-linux/libht2/0.90-r0/AnalogDevice.h" path, so
move it under ${S} like e.g. in:
https://git.openembedded.org/meta-openembedded/commit/?h=3Dkirkstone&id=3Dd=
a98a75f37830e69ded0207cc6c73182ab00ec50

Regards,

On Thu, May 16, 2024 at 5:48=E2=80=AFPM mlynch via lists.yoctoproject.org
<mlynch=3Dhi-techniques.com@lists.yoctoproject.org> wrote:
>
> I have a recipe that gives me an error and I don't understand what it mea=
ns and/or what causes it.  If I knew what it meant I could probably fix it =
myself but I'm not sure where to look to do so.  The error message is paste=
d below.  This happens whenever I try to "bitbake" this recipe without firs=
t doing a "bitbake -c cleansstate" on it.  Any ideas would be greatly appre=
ciated because I loathe having to clean it every time I change something in=
 the code.  Oh, BTW, I have 1/2 dozen recipes for other items and none of t=
hem have this issue.  Anyway here's the error message (kirkstone branch, ge=
nericx86-64 target):
>
> ERROR: Task (/.../libht2/libht2.bb:do_install) failed with exit code '1'
> Pseudo log:
> path mismatch [3 links]: ino 172501654 db '/.../tmp/work/core2-64-poky-li=
nux/libht2/0.90-r0/package/usr/src/debug/libht2/0.90-r0/AnalogDevice.h' req=
 '/.../tmp/work/core2-64-poky-linux/libht2/0.90-r0/AnalogDevice.h'.
> Setup complete, sending SIGUSR1 to pid 2308081.
>
> Thanks in advance for any guidance anyone can provide.
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63120): https://lists.yoctoproject.org/g/yocto/messag=
e/63120
> Mute This Topic: https://lists.yoctoproject.org/mt/106137267/3617156
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #kirkstone:https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkst=
one
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [martin.jansa@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

