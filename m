Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web09.3392.1632398362991458993
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 04:59:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=D4/EYuJy;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id r1so5827806qta.12
        for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 04:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4q4lT+SV7wZly3utOucxF+5dSHmeeGZGvlp/P7dhLMI=;
        b=D4/EYuJydtC7sAG5Hi20zMXa12iC/9xLhXH3wqxWs32dJcvTyaFGuoqDvyMIg4Lkrh
         QlfWvP1YWZtWSO/5pWr7iFtbXx+f5rXNIrv50lb6FIYCa4+RutFY74SlXl5XboE11mWN
         Y3o16HX879g9O1ZDVR4hzZsEyKbCG0UhBb0NBxNjiO3Fuu/cFL96smzpSUQXf8o6jjAj
         2Gt1zyUTwkaVJowYbodvmNSnWJG8A/wueYDOU855oW5G3mSa9G7/7j6Vb0up+3VnOgsl
         2R2fYkXYiiHPJnQA+9rWF7RRk7QUzlLtNLb6DEy8irtAv4CZaOmsUAkfwMKNc9eV6f0+
         BxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4q4lT+SV7wZly3utOucxF+5dSHmeeGZGvlp/P7dhLMI=;
        b=iXcHYYbrwVfi2Ew5aKOfNaIlW/Z5dY2aUXlK+hY3dXobLFf+d9uLCgXSWO5Sxk4l3z
         +0qZzcxWlMTS7scFemFnTR71909yqPuV0d+LHhjhcsA6Hu3d2JWJiW8Sz9EgyLMCkwXt
         S+ZJdy1auoyBLWFCKCh9PJTaK5kIbLNKEC4BvD1o0/jqPizGlDx93eWopvq8QM0AHEyg
         1OdUbd0Q8/6O3bKuH0818UfYSKV6qMagH5TGdSAB/iOeIfehsMIvcPY6zlBSYYcSsSRR
         sw+xmHM3ecW+ie4AokwsYvHC7FzjhG68Af8miLb3GJ18sZ+FNzlXaztFYNi0xL7RR/rO
         oKZA==
X-Gm-Message-State: AOAM531faIarH2UYaLbT8VtB2AM6rkS84ysmbyvUxVAN60S5FOdlZAcV
	9E0MMooUGx/fIdhzYdnR93GJ1/m9yFE=
X-Google-Smtp-Source: ABdhPJyXIP4t+df/49+d1tYqulQSGkB+ymBE9J4NfS4z5oku6VgfdiCt3j1V1AtKMXyKOVA44uoeBQ==
X-Received: by 2002:ac8:534b:: with SMTP id d11mr4271603qto.167.1632398362053;
        Thu, 23 Sep 2021 04:59:22 -0700 (PDT)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id l1sm3287664qti.94.2021.09.23.04.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Sep 2021 04:59:21 -0700 (PDT)
Date: Thu, 23 Sep 2021 07:59:19 -0400
From: "Trevor Woerner" <twoerner@gmail.com>
To: Markus Volk <f_l_k@t-online.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-rockchip][PATCH] use uuid instead of hard-coding root device
Message-ID: <20210923115919.GA25233@localhost>
References: <20210917220121.26663-1-twoerner@gmail.com>
 <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
MIME-Version: 1.0
In-Reply-To: <a7d1f5cd-8bb6-ba56-c2b4-39dfb283a22c@t-online.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2021-09-22 @ 08:49:43 PM, Markus Volk wrote:
> Hi,

Hi Markus, thanks for your report. I appreciate the feedback!

> with this change my rock-pi-4 doesnt boot up and falls to emergency shell
> because wic includes wrong devices into fstab. For some reason it assumes
> /dev/sda1.

The next thing, literally, on my TODO list was to investigate why this is
happening (and fix it). I had noticed it a while back and have been wondering
what is injecting those incorrect lines at the end of our fstab. Thanks for
the patch!

> I was able to fix this for my machine by using uuid for all
> partitions.

Curious. I boot tested my patch on multiple boards and I've built and booted
numerous images on my rock-pi-4b and rock64 boards in the last day or so since
I applied the patch. I'll try some "clean" builds and see if that makes a
difference. I don't doubt your report (especially since Khem confirmed it),
I'd just like to know for myself what's different.

I wonder if just applying your 2nd patch would be enough (i.e. the one that
removes the /dev/sda* lines from /etc/fstab)? It's odd that the first 6
entries in the wic file would need UUIDs since it's the SoC's ROM firmware
that uses them, and I'm pretty sure the Rockchip firmware isn't using UUIDs
(my guess is it's just blindly grabbing whatever it finds at specific
offsets). The things stored in those partitions are u-boot related bits (atf,
spl, the u-boot binary itself) so by the time Linux starts, those things are
already "behind" us. I can't see how adding UUIDs to the partitions holding
u-boot would affect how the kernel finds the root partition (?).

Are you using poky or a distro other than "nodistro"? Perhaps other
layers/distros are affecting the build?

Thanks and best regards,
	Trevor
