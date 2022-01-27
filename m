Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4449FC433EF
	for <webhook@archiver.kernel.org>; Thu, 27 Jan 2022 18:02:29 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web12.1475.1643306548524181782
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 10:02:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=BjOhajmq;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: raj.khem@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id e20so3533883qvu.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jan 2022 10:02:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rIThModEhA2AyW71BAgAEoNGt5xlANgj+7HTjEJAWlQ=;
        b=BjOhajmqqp83Ptj1xMMs9iyI4wt3qn4RSLKB5JKe3fCxjD4Usy+8dAeI8GOIRrYDN5
         qo2burmmlYMgt6TDyBDrxoN0Q5DRWQGtt6LoJEyX8Ujq8dkhQobB9nFfdRbB4qtmxJOP
         80Dni84K0b+Dq+Dtizik1Z+vBOw7pBlLFu7Cm5wU7RLo180oUlhBG1NKlvH33v4aH9a5
         b3ww7hD3ycqEJx5m72Q0LgQkmow0Nq1lwl8jQ+T744sgLj+kIdiie6DCxtPv43Y4E3FT
         W2GO5zg7BnwgDpLEUSO2qqKYxwDAYQ+HHYNG55meyOwQL1qzxuhqEfYp7CBcUUdOf1+s
         FbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rIThModEhA2AyW71BAgAEoNGt5xlANgj+7HTjEJAWlQ=;
        b=WZJ1m+2wY/3uKS/zuIV6ihllwQ0mi7vSWQ2TLTsjE1gRecA0pzBemqY1/Bqu9Z2fJ5
         Cg+TBPncDbhdg4eeh7yBcAukvP6QRcB1apNJ5E+K6XqnYOaf+KCZcG6qi3p1zbmvBaxe
         VomjSzk5P16cM6RZ8Cw8gqcaZWw2m81qE2iR63Bt2sYazoBVGQRG1kx6Tx9M3m7pbDHK
         5J81fMOwg+3sY6wJXgdbje38wMHziZo7RjjwxQsWjqGIFJNHWWF3c2JAFa6vtpdmxzMn
         uJgF9y+JUsCIngKCooEHFU0v5fO0TDE/ysofgdm56lyLmvZyN4jP6Hix+FsU2YGdOE8w
         h+Qg==
X-Gm-Message-State: AOAM531QsNKe+HyIk+7RE1MtnLG75QLhY5CN8ZRXS+Jn64Pts+wiHtCM
	sPjDoBewQOdJCQd41c3OlcHO3yhXMKLtwfFTCYI=
X-Google-Smtp-Source: 
 ABdhPJyvmT4MbCMo3AQsWT4f4TDnxiyS0XbJ7FLZdPysuuBgZ/lK3SFXZKvmCdTYXzY5fBBAz3M/ZRt8gELshXkc0hE=
X-Received: by 2002:a05:6214:19ec:: with SMTP id
 q12mr4467713qvc.36.1643306547469;
 Thu, 27 Jan 2022 10:02:27 -0800 (PST)
MIME-Version: 1.0
References: <16CE27BD1FB20052.24088@lists.yoctoproject.org>
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9=Y6z6HLkXu2q9p=UCM3FzmptPBWDvb4Q9ycKn2WcwJg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 27 Jan 2022 10:02:01 -0800
Message-ID: 
 <CAMKF1soHqUYgWR9ji0oTa+k2D8Y2749xz3uLkjWYaL2YtZv8gA@mail.gmail.com>
Subject: Re: [yocto] [meta-lts-mixins][dunfell/go PATCH 1/4] Initial commit:
 add license, readme and layer config.
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	Adrian Freihofer <adrian.freihofer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jan 2022 18:02:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56002

On Thu, Jan 27, 2022 at 9:07 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> A question specifically to Denys, how can I actually get this into the mixin repo, and have commit rights to the branch? We've tested this quite well in private, and there are further enhancements coming up.
>

