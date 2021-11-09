Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E9FC433EF
	for <webhook@archiver.kernel.org>; Tue,  9 Nov 2021 22:09:02 +0000 (UTC)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
 [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web12.3589.1636495741465365189
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 14:09:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=LA1LA3kd;
 spf=pass (domain: gmail.com, ip: 209.85.222.46,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id v3so648943uam.10
        for <yocto@lists.yoctoproject.org>;
 Tue, 09 Nov 2021 14:09:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=BmMCP6Dq5pz2PuSC9Hc/ZUgQJx6XLD4vFZamZ0pXhl4=;
        b=LA1LA3kd5DAs0iEC5ldGjWibs63LdSiVlMN9s267cqQJrC+XPmu4bYgjmoG9rqgr/c
         0KwEA1qNhalfblRmOmVDtJKpAI08H3KyEP5Eo/A0DZryeyn7QOvMZ/k00igiPorKizhk
         vnt/dYQta1yKAaWCMgWQkwa/7w0DX6al1LqiRRHIYGD3495rZRTyBy8cvGwfmz712roT
         ZEdjJ6RK+9rN2F+Znx7JktF5XGqRYAfNKZTLr5SKIqr9eW0asU/GfF9Ywjj/MQAyeQ6b
         roRrfBCqg3nia3hLUx2UFoyn12KaYewmtMY7NnpiZxwGM+vT07SEGPX8py4MqiSL7qx9
         T0WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=BmMCP6Dq5pz2PuSC9Hc/ZUgQJx6XLD4vFZamZ0pXhl4=;
        b=FBZOnajLTA/ObBdqWxbQUA0Iz1nYknszr+9uzHIfNzFZbMooH3wQ7SpmfGzsuUsr37
         SZk1u0r5nFrnrfXVY3tYnH2qmSMdGk2RUbcOXb26eS62U+DJzdhUnz/3fN7PQqX0vgRB
         249TmzkykJ6mVkpCN+SHSt5ZH2fGghIaSxovllGqH4w+fvqCAykHuEGQ876cD2q/a2iD
         H63bKBih6uVHb+zNqNKumRuTQhJ0szjn8jDm2qycWNjh487cym87FvZiCbNOzp0ZDRJ/
         cDzRd5mtQUFGQgBTqeiiO5vziamSqkUwUBCpa2cM2MbufZAAFJC1NEDme4kHFw7YnZgu
         9QOQ==
X-Gm-Message-State: AOAM532z2AkW5AuQrkhCPQc78gy9uUYJTIcfRMZttNPGH9hhMCNQbBAp
	Cab3lmvLbEyJGRO+dyOA2jVfFzzMyrSGXYN86xPBBpEHBAw=
X-Google-Smtp-Source: 
 ABdhPJwJmnN8IstVwgeD+sMDFPzn/Hzljdb/I35VpA/UCb9Efc19V/bDNY9z+noGnbW61VT5wprA26Nx/P45uKgso04=
X-Received: by 2002:a67:b005:: with SMTP id z5mr118897098vse.59.1636495740292;
 Tue, 09 Nov 2021 14:09:00 -0800 (PST)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 9 Nov 2021 14:08:49 -0800
Message-ID: 
 <CABKMkPK4pBDU2aVsz8pc0UFzjJhLQvJcaHoLeEz9ZdJD2SJg0g@mail.gmail.com>
Subject: pre-built native only tool for native and nativesdk
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000046d2de05d0625b39"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Nov 2021 22:09:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55293

--00000000000046d2de05d0625b39
Content-Type: text/plain; charset="UTF-8"

I'm trying to sort out how to install a pre-built host-only tool for native
and nativesdk only.

Using `inherit native` my-recipe-native and nativesdk-my-recipe both build
fine, only -c populate_sdk generates "rdepends upon non-existent task
do_package_write_rpm".  Looking at native.bbclass it includes `inherit
nopackage` which explains the error.

If I remove the `inherit native` and update my recipe name to not include
`-native` I can build the -native version, only I can't build
nativesdk-*-native.  A target build is invalid.

What is the recommended pattern to do this, and is there an example of this
anywhere?


Thanks,
Joel

--00000000000046d2de05d0625b39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m trying to sort out how to install a pre-built=
 host-only tool for native and nativesdk only.</div><div><br></div><div>Usi=
ng `inherit native` my-recipe-native and nativesdk-my-recipe both build fin=
e, only -c populate_sdk generates <code>&quot;rdepends upon non-existent ta=
sk do_package_write_rpm&quot;</code>.=C2=A0 Looking at native.bbclass it in=
cludes `inherit nopackage` which explains the error.<br></div><div><br></di=
v><div>If I remove the `inherit native` and update my recipe name to not in=
clude `-native` I can build the -native version, only I can&#39;t build nat=
ivesdk-*-native.=C2=A0 A target build is invalid.<br></div><div><br></div>W=
hat is the recommended pattern to do this, and is there an example of this =
anywhere?<br><div><br></div><div><br></div><div>Thanks,</div><div>Joel<br><=
/div></div>

--00000000000046d2de05d0625b39--

