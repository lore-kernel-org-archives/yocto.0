Return-Path: <electronicconsult1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DF4FC61DA4
	for <webhook@archiver.kernel.org>; Fri, 24 Feb 2023 15:49:41 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web11.20983.1677253779763860081
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Feb 2023 07:49:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q6GZFcdS;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: electronicconsult1@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5384ff97993so162475937b3.2
        for <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 07:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677253779;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JAQopAZHgy2NTdcoMErik08S9k9MV7UxKx8mam4bqTU=;
        b=Q6GZFcdSJKfwb/JcFO5SUbaPCkfHhtRmngrmrqG3pGnSFYJHpHCxaeZPkpvUdFKpMm
         kPKTG+JmTWb0s5FKp9Du6IYSxLM8pVAUKWN1x7m+uw5esMNQeuywrW1KMX5xrgdjTOlB
         jk1aM2Xq51vau1dEHVj2qC9upmCbOrkcz990zIKMt+LqrXO6HNHa1gmyLcv9hIw4kBXz
         ehVPM6yITBk/ymEmdSRyqCUMMqxDVbkNHqI5Q+qmhHi5PCYpcPBq6siWdEX7SUZrWwj6
         Hkz5OFJ1EBRE87ZZ9cf48dLj7lwT6LXqtN+QtSXjFhYyoAZ4m/V2ErwKFNdD+i998RmV
         i+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677253779;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JAQopAZHgy2NTdcoMErik08S9k9MV7UxKx8mam4bqTU=;
        b=vbt1c/Cu9Go/yciXfRbDs+SKIcwyDC9+T9dJhAzDRp80Vn2Up0rHqioMokoWs16T5y
         3Ha8pCMiTELTpexsS0NX503lAYxuXv3cUqShZO9zNyc7Y7OsDVcj+T1RbZd5a9gcHBgm
         cYAhhWkQnTmyH/OR4jcLBSaOKE8hBytHwOv7vg7SphJSSAh5S8P3shUctkeWXffcokBE
         58fbvbhx70ro5Fc58gBXKomZB7g7NIt9x6HKNqq30dARP8kOuERjYLs5ghMjwdfXH/Yx
         u9WXMl5HT6lksrvZC7a7/B8YjhcEkWdeoo9/lcYcToP1xjQbTP5fCqKLIDYFtagKTTi+
         2ImQ==
X-Gm-Message-State: AO0yUKXpTQvH/TX6qNiRPH3fOV+B+2PW9T2zuC4/l7GkL12OF0pTQbgZ
	IohDcj1oP80WxbLOh47NVcdL1KOQn3NOoBAVFdcd8XhzEJlS9A==
X-Google-Smtp-Source: AK7set/LWJqf1uLnt5+0rXadiMG3xp+UYwc7hxciBBu2C/Pvb7jX8w0WoxU3S7arixJEbXBVtFAvxD+mH2kOWJykdxc=
X-Received: by 2002:a25:e812:0:b0:a43:52fe:c36f with SMTP id
 k18-20020a25e812000000b00a4352fec36fmr1655973ybd.7.1677253778814; Fri, 24 Feb
 2023 07:49:38 -0800 (PST)
MIME-Version: 1.0
From: Electronic Consult <electronicconsult1@gmail.com>
Date: Fri, 24 Feb 2023 15:49:27 +0000
Message-ID: <CAGUWaEFoZ0bNxu3RKM+pNfkSF43xdQkxp-ttLOwaMERa5Krhdg@mail.gmail.com>
Subject: No SSH access after removing debug_tweaks
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000af3ba105f57413a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Feb 2023 15:49:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59299

--000000000000af3ba105f57413a0
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm trying to add a root password to add some security to ssh access. I
plan also to enable/ disable the ssh via GUI.

I'm using meta-atmel on a dunfell build. I've added:

INHERIT += "extrausers"
EXTRA_USERS_PARAMS = "usermod -p $(openssl passwd mypassword) root"

And commented out:

EXTRA_IMAGE_FEATURES ?= "debug-tweaks"

When I try to SSH in I'm now getting:

Connection closed by 192.168.178.13 port 22

Do I need to set a password for ssh also?

Thanks

--000000000000af3ba105f57413a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello all,</div><div><br></div><div>I&#39;m trying to=
 add a root password to add some security to ssh access. I plan also to ena=
ble/ disable the ssh via GUI.</div><div><br></div><div>I&#39;m using meta-a=
tmel on a dunfell build. I&#39;ve added:</div><div><br></div><div>INHERIT +=
=3D &quot;extrausers&quot;<br>EXTRA_USERS_PARAMS =3D &quot;usermod -p $(ope=
nssl passwd mypassword) root&quot;</div><div><br></div><div>And commented o=
ut:</div><div><br></div><div>EXTRA_IMAGE_FEATURES ?=3D &quot;debug-tweaks&q=
uot;</div><div><br></div><div>When I try to SSH in I&#39;m now getting:</di=
v><div><br></div><div>Connection closed by 192.168.178.13 port 22</div><div=
><br></div><div>Do I need to set a password for ssh also?</div><div><br></d=
iv><div>Thanks<br></div><div dir=3D"auto"></div>
</div>

--000000000000af3ba105f57413a0--

