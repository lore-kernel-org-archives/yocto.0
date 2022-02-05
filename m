Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AC9C433F5
	for <webhook@archiver.kernel.org>; Sat,  5 Feb 2022 22:38:06 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web10.2555.1644100685634848851
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Feb 2022 14:38:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=Iq2wT3z5;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.48,
 mailfrom: steve@sakoman.com)
Received: by mail-ej1-f48.google.com with SMTP id h7so30597885ejf.1
        for <yocto@lists.yoctoproject.org>;
 Sat, 05 Feb 2022 14:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=qAZ6UgPH5k5a3wIPhpFY5cU4qh0V+rlF1ofwg/JkCWw=;
        b=Iq2wT3z5CeyaAv4Gi0RKFep7fiVABt7R4rw3meL4okLQzKMw9YIyTCuGCjZSNn91dk
         MD693fQLi91nQ0+SpENj26fFEblRIHhhQRtjUVPFKfbHEGdRIbJTDA7fzYoiLtS2DFS1
         Wt9r2jDzohPwBn78hM86LCxO3Q4hLgrt07CDrXGeReqz1vY9JiHX5r3WQVOagCxjxVd6
         l/1NIBH1TkkbpMKTtU9xJVqci9MtIWz4BxwTN4encMU1JEZ2vqVBnNyYuYbjYFP0dTZ3
         oUo6+bqY6EOjGOBegPOokcn9CqevqmsiLHrJ9ZjEdCJtn2xYc75m+pz2DRKdeLsAly/C
         vwkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=qAZ6UgPH5k5a3wIPhpFY5cU4qh0V+rlF1ofwg/JkCWw=;
        b=2LZdJlW17AghScQvP87bMGM8pdpC41GcjdV/r9etOREYd4SiWNC1Ae2s9SZa1TKQsw
         z19CcztseCiiL+yVSZt1rCtVohY1wM2jQcjmdcmcRpcsoofwjDdzn5+g7DN//qpUoaV5
         Jp5nrdezVYwTWLzPkz1VXXwQit+Rx40mvS7zpwNLPJI2ZY+OnDHuoeQS5L9iw8VMGhA8
         hwdKBn1/7ZBL57WaiCGsnWKaiWydsTFX1cMrRDR8LRPA2d/sUTjh9Mi+kgfHVcjW7ql3
         x18bjSGOlff6k/pkZuqF5BKvJx1zB+1J3mHWy/6g7K71L2w1ooPTME11ja/4BEA8ZLOZ
         Hdsw==
X-Gm-Message-State: AOAM5333PcbUtiOqXu0H4CweEZwaY++E1P25NbBJ04TemnYtxzYef47f
	PxAbxD8wJblqQ14Sf1K9mgHKaAkeQXPk+1j5CLDAmA==
X-Google-Smtp-Source: 
 ABdhPJwKYwOIerQd0DxD4rcA/W/5hqTL4CfiwZDQTFIAFqm6c0ZiWekcTM1MS7vkcU6Hp7c1zJ6Yu+RcOnSnL+UcV8c=
X-Received: by 2002:a17:907:3d8f:: with SMTP id
 he15mr4422744ejc.246.1644100683687;
 Sat, 05 Feb 2022 14:38:03 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGUWaEF55UsrqBLdGcL3R0zfPemkTbS-6yRL-NcSU5CNcaFgww@mail.gmail.com>
In-Reply-To: 
 <CAGUWaEF55UsrqBLdGcL3R0zfPemkTbS-6yRL-NcSU5CNcaFgww@mail.gmail.com>
From: Steve Sakoman <steve@sakoman.com>
Date: Sat, 5 Feb 2022 12:37:51 -1000
Message-ID: 
 <CAOSpxdbsiwFK5hU05ym5C4B1AMK8RWixv0H0FO_VAtHt7mQ_HQ@mail.gmail.com>
Subject: Re: [yocto] Resistive touchscreen calibration for libinput
To: Electronic Consult <electronicconsult1@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Feb 2022 22:38:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56086

On Sat, Feb 5, 2022 at 4:05 AM Electronic Consult
<electronicconsult1@gmail.com> wrote:
>
> Hello all,
>
> Apologies if this is the incorrect group to post to, I haven't posted pre=
viously.
>
> I'm working with an Atmel/ Microchip SAMA5D4 Xplained board & a resistive=
 touchscreen. I'm using a GUI framework that has issues dealing with evdev =
& tslib so looks like I need to find a screen calibration method for libinp=
ut, which the GUI framework favours.

Since you are using tslib, the ts_calibrate utility would be the
obvious choice. Include the tslib_calibrate package in your image. You
might also find the tslib_tests package useful.

Steve

>
> Can anyone please suggest a solution for this? I've taken a look at a rec=
ipe for xinput-calibrator & it seems like a possible solution. However my b=
uild isn't running a desktop GUI so not sure if this is a proper fit.
>
> I'd appreciate if anyone could point me in the right direction.
>
> Many thanks,
>
> Owen
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56084): https://lists.yoctoproject.org/g/yocto/messag=
e/56084
> Mute This Topic: https://lists.yoctoproject.org/mt/88928918/3620601
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [steve@sakoman.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