this could be an independent layer too.


> Alex
>
> On Thu, 27 Jan 2022 at 15:43, Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=gmail.com@lists.yoctoproject.org> wrote:
>>
>> Reviewed-by: Martin Kaistra <martin.kaistra@linutronix.de>
>> Signed-off-by: Alexander Kanavin <alex@linutronix.de>
>> ---
>>  COPYING.MIT     | 17 +++++++++++++++++
>>  README          | 23 +++++++++++++++++++++++
>>  conf/layer.conf | 19 +++++++++++++++++++
>>  3 files changed, 59 insertions(+)
>>  create mode 100644 COPYING.MIT
>>  create mode 100644 README
>>  create mode 100644 conf/layer.conf
>>
>> diff --git a/COPYING.MIT b/COPYING.MIT
>> new file mode 100644
>> index 0000000..fb950dc
>> --- /dev/null
>> +++ b/COPYING.MIT
>> @@ -0,0 +1,17 @@
>> +Permission is hereby granted, free of charge, to any person obtaining a copy
>> +of this software and associated documentation files (the "Software"), to deal
>> +in the Software without restriction, including without limitation the rights
>> +to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
>> +copies of the Software, and to permit persons to whom the Software is
>> +furnished to do so, subject to the following conditions:
>> +
>> +The above copyright notice and this permission notice shall be included in
>> +all copies or substantial portions of the Software.
>> +
>> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
>> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
>> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
>> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
>> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
>> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
>> +THE SOFTWARE.
>> diff --git a/README b/README
>> new file mode 100644
>> index 0000000..5b22b72
>> --- /dev/null
>> +++ b/README
>> @@ -0,0 +1,23 @@
>> +"Mixin" layer for adding latest Go toolchain versions into the Yocto Project LTS.
>> +
>> +At the time Dunfell was released in April 2020, Go 1.14 was the latest version
>> +and officially Dunfell supports only that. This thin special-purpose mixin
>> +layer is meant to address this issue by backporting Go recipes from the master
>> +branch of openembedded-core.
>> +
>> +You can see what Go versions are provided by listing recipes-devtools/ content.
>> +
>> +Including the layer automatically picks up the latest Go version; different versions
>> +need to be set explicitly by adding the following line to your distro config
>> +or local.conf:
>> +
>> +GOVERSION = "1.16%"
>> +
>> +Please note: enabling these newer Go versions makes docker from dunfell branch
>> +of meta-virtualization unbuildable as it is too old. If you need a working docker
>> +recipe, you can use the supplementary 'dunfell/docker' layer from this meta-lts-mixin
>> +repository.
>> +
>> +
>> +Maintainers:
>> +Alexander Kanavin <alex@linutronix.de>
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> new file mode 100644
>> index 0000000..5f74224
>> --- /dev/null
>> +++ b/conf/layer.conf
>> @@ -0,0 +1,19 @@
>> +# We have a conf and classes directory, append to BBPATH
>> +BBPATH .= ":${LAYERDIR}"
>> +
>> +# We have a recipes directory, add to BBFILES
>> +BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend"
>> +
>> +BBFILE_COLLECTIONS += "lts-go-mixin"
>> +BBFILE_PATTERN_lts-go-mixin := "^${LAYERDIR}/"
>> +BBFILE_PRIORITY_lts-go-mixin = "6"
>> +
>> +LAYERSERIES_COMPAT_lts-go-mixin = "dunfell"
>> +
>> +LAYERDEPENDS_lts-go-mixin = " \
>> +    core \
>> +"
>> +
>> +GOVERSION ?= "1.17%"
>> +PREFERRED_PROVIDER_go-native = "go-binary-native"
>> +
>> --
>> 2.20.1
>>
>>
>>
>>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56001): https://lists.yoctoproject.org/g/yocto/message/56001
> Mute This Topic: https://lists.yoctoproject.org/mt/88722205/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

