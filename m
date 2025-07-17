Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 132A6C83F1A
	for <webhook@archiver.kernel.org>; Thu, 17 Jul 2025 09:46:54 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web10.44598.1752745606773251162
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Jul 2025 02:46:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F9xjET7H;
 spf=pass (domain: gmail.com, ip: 209.85.219.43, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6ecf99dd567so10529136d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 02:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752745606; x=1753350406; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lhgFOMj3BmLC5TatEwed9mH9DO84HY5LAZcVUXUxU9o=;
        b=F9xjET7HuZeWXk2Zq935S7zMNhKTSUqCtJWx8nQv+2V00JvnMBl4gL0LHa6/aGPafm
         B3IGS0M22ZVMYk2SIfSbBGYGXsZfnuUsd1dhqGOSjM2pVRUwqip/7Zr0pv2pw1dS7bTm
         gi9BXGyr5dNy+z03SZqmJ8ErZ0pF8hgXo1SHfEZsOEnfqHnfxCx+lo1tShqdXVIv83dK
         5+7pcjows9HtIlCmIgA3fsItKLXz8foliQuud0LX5q8DPyWCKggD+gFW5uOKgE5YqVsS
         8bF1IVbn2hkD2KmPdzCdpq/+KOXg3cvRtmaemGd+BWx7ZQnrTwh9ZsmgEgm1xxxXTN3p
         TCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752745606; x=1753350406;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lhgFOMj3BmLC5TatEwed9mH9DO84HY5LAZcVUXUxU9o=;
        b=JOTD49HVPiTDBmZapIo94qvI73k6QV6/TFx3d6yAF2Jfh+fH52hmLyCPAUhQMQtMUH
         enJaOhJvTgb3mLpI0+HOIzhdQ7EXlfZrQsDtF9BAClBvoanuCRjF/iV1UjrKZivGuF4V
         MZWl/AxYQmqx78AtdEGcsircbDcuV9323Iwhdhxji8dBHHS8y3Bz7ccb4UENZwqc/1Ni
         hyM57u+2cZOmgxu3woRh39gGGUsnX6FuyHG/2O5EYAfj4IZUq/inFTYHbV9SagYmsQ1w
         2Nzjx906+eAas7Qc+UKmuEYCBtMvrEjUPhHwYxYoo+70RR0rS7WgJQoxaG3n/iH64hD2
         ecpA==
X-Gm-Message-State: AOJu0YxEkdDPkWuY91KpaH+dFwu27pbD0EJk4/Qq4qy+hPd22+kkuT20
	rTlyAv8FuAWeBuZXMzJ73MaroaFbFkmyTaNiK7ZWPNGS7LX80MQr1xn2kPM15ekA/sl7WgfQ5mU
	cSdweWWnRThGqeSD91v7l75M+wx5+i/Oz7Q==
X-Gm-Gg: ASbGncs+7eUjckzxuD1eoLdbrm+BWxQrEvz0uufbVQlRoagNy7kN3T2iyj6pxPbAdQ3
	WsVgcXvwp0+TYAorqsImpVyFKOcSHdSd+Ei3R15nY5FfItPIrfWREIksb+gX7TA++EuRR42FQ+p
	sxB78RNlqNQjAgupmt7W66S8sbT0We7uiH7Ce5d9W9kfhPpGRp+vnSYErMI1uw3Zeoy8p9dfT/1
	jr5
X-Google-Smtp-Source: AGHT+IHh4vyBmjF2j9i87NHgU8Mm+seHsATR/3ldmkK58RhgODOYX7ikk3s+GUjw0c+sF7zNSH5PYtLo1dMgsXkzR5Q=
X-Received: by 2002:a05:6214:5f0a:b0:704:c686:3f54 with SMTP id
 6a1803df08f44-704f6a5720emr66497086d6.15.1752745605645; Thu, 17 Jul 2025
 02:46:45 -0700 (PDT)
MIME-Version: 1.0
References: <BkkZ.1752700820980924982.9CZz@lists.yoctoproject.org>
In-Reply-To: <BkkZ.1752700820980924982.9CZz@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Jul 2025 11:46:32 +0200
X-Gm-Features: Ac12FXyTEp53tOtDRU7klFLYKSwrveICxM-SuMe6d_VFh5gnEYFTIsb-QhOb3-o
Message-ID: <CANNYZj-153HOf3oC_=8PYLwtDYqBQQFNE=hP+JYXikw3YDa7Rg@mail.gmail.com>
Subject: Re: [yocto] Environmental variable present in do_compile() {},
 bitbake recipe -e, but is missing from do_configure() {} #bitbake
To: yocto@lists.yoctoproject.org, joseph.maniaci@seagate.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Jul 2025 09:46:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65672

You are not showing anything useful about your configuration and
environment and recipe that needs the variable. What is the variable?
Where is it being set? Where is it being exported? How did you
determine that it is present in one task but absent in another? What
is the 'bunch of other stuff'?

The answer to your question is that it is almost certainly a
mis-configuration in your local build.

Alex

On Wed, 16 Jul 2025 at 23:20, joseph.maniaci via
lists.yoctoproject.org
<joseph.maniaci=seagate.com@lists.yoctoproject.org> wrote:
>
> So to be clear, when I execute bitbake my-recipe -e | grep "MY_VAR'", it is present.
>
> If I make it as far as the do_compile() step, I can also capture the 'export' command and see that it is present.
>
> However, at the do_configure() step, it, as well as a bunch of other stuff is missing.
>
> Is this intentional? A bug? Documented somewhere?
>
> Thanks,
> Joe
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65669): https://lists.yoctoproject.org/g/yocto/message/65669
> Mute This Topic: https://lists.yoctoproject.org/mt/114193163/1686489
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

