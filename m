Return-Path: <fede@evolware.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8ABC4332F
	for <webhook@archiver.kernel.org>; Mon,  4 Apr 2022 18:46:40 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web11.20610.1648969944153732662
 for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 00:12:24 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: fede.evol@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id b21so1342059lfb.5
        for <yocto@lists.yoctoproject.org>;
 Sun, 03 Apr 2022 00:12:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=ZJfy3JpUqyehBvubdveFUD0ThyOiTpnL2j/4fiiGB5k=;
        b=GjivlwZXBteRI06Nzsma9MK/XeA9RMQOKi+aaO2+YPcGSna1YF4jLzw5sjk5Ll+jao
         tlpfFNUFjKJZqdfEVCYsmaKPtjbDHvjFpm4LLlu0ufwPLCfENVNf4ycyzbKBtDiwm+HB
         NuvFfvJW0PHuP3IhI0qfoyl3fjRuZK9Ns2848Gy7Na/510zANBZckmZvOiJR9g6v9K5a
         YIEOnk9G314dWFR0zEW5os0D9tlU43MP1vhlWWKn4pSHOS/E7mkYHFJH0aMaL+JLxMEJ
         RwMzRV6jS+rgfmwO/IfK3ypdj2v9Fbu8PkfrHxAbwV5D5ILpqf9vB5BeG1evmTr/GS7D
         PZzA==
X-Gm-Message-State: AOAM5300AbrbGM0OEnYJSRqxnMIR5O9AulFFapSyf5QEa7T1mfzx1JRL
	OrsS6AGPxkcOhww0hAmYjgSYsm6SGlxJZIH6Alwg5QwUs/0=
X-Google-Smtp-Source: 
 ABdhPJyK0k4pwyRtTMg/4XaBx5CzBRYywiRHYJ0B/P5KzZO+Jsj61o9fErd2EnijzG8NR3Tft2hRGWdUXiAkKncCOYE=
X-Received: by 2002:ac2:43cf:0:b0:44a:5ccc:9a0c with SMTP id
 u15-20020ac243cf000000b0044a5ccc9a0cmr19215079lfl.546.1648969942015; Sun, 03
 Apr 2022 00:12:22 -0700 (PDT)
MIME-Version: 1.0
From: Federico Pellegrin <fede@evolware.org>
Date: Sun, 3 Apr 2022 09:12:10 +0200
Message-ID: 
 <CAM6O0ZhqFZO4oq7NyGTHYHZ50Kp8F7aSqjeVRH7Ok1kKHzkPCQ@mail.gmail.com>
Subject: Fedora 36 / uninative GLIBCXX 3.4.30
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a3a19405dbbabba2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Apr 2022 18:46:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56647

--000000000000a3a19405dbbabba2
Content-Type: text/plain; charset="UTF-8"

Hello,
I've been playing around building a Yocto imagine based on kirkstone/master
on the just released Fedora 36 beta test image. (just to give a few bits
more details: builds a MX8X image, works perfectly fine with Fedora 34 and
35 since quite some time)

The first and most obvious thing I've found out is that it is based on a
newer version of glibcxx (3.4.30) when the very latest uninative available
(as far as I could see, apologies if I'm wrong) is on 3.4.29, so at some
point this will break the build (when pzstd is called).

Of course for the time being I just disabled uninative and the build is
going on (will report of course should I find something else). I'm not sure
(still checking this) if that should have happened automatically, but there
was actually no warning in that sense (maybe because is GLIBCXX and not
GLIBC itself?)
But the question is: should I try to contribute that tarball (I will search
for details, but if there is any good reference more than welcome!) or is
it something that is likely done by the core team?

Of course FC36 is still a test distro so there is no surprise it broke, but
as we are close to Kirkstone release and possibly other distros will get
the same upgrade, I guess it could be great if we may fix this before that
deadline.

Many thanks!
Federico

--000000000000a3a19405dbbabba2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><br></div><div>Hello,</div><div>I&#39;=
ve been playing around building a Yocto imagine based on kirkstone/master o=
n the just released Fedora 36 beta test image. (just to give a few bits mor=
e details: builds a MX8X image, works perfectly fine with Fedora 34 and 35 =
since quite some time)<br></div><div><br></div><div>The first and most obvi=
ous thing I&#39;ve found out is that it is based on a newer version of glib=
cxx (3.4.30) when the very latest uninative available (as far as I could se=
e, apologies if I&#39;m wrong) is on 3.4.29, so at some point this will bre=
ak the build (when pzstd is called).</div><div><br></div><div>Of course for=
 the time being I just disabled uninative and the build is going on (will r=
eport of course should I find something else). I&#39;m not sure (still chec=
king this) if that should have happened automatically, but there was actual=
ly no warning in that sense (maybe because is GLIBCXX and not GLIBC itself?=
)<br></div><div>But the question is: should I try to contribute that tarbal=
l (I will search for details, but if there is any good reference more than =
welcome!) or is it something that is likely done by the core team?</div><di=
v><br></div><div>Of course FC36 is still a test distro so there is no surpr=
ise it broke, but as we are close to Kirkstone release and possibly other d=
istros will get the same upgrade, I guess it could be great if we may fix t=
his before that deadline.</div><div><br></div><div>Many thanks!</div><div>F=
ederico</div><div><br></div><div><br></div></div>

--000000000000a3a19405dbbabba2--

