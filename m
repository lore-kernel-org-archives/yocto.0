Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E943C433F5
	for <webhook@archiver.kernel.org>; Mon, 21 Feb 2022 17:24:18 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web08.1638.1645464256557003514
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 09:24:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=T0UIXIa/;
 spf=pass (domain: baylibre.com, ip: 209.85.167.49,
 mailfrom: jstephan@baylibre.com)
Received: by mail-lf1-f49.google.com with SMTP id g39so19911993lfv.10
        for <yocto@lists.yoctoproject.org>;
 Mon, 21 Feb 2022 09:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=4kf+i1cKC3FV+vAPYO1Dw74jx3aYuIyeQNu6Xm88pGg=;
        b=T0UIXIa/wlFODIWbzgqTxTPsAEf+lPmf4lqScsoUuLH1P3vLJgOVKgaN0tbDBdk77J
         NjqRAzEVdOxtdwN0GbRnwAqRA5t0Pqyr2Rk1OJM/GzUByjPo6NEJ6N1mzyv6Gucd34lH
         AojPUhqKpiyd+oRNJ/xUzoHDIsyfd7kWXtjaT2yOWE8y+CjbjMEj5shkksTPmJrU4MZi
         u4QG2HnpIoKKaFaWov9nBzfo2y8GFx2aS6aML3gmjUB+Dwp60uanfOyJxVCfKrrX+bwR
         B4ZCPVg+5SNEFrPKbK0JfOWE8oLay43tgsMSTNleHa/ydnjWfHCvd9iQsItJFw2nC1oW
         e3Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=4kf+i1cKC3FV+vAPYO1Dw74jx3aYuIyeQNu6Xm88pGg=;
        b=HovloiOdJwUxNzLLykkn6QH0v/VaFB3x1DSdmsLzu0yEkVSwq9F+zWpGZk+BHrstNN
         PUtF6NsvOrY+7x3z4zRHB/m9OfQU7RLn5XC6l6H4nWaRhshSiBx4MA/RgnNbG0m+DGty
         8pUyxOsxUwm4ffhbAePVCJfGbxF1e3ivTM7GcH/RRMGMq7kOGo5k/jLuz+7N0Yjyd3ss
         o9pvjq+jktaqt4V+KQx8MkAXgT83menRNZYdkEmLqdlOSXQvqDuOTUJ6dqv7UCyRAsYL
         o9wBxk6F++1UIGmHkWrdIHcYNawI1xVJPlThOkTSaJqxQHPgDiESs1YA+xN1VsIIkO+W
         0VYA==
X-Gm-Message-State: AOAM530xjlKQZh9LZutbMZcAMGgiBwM5Nt0ZX8X0/2jtvqy3tG9EN/BD
	KbMETfLF0UHGJqWBCIcWYPjhkkk3x3IaHRm7ShQXtZTI2S7qUA==
X-Google-Smtp-Source: 
 ABdhPJy/AJlzrUBQShngRE8uZGW3ON3X1b9xqdaws1eH9HuVEBTsZRlBbcaBjjGIRzn3iu/uPaZBCYoOem44PElSt/s=
X-Received: by 2002:a19:6a07:0:b0:443:ecf7:e4b4 with SMTP id
 u7-20020a196a07000000b00443ecf7e4b4mr4131282lfu.395.1645464254008; Mon, 21
 Feb 2022 09:24:14 -0800 (PST)
MIME-Version: 1.0
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 21 Feb 2022 18:22:52 +0100
Message-ID: 
 <CAEHHSvaRvvhBEUDVZS=fY81+vdkqxPv7jFs2=bgAgvFKQNmzuQ@mail.gmail.com>
Subject: extract several source tree with devtool
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000059e4e105d88a80c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Feb 2022 17:24:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56223

--00000000000059e4e105d88a80c9
Content-Type: text/plain; charset="UTF-8"

Hi all,

I am wondering if it is possible to extract both a git repo and a tarball
using devtool modify?
Example:
I am trying to use devtool modify on tensorflow-lite recipe (
https://git.yoctoproject.org/meta-tensorflow/tree/recipes-framework/tensorflow/tensorflow_2.6.1.bb).
The `tensorflow.inc` file fetches the tensorflow repository using git, then
`tensorflow_2.6.1.bb` fetches 2 tarballs. The tarballs are extracted inside
WORKDIR then files are installed inside the do_install() function.  This is
running correctly using `bitbake tensorflow`. When using `devtool modify
tensorflow`, the tarballs are not extracted, then I get an error at the
do_install stage: files from tarball don't exist.

This is a general question not related to tensorflow. Any suggestions on
how to handle this? Either on the recipe side or on the devtool side?
Best
Julien

--00000000000059e4e105d88a80c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am wondering if it=
 is possible to extract both a git repo and a tarball using devtool modify?=
 <br></div><div>Example:</div><div>I am trying to use devtool modify on ten=
sorflow-lite recipe (<a href=3D"https://git.yoctoproject.org/meta-tensorflo=
w/tree/recipes-framework/tensorflow/tensorflow_2.6.1.bb">https://git.yoctop=
roject.org/meta-tensorflow/tree/recipes-framework/tensorflow/tensorflow_2.6=
.1.bb</a>). The `tensorflow.inc` file fetches the tensorflow repository usi=
ng git, then `<a href=3D"http://tensorflow_2.6.1.bb">tensorflow_2.6.1.bb</a=
>` fetches 2 tarballs. The tarballs are extracted inside WORKDIR then files=
 are installed inside the do_install() function.=C2=A0 This is running corr=
ectly using `bitbake tensorflow`. When using `devtool modify tensorflow`, t=
he tarballs are not extracted, then I get an error at the do_install stage:=
 files from tarball don&#39;t exist.<br></div><div><br></div><div>This is a=
 general question not related to tensorflow. Any suggestions on how to hand=
le this? Either on the recipe side or on the devtool side?<br></div><div>Be=
st</div><div>Julien <br></div></div>

--00000000000059e4e105d88a80c9--

