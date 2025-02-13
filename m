Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33FCBC021A0
	for <webhook@archiver.kernel.org>; Thu, 13 Feb 2025 08:58:30 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
 by mx.groups.io with SMTP id smtpd.web10.6937.1739437088515509039
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Feb 2025 00:58:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FwUI911t;
 spf=pass (domain: gmail.com, ip: 209.85.219.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f52.google.com with SMTP id 6a1803df08f44-6e1b11859a7so3783946d6.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 00:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739437087; x=1740041887; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GzmcoCk0ZA03JH5SjYenrY3Z8katj+hy39vnsopuGtM=;
        b=FwUI911t9eaIjnObDaMMDnlB1UDvL5jJ5UGbZJP3rG8g1tsPo5EVICXH0dl4dhKkyb
         2ICfsuOMQi7/GocPkCwzIH8mQ/B4gaqQ3CiFNGh8PJp9ic1DAH9E2h7e5kbKdy4UtJ6O
         woLg2fdcGR16ZVQnJBzbkeLMUVOx2CkxMzNHddMDB6r7Zs9AoAqTKyJfWlE6D4/Ji5VH
         /eSniG1GFbmBVH3MxevmfOa4jsjoxrco/VnRHgrsnx7zyZ5Iv7PpEO9cmAo3zkyNNeyM
         MALXdy/g10QlOaJlt3skTJRnLTQmDDYOobvbIIqNcx6y0DG2TUJJYiiNfw6g7CFXHuol
         05Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739437087; x=1740041887;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GzmcoCk0ZA03JH5SjYenrY3Z8katj+hy39vnsopuGtM=;
        b=d9Db/f9UyJExhoqI06aPFUnRaUg8o1+DqR/0qSySR/0tgjeUqG8yxNNgtyyF4cabWH
         jwxUdc/kGV5g6IK4eQ49RhECGP+UZ5dudFC5Av/+c2AL0O0YEw+/0WnELNxNZVnLKlR7
         jnoqBxi446wco9jVXkt94sEKFfVOXWcSTZkelnqJcMek6Q1o1hAc84LVi8vzoAvGGQ3n
         0OZmC32jTEnwapkzTce6jkwQr9/6R5HNXwccufOcrcEXAYqWRNZPd5xJeY5nyGjAkyOy
         WjHI4OHdVt5QENO3rv9pSbOAYvHY7vH2/usTP5e/VnPELM6WwL5ujLPLrv/BuREgg+lH
         xKJQ==
X-Gm-Message-State: AOJu0YwdTceDnla3tDPu6ALGfdnW1myfKbMLTnRGQtgmqo1VzawYrW0Q
	dBeMexj3ko+dTMMYIWhpJEAaxQE2caIgtlm4LM3H5Mq6YLID0VfBNUdHwGTmb7qiFQY7Kf04Vse
	UQoMbFwIFbZDTXbRjjskkLpWDHS0vYg==
X-Gm-Gg: ASbGncvq6/Z7F/yuTQLkdZ47+j1Z4nBKUAFMIQ2JpQV6tilnIU+3WeKrU6+GLWUkclb
	2QceKHR/KIgM956mCW1/aWDZRf6iFlBp3GLA0KFqxaD7W6oE0X+EGoWfH/Jfx/iXnM5q36tJxNU
	1ZLMVXve7HtiFXYmNInXMP/5Snc+mE6eY=
X-Google-Smtp-Source: AGHT+IHAbxSVaEemPc7hn/crkE/GTF4aB7rc6wZxZYk42Qm80+IpQSuQMYrteYhR9Zl5THofZZtTPrk2tOqyzd6L4A8=
X-Received: by 2002:a05:6214:1303:b0:6e4:2d8e:5cce with SMTP id
 6a1803df08f44-6e46edacde7mr150972146d6.36.1739437087554; Thu, 13 Feb 2025
 00:58:07 -0800 (PST)
MIME-Version: 1.0
References: <YAJV.1739390248887972780.yPpo@lists.yoctoproject.org>
In-Reply-To: <YAJV.1739390248887972780.yPpo@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Feb 2025 09:57:56 +0100
X-Gm-Features: AWEUYZnxaHdJOe6K02tHKmxMKnG7TfPqh1QGy0rVsXBuJHi7F-_f0CBhyoeAPwY
Message-ID: <CANNYZj-oJA0qnr9+Djg94gN469cJJ18ym_nf2Bu3wph+_3RNig@mail.gmail.com>
Subject: Re: [yocto] PREFERRED_VERSION not being populated onto the rootfs image
To: yocto@lists.yoctoproject.org, jdowd@slashdevslashnull.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Feb 2025 08:58:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64790

You're not saying what the configure file is and where is it. Can you show that?

Help arrives quicker if we can reproduce the problem or at least see
your setup exactly.

Does log.do_rootfs for your image say which version of wpa supplicant
gets installed?

Alex

On Wed, 12 Feb 2025 at 20:57, John via lists.yoctoproject.org
<jdowd=slashdevslashnull.org@lists.yoctoproject.org> wrote:
>
> In the latest stable version of Yocto, I've been building an image for a raspberry Pi board which has a wifi i/f on it. While trying to bring up the wifi connection I need to roll back the version of wpa_supplicant that it is using.
>
> In the raspberrypi configure file I've put in "PREFERRED_VERSION_wpa-supplicant = "2.9". The version that is being used currently is 2.11.
>
> I've then created a recipe file for that version and made sure that it compiles using bitbake. (Had some patching issues, all fixed).
>
> I then run the command "bitbake core-image-minimal" and boot with the subsequent image. When I query the version of wpa-supplicant I get 2.11.
>
> I'm unable to find any "PRIORITY" variable of any kind. Why is it grabbing the incorrect version? What have I forgotten to do?
>
> Cheers!!
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64787): https://lists.yoctoproject.org/g/yocto/message/64787
> Mute This Topic: https://lists.yoctoproject.org/mt/111149982/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

