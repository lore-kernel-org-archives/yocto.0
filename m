Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5413FC433F5
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 18:30:41 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
 [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.1242.1645554640068311253
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 10:30:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bv0TOAaG;
 spf=pass (domain: gmail.com, ip: 209.85.222.175,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id j78so817626qke.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 22 Feb 2022 10:30:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=dlqcipyTpaK3qM/uW5HIgepkUOI57F3QMIrcGfE3Sxo=;
        b=Bv0TOAaGsYINpRSykEnuh9FhrdlF8TmxkzSIgi61sN4AZ0pEQeyRASadfUSmPj5d2m
         44BDFdFXUIlHn9N5Ao+K8jhzyTq0rbiLgWB954VqopqjxYxvIur7hXkpPGClQqMmxUdE
         Y8YZ4dJ+W6z8tGzUukm/tOSry72J25JVtu55NOLtBagemsNrKye7uCN1aiFCfQzZkvCR
         MMB8NHmpeyRQPc6yy9flSis7OoYFcHy9/73YvDlkBpQIIoFlc9nXDG0t2BMrgbW6UkJM
         ZCyz4HgZB8hzU3FnGMf3kooLq4OYEVDuOGEH0yvz6UgHP55xL9OcOzhrp3Cn850UBK9q
         YAqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=dlqcipyTpaK3qM/uW5HIgepkUOI57F3QMIrcGfE3Sxo=;
        b=XBuLdMKOZT7pVgp7GB7KV2uVk6rvy2YZeEO2sPrA9zRNhNsejDTFMqrNXmHYe4PDtH
         M9ea0rOGWZBV9mvDj+1q1Y7RMQ2x+JEokt+3NSfMtTi602CvyZ+YCEzrUlNE1mNpdlbt
         4iykvtMv43g/Egn2QQ1UZsNvGI3gT5agNd9ifTh2Z6N7/l4zO3KFRBllqmYIy5BAXO5d
         cRfB1eXslt/oIWXmiB3usdw1cKEMMKL1Y/7QVHvRUcFhjrWdL4JayGO8vqxkTgpNXxGp
         gcjkBgDdVvyHAs7p15Y3Paj/lOyxGzQhr+x63vlBdw+ZczVpPJDSYMEtwdUn5i5sDMkw
         gKww==
X-Gm-Message-State: AOAM531d3kFk43MLT2mtc+OPPwC87PsElCVCMhlwAf5qCiJg3Qq6qT67
	8nhcmvYg3OHYwgNp3Sc0/Wp+YoZQAqCzloz0cdg=
X-Google-Smtp-Source: 
 ABdhPJx6zr1bHMB9IIHg1uoqW2l6ibRLSzmMyRpDhGrxZfxDRoCQWacxkBClbMkqBicnvoJDFIpDUSDeBWp7ZyQT0zc=
X-Received: by 2002:a05:620a:1593:b0:60a:b223:893a with SMTP id
 d19-20020a05620a159300b0060ab223893amr16202951qkk.72.1645554639069; Tue, 22
 Feb 2022 10:30:39 -0800 (PST)
MIME-Version: 1.0
References: <rBFS.1645540791107768069.EfgM@lists.yoctoproject.org>
In-Reply-To: <rBFS.1645540791107768069.EfgM@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 22 Feb 2022 10:30:13 -0800
Message-ID: 
 <CAMKF1sqBz=nPi_gPSoBmUdA9JoH8FJE0bUfq3J+cXCh4zh4AXQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #raspberrypi0-wifi #honister
To: safouane maaloul <maaloulsafouane@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 18:30:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56248

On Tue, Feb 22, 2022 at 6:39 AM safouane maaloul
<maaloulsafouane@gmail.com> wrote:
>
> I do am building image on a raspberry pi zero w. After flashing the image=
 on the raspberry, i don get anything on the screen. I am doing this the ho=
nister branch. I had the gatesgarth branch and it was working perfectly. I =
tried many thing but i can't get to work. i have literally the same code on=
 a raspberry pi zero w 2 and it works perfectly. I am only changing the nam=
e of the machine (raspberrypi0-wifi ) to get to work. Do you have an idea w=
hy ? I have the sensation that it is booting because the green led is flash=
ing but i don't have anything on the screen.

is it possible to hook up serial console and see if you see additional
messages ?
also try with master and see if you have same problem as honister or not

> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56240): https://lists.yoctoproject.org/g/yocto/messag=
e/56240
> Mute This Topic: https://lists.yoctoproject.org/mt/89317701/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Mute #raspberrypi0-wifi:https://lists.yoctoproject.org/g/yocto/mutehashta=
g/raspberrypi0-wifi
> Mute #honister:https://lists.yoctoproject.org/g/yocto/mutehashtag/honiste=
r
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

