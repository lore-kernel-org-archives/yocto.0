Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D56CDE021
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 16:09:17 +0000 (UTC)
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
 by mx.groups.io with SMTP id smtpd.web10.47726.1727366950937271688
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Sep 2024 09:09:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=edFBdp+j;
 spf=pass (domain: gmail.com, ip: 209.85.161.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-5dc93fa5639so575398eaf.1
        for <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 09:09:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727366950; x=1727971750; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QlAFfKcAyqCrr4znyfWeWR0s9WZ58JcRw3IZTj8daek=;
        b=edFBdp+jhaEHut6bY7pIp4zwC/MvLmkuoPDBOr5VC6INmW4pN6NcWmiyqSTBYofHsn
         4aqlNeFSnysGOA1iyjpw+TA9hepWO0hAzAueAeyPxwjvDawNN8LluUYea/11hvVnaSpj
         srwjkRvbh3f7xR0IbN2RHJKfOJEBx9FuWlOmszmfz1xWAJoeG5X2401mGwsLYCErkuXX
         eDkd5fWBDqLPAD5jQwyDIRrbrde5WpM5oh/0mFyUf5isXEb1EVtpwLhUTZD1y7LIiUx6
         WmwZ6/qrN/F2cF2wX3ieGrCMt+O+xnyGCz0aJAIXrRGElLER0Jy7ZOz7+cGlDvHpdetH
         JecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727366950; x=1727971750;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QlAFfKcAyqCrr4znyfWeWR0s9WZ58JcRw3IZTj8daek=;
        b=t6/6VoZ1r3c5IVt3Oxx5gRhZ5d60NvEdkt13UaB1kgksASDdXOoDN6Z9LKny1QIlDF
         C8GcK/vEHpyw7unI7+lH1XsSq9F60yN0Pxm9x11KBbGI8wGDYNc/Q/Q/T53i2In5SgLd
         RBVqlT5FB1cHdrIyHaTV3zipDkBykVAaA5iofNRGELtSni8aRfLPalNwfivfTL+ARGy/
         Ii7sxrH1SYZSmIoctmLYtvH3Fcuvlx9MA/xoq1XJVOymBB6ZU/4fkDzCZU6wt5X50Mye
         pixt7QlvglV4cm2yxMO7UwTc7wm6fGmvpIfNE8luqq01DlXkkwJUPl8z8Etj4iOfQsCq
         Qfpg==
X-Gm-Message-State: AOJu0YzQ7FuL4MvbNeAHbVrP6g8XXbLHmIca/UevgupXzVSbQu8/WzW6
	FePT384QOAW987gHRSio3RnVecZbnEaq3wdA9OYHcnn+QeLxCB4jr83eltQjerro67KnJ2g2gm2
	AJI4AoWMrXlLMJGraxRcX58BZDwLl3AKi
X-Google-Smtp-Source: AGHT+IFYY56PeCyfOfnL4A6JikeXbiQlgPwcxkBKrW8SFNssoSlfIhm1svivD6RfCEC2PKP3qAuM9PoGXE6Os4+kYTc=
X-Received: by 2002:a05:6870:ab11:b0:270:1295:af54 with SMTP id
 586e51a60fabf-28710ab0ce1mr341397fac.28.1727366950116; Thu, 26 Sep 2024
 09:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <XBmI.1727327966958373700.7wSP@lists.yoctoproject.org>
In-Reply-To: <XBmI.1727327966958373700.7wSP@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 26 Sep 2024 09:08:44 -0700
Message-ID: <CAMKF1srro0TVeRkAzWs==fUg1qL22xy6=3BvMRDwq3kLc2rH3Q@mail.gmail.com>
Subject: Re: [yocto] Screen recording on wayland display server #yocto
To: yocto@lists.yoctoproject.org, poornesh.g@mindteck.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 16:09:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63895

On Wed, Sep 25, 2024 at 10:19=E2=80=AFPM Poornesh G ( India - Bangalore ) v=
ia
lists.yoctoproject.org
<poornesh.g=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> Hi Everyone,
>
> We have a medical device with LCD & HDMI interface running with yocto (ki=
rkstone). I have Qt application running  on wayland display server from yoc=
to.
> Now I have a requirement of recording the entire Qt screen , as of now du=
e to security features of wayland I could not able to able to capture scree=
n using Qt . Please anyone help me with alternatives/suggestions to achieve=
 this.
> Even I have included  ffmpeg, gstreamer  as well.
>

I would suggest to look into pipewire to get this going.

> Thanks
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63889): https://lists.yoctoproject.org/g/yocto/messag=
e/63889
> Mute This Topic: https://lists.yoctoproject.org/mt/108662798/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

