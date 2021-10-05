Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D48CC433F5
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 21:34:53 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com
 [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web08.3212.1633469692344997721
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 14:34:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ks3xYs3O;
 spf=pass (domain: gmail.com, ip: 209.85.221.175,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id y74so313957vky.12
        for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 14:34:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=K9nuzTNd9zoMSgtoEOPkESNjdKtLzA06b/p6GqwWGkU=;
        b=Ks3xYs3O3PWZurdt7KwfWVxp8q1drMPgX/JTh98c6rMAqLeQXvMQvVlkYllZh1Y1WL
         OnpNXTdTsJqyKUgvemJP3FSODnYO8rB/NNgIXjrADFbiKzI49WFUma7R/8u60IMnfZcX
         UOdMr4MsPquTSBEM1Tl5iQyGZlTbVHR0zp6oeYu2aqPqkqP5dsGlGcr2uaAj48UVkWlp
         WMN9JPn6pd8kkyIJAu9J5ij/KLvtgN1PTo5g37sddOIp5XouNJnGgCE+feNJwRGw8Nor
         Lf0unRcRNiQPFMSbA9Zyp+4yTYmR7lomfNTqNOfRGyH/nm5XwHSU0DQeHcrxVcohBD5y
         26Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=K9nuzTNd9zoMSgtoEOPkESNjdKtLzA06b/p6GqwWGkU=;
        b=kK9t3Y2TMvzfgpJ3diCg10dTraPUJg0lckVsmJ/CsZDvu2s77rcS12rcKWAm3Qs935
         oWL1NKOPZUh8VG/+nBlNGowXM+joy6kWev10k+q8z4G12AA1jCjCeObCmUAgtih9Q4Tf
         t4JhRavXJHDUA8dtNrylqGiFQrTdHDUjzBq4Kgek//JK1UrraIPD+5hLbDNevv05ogfF
         wnUngB4d2wbqsp7jNLbvUeOy+TYlthVRFS7XnUKFwHpYksugoaNbwbnRhg3MpbOW8YJK
         kmJUsDqi5pLHB5FsUlwswEyDkyNt8CPX3KcAZk8UEadlzzYbfl1P6Qjoq2bgQ9DqdSVz
         xgYQ==
X-Gm-Message-State: AOAM530MEvHFurGe1ZjIM5zBU16ApplW+ekAzTzAF3nB/PSV0YtXY/oX
	oxo5Tha2VbHNxV8NeYE/5T6LSOGON5jXjUvBrCar6eVWa9c=
X-Google-Smtp-Source: 
 ABdhPJzlEGaeHYY0basjrJes1LhiUaspX4e8goNgXFMIS9BsztLPrlKkmqZVb4ku4j/5TPaPaipwJEZB5SN4vt5ZDTg=
X-Received: by 2002:ac5:cfd0:: with SMTP id m16mr16467347vkf.7.1633469690996;
 Tue, 05 Oct 2021 14:34:50 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 5 Oct 2021 14:34:40 -0700
Message-ID: 
 <CABKMkPKrjB5Wb9MOb74qzeqx7brs9Em3dmk1h5Zxm1CKKJmYkw@mail.gmail.com>
Subject: Google GN support
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000aee9f405cda1cc18"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 21:34:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54971

--000000000000aee9f405cda1cc18
Content-Type: text/plain; charset="UTF-8"

I'm looking into best practice LTS support for Google GN based projects.
This includes Chromium, Flutter, SKIA, etc.

The weakness I see today for GN projects is that it's a build system within
a build system, and doesn't  support idiomatic download caching, download
vs patching isn't clear as it should be, etc.

Two approaches to resolve this come to mind:
1. Do something similar to how meta-rust does it.  Pre-process GN build
files and generate Yocto recipes using a hostside tool (similar to
cargo-bitbake for meta-rust).  This would skip usage of gclient entirely,
and the tradeoff is to incur download performance penalty.

2. Implement build parsing in a gclient/gn fetcher class.

I feel the first approach would be easier to maintain and provide better
flexibility.  It would incur a new host dependency, and require an
additional step to generate an updated recipe.

I suspect the second approach would be an OE maintenance headache, as
complexities would be directly exposed in OE.  Is this why gclient fetcher
support came and went?

I'm figuring/hoping there are a few opinions floating around on this
subject.

Is there a better approach?

Thanks,
Joel

--000000000000aee9f405cda1cc18
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m looking into best practice LTS support for Go=
ogle GN based projects.=C2=A0 This includes Chromium, Flutter, SKIA, etc.<b=
r></div><div><br></div><div>The weakness I see today for GN projects is tha=
t it&#39;s a build system within a build system, and doesn&#39;t=C2=A0 supp=
ort idiomatic download caching, download vs patching isn&#39;t clear as it =
should be, etc.<br></div><div><br></div><div>Two approaches to resolve this=
 come to mind:<br></div><div>1. Do something similar to how meta-rust does =
it.=C2=A0 Pre-process GN build files and generate Yocto recipes using a hos=
tside tool (similar to cargo-bitbake for meta-rust).=C2=A0 This would skip =
usage of gclient entirely, and the tradeoff is to incur download performanc=
e penalty.<br></div><div><br></div><div>2. Implement build parsing in a gcl=
ient/gn fetcher class.</div><div><br></div><div>I feel the first approach w=
ould be easier to maintain and provide better flexibility.=C2=A0 It would i=
ncur a new host dependency, and require an additional step to generate an u=
pdated recipe.<br></div><div><br></div><div>I suspect the second approach w=
ould be an OE maintenance headache, as complexities would be directly expos=
ed in OE.=C2=A0 Is this why gclient fetcher support came and went?<br></div=
><div><br></div><div><div>I&#39;m figuring/hoping there are a few opinions =
floating around on this subject.<br></div><div><br></div><div>Is there a be=
tter approach?</div><div><br></div><div>Thanks,</div><div>Joel<br></div></d=
iv></div>

--000000000000aee9f405cda1cc18--

