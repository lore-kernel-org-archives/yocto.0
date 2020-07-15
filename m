Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web10.1650.1594795602679758551
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jul 2020 23:46:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20150623.gappssmtp.com header.s=20150623 header.b=Fn19uAiL;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.208.172, mailfrom: jester@theyoctojester.info)
Received: by mail-lj1-f172.google.com with SMTP id b25so1320310ljp.6
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jul 2020 23:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0Kt9AxcMmGr6s3+9A+4SkOuu67fQ9lqN6sZ/kt2QHGM=;
        b=Fn19uAiLohqhk+7q8pHSkvAfpaXV8IedcHpVSAO8McVyPR7a5MPv49Rxk6H4TK1S37
         OVTWRQcjdIz+Xose0f/jyuUzo0z5y+jP7KCVuk9w9v9H3Dcbz5d3AauPEOBYWSm9tayK
         64Kcw2c8qP2qWLkQ1Lv0C+navushIFuADWr+b/n5kyGekKDFzxb3VTyIMHD65TR/rAGB
         ZZ+xC5eWryqpMkUsDQAJesskxLI7Vi8yAL+LZCDxlsk1mijlBBz7d+EV8zN9F/lVZi4S
         cL9jXIjWatW/765OdR8JH2jGFpdOQ79GV6pkkhuVcbw0g1zsOtzkzQdrBrHubVTNi6G2
         l5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0Kt9AxcMmGr6s3+9A+4SkOuu67fQ9lqN6sZ/kt2QHGM=;
        b=oEr6p6tUdVlk97QS9NkndUiPwTe/QQDoiFkL5zC+rlU9Qq5kyKpsqkSfE+GBwpGE3P
         WlH7hPPXHc9tu4deP7j4cMSMBVkg1mH473VK/DtOHCmmM5t0zt9cjPnYs6wI4IQ42fk0
         2MdOBEMp0koUsPHfn+4vuoC1AEWhE48VJ8QJ6lWFKDfzlLqgopzA2y1ZwJXSMPpUAIJh
         9QDzKqAvWwr3ybG1pwOe72sDHcp+4OE6wiAcSNWnkMExKQ+YAU6V2MITXbSw5598hztK
         kGiKW94mt6nnLIER+XXNU/OZxSdMxMVqeKPG72uGfAXqtUqlWYrMlck/vKZsC03JW5U7
         kZBA==
X-Gm-Message-State: AOAM532BTpd01RH2g4BLxG3lBNuYR8hURcQeJn9M61WtiMsO84g3GmIX
	a/3oDa9MjHIGsKJEcHxdy0HMYWUlpLR6mdJPwG9HLg==
X-Google-Smtp-Source: ABdhPJzCVgB8B/D3y7uSWgtQWwHfma4b5eOhJpEpgqetkpO+wFnd1zJzS6EZDIOskk3sfD7p0wqBnp83yw9ni8MShlI=
X-Received: by 2002:a05:651c:3cf:: with SMTP id f15mr4311411ljp.365.1594795600870;
 Tue, 14 Jul 2020 23:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <81Um.1594791618485076745.TJVy@lists.yoctoproject.org>
In-Reply-To: <81Um.1594791618485076745.TJVy@lists.yoctoproject.org>
From: "Josef Holzmayr-Khosh Amoz" <jester@theyoctojester.info>
Date: Wed, 15 Jul 2020 08:46:29 +0200
Message-ID: <CAEt6NwrHhg1Bwm9QM7RhSYbB1obk2UXksqq2iTkW=hKtZo8D5A@mail.gmail.com>
Subject: Re: [yocto] How to completely uninstall a pre-installed package in Yocto #linux #yocto
To: "Soi, Sheng Leong" <sheng.leong.soi@intel.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Howdy!

Am Mi., 15. Juli 2020 um 07:40 Uhr schrieb Soi, Sheng Leong
<sheng.leong.soi@intel.com>:
>
> The question is how to completely uninstall the pre-installed package in Yocto. Thanks
>
> I found out that one of the packages in Yocto is unwanted, and wish to completely uninstall the package.
>

In contrast to a general purpose distribution where you have little
control over the default set, there is no need to install anything you
do not want. So the correct solution is: do not install that package.

Even moreso, removing it later might be impossible if the image
doesn't have package management enabled.

Greetz
