Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77518C433F5
	for <webhook@archiver.kernel.org>; Tue,  2 Nov 2021 12:25:07 +0000 (UTC)
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 by mx.groups.io with SMTP id smtpd.web10.14.1635855905377101903
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 05:25:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=mH1qJ0+a;
 spf=softfail (domain: sidebranch.com, ip: 209.85.160.182,
 mailfrom: leon@sidebranch.com)
Received: by mail-qt1-f182.google.com with SMTP id h16so14207890qtk.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 02 Nov 2021 05:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=iHvrf1cmNsZLaEZ+MDnZB4D9SCQ1Iph7nBm5m7bfgIk=;
        b=mH1qJ0+aSIeD1rCByheXl3RFlGKfE0jLlwBxJkFbNLwqlOKvFeK6BmvfZVsFyMKXrA
         brCZ9O9EUBwC4H2bXCHijrFBOHxXtViYLKhF8VyTecc7qMKIQqyzYQgsA3u3WbPZ37h/
         j0mZazPDbzwU39Z5Jl1uxFIS8Ooo/PqNr/H1YC3lJvYDKF9CeeYomXRY6ctjiqocc/oi
         g9PzSq63N0JSi5PV+TwU0b/5ZLc8Hm9WAeR3JfxuMawro6KkUDhyY7Dcwe5hg32Y9fTX
         Ow6RXFVuGlAo8g8coMj7FM4IUkEkIjOYapVlfdtg+q8ZFJ7vM8GLMQdNoOyzdwmHl4Hd
         1TuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=iHvrf1cmNsZLaEZ+MDnZB4D9SCQ1Iph7nBm5m7bfgIk=;
        b=EwC1M2LeLgblBhq2CxBSfOIAgfWUPwyV1t32Z4vD1RUxUQ/DpbxaMm775uDqh1f5u5
         z+jgmlUN9WQLn23mSPJ7uNGKvNCKxrCMyLommeRPRc8YM/H7jH/kMW96Qe9QJ5g4wTFX
         2hTRnbSLL46YkPOidBdYhJVd5XPinCQ4jeb2V86FwxUxHHqzqQs5Qvbp/e40h/vt034c
         Yo6lXbawE5tjJmMyfaOJYzuBHIRgxy4Rf3INqga+BSMMTB8pxuow3c4RAZKE3pMPE7nn
         Tp0whzTcXpYdzue2FicpFEgH+e9uwdl6oslzSkajtLZ5op5YCMbz6+UN+dWJd9/wvY1T
         t3UA==
X-Gm-Message-State: AOAM533eDfwGEO+/zWqoaCiLvCgi36QzS0inTa5BuIY3jLMYErUo+hDW
	QzLkB3TjaZ32OOodN4YkgOMYJ6Wdk8cPMcYk7NCPUQ==
X-Google-Smtp-Source: 
 ABdhPJxX3fmplTl/ih5GiKgNrBmPKQCE/4Y34m7dkwoaIyPJ9BERsHqG76i74Fg4/e2jjethzGxJUbd7/tzlFK/zfTk=
X-Received: by 2002:a05:622a:13cc:: with SMTP id
 p12mr38476391qtk.227.1635855904119;
 Tue, 02 Nov 2021 05:25:04 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B3B74A6EE24C0B.31515@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B3B74A6EE24C0B.31515@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 2 Nov 2021 13:24:53 +0100
Message-ID: 
 <CAMjhiJiGdjYTSL+tkdjY9tQELJeiBm7hGxyWXUfc0rsZjM9FGg@mail.gmail.com>
Subject: Re: [yocto] yocto meta-intel preempt-rt
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Nov 2021 12:25:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55212

Hello Steve,

I have been running the PREEMPT_RT for Intel platforms for a few
releases, I remember it fetched sources from a GIT branch for -rt
(PREEMPT_RT). So it does not need to apply separate patches in that
case.

Could you check if this is the case for you as well?

Regards,

Leon.

p.s. Slightly off-topic, I moved away from PREEMPT_RT in favor of task
isolation mode, where we use one CPU core in isolated single task
mode, for *much* lower latencies than PREEMPT_RT can provide.


--=20
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com



On Tue, Nov 2, 2021 at 12:30 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> I have an Intel based platform, and was looking to implement preempt-rt o=
n it to test.
>
>
>
> For Intel, the meta-intel component recipe appears to supports =E2=80=9Cl=
inux-intel-rt=E2=80=9D, and I can build my intel based platform with this  =
and it boots=E2=80=A6  My platform kernel is currently 4.19 based under the=
 meta-inteI component I do not see the rt patch/patches being applied=E2=80=
=A6
>
>
>
> Is meta-intel component recipe building the full preempt-rt support ?, or=
 do I still need to apply the patch ?
>
>
>
> Thanks,
>
> Steve
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55211): https://lists.yoctoproject.org/g/yocto/messag=
e/55211
> Mute This Topic: https://lists.yoctoproject.org/mt/86763507/1051774
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [leon@sidebranc=
h.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

