Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D2AC5478C
	for <webhook@archiver.kernel.org>; Sat, 24 Feb 2024 01:41:09 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web11.11554.1708738863773922526
 for <yocto@lists.yoctoproject.org>;
 Fri, 23 Feb 2024 17:41:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dRM3lshZ;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: joel.winarske@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1dc139ed11fso7623685ad.0
        for <yocto@lists.yoctoproject.org>; Fri, 23 Feb 2024 17:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708738863; x=1709343663; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=80+PGDkLyU8Eg9ceKh55k2UzvUaYMXD06lRNAMF55Dg=;
        b=dRM3lshZo/bSFHyIFdFPSssngw2WTjMrWZzWcgjHi0d35KD9X7LqDvEEhUbhYrRYTW
         hCFPVZfxdCyZL4h9VHaDMalEptnYv0IA6uizybQqUpKl3gNpau825pur5yqJ+TVsgxby
         LHxSHm2K79KUNgVWgZJMxBMZw+oyc8e21xl9M9pMVaw+2Ulu9hbpZQ8kM3OlbqTE/VJv
         DckhxxroIs4Q99NBB09Q9iU1u7dO5wrMgpVxzspuExmDdhzBYhyOQaq+35bqjJBrg/OD
         wGz+fThelVQikeLeR+6vE2nc1oOnPPSk9K0eLrEtYHPTe9d3tWGcyyqJk+TwDuSWvsAF
         vzkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708738863; x=1709343663;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=80+PGDkLyU8Eg9ceKh55k2UzvUaYMXD06lRNAMF55Dg=;
        b=gQN4XZRuO49SrKTCOPNXB7XKUpZQbx1yaMVgSpxaY+1NJKuNDN8xPuGKxO8tyIZBTt
         j0YyaSMMwL85Kkzobw7t7mFt67qrlRt7NgRW9iFyEC1Q02OLN5vn4CWJglUdxHsBYZt6
         d9vm5OIQRRXEN/J3Gi5PLNnLJ89sCuH+1lf6AbxrBTp0QAWEv9Kzq8dapz0zXs7NA2Se
         1gyHr87wjhRm1ybuc27Zevci6l18kSa3er/++/mFshv9nfgX7y3jReyQhEPNaDcFjyWs
         Av3MUGOQR24Z5n5AFe1K0IYFDDxibyKJSdkZXB14l1yTQ31gMeP5DIW2Pz+4dnmK5aBJ
         lrSA==
X-Gm-Message-State: AOJu0Yy6LyBxIqSmYrSY1BTNzKPPHPHyzehg6zIN9fUocWP3kmgWXZft
	pCDIv9tuf2dg90ScqE3rPyHnTJwgQ5R0lGgfNI0QslpaAhVP+cIYgpvs9J1acOKRr411MFe4WJ+
	k2AiTyj53KcVO1f33isib6/oGg4UaAzYCd8w=
X-Google-Smtp-Source: AGHT+IEVLIvn+mXAHwlXcmG1cxyzmHEW4edi2NQP0tVf4VuEvY1n3QTHenCjz7AvdnX+Ab1yIdGiYcyIsudDxQ2F7Gs=
X-Received: by 2002:a17:903:2306:b0:1d9:e1aa:f217 with SMTP id
 d6-20020a170903230600b001d9e1aaf217mr1794176plh.22.1708738862850; Fri, 23 Feb
 2024 17:41:02 -0800 (PST)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Fri, 23 Feb 2024 17:40:51 -0800
Message-ID: <CABKMkPK-m3T120viE08qTJ8pm1xpd+bhZNAgevnmkvvb3XAFmA@mail.gmail.com>
Subject: [kirkstone] dwarfsrcfiles + rust staticlib
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ef2cde061216c48b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 24 Feb 2024 01:41:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62593

--000000000000ef2cde061216c48b
Content-Type: text/plain; charset="UTF-8"

I'm hitting qa issue when attempting to install a archive file built with
Rust:

dwarfsrcfiles:
/home/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0.3.0-r0/package/usr/lib/taffy_ffi/libtaffy_ffi.a:
not a valid ELF file

I can link this same archive file with C code and the executable runs.
It's a valid archive.

Any suggestions?

--000000000000ef2cde061216c48b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m hitting qa issue when attempting to install a=
 archive file built with Rust:</div><div><br></div><div>dwarfsrcfiles: /hom=
e/joel/agl/raspberrypi4/tmp/work/aarch64-agl-linux/rive-taffy-ffi/0.3.0-r0/=
package/usr/lib/taffy_ffi/libtaffy_ffi.a: not a valid ELF file</div><div><b=
r></div><div>I can link this same archive file with C code and the executab=
le runs.=C2=A0 It&#39;s a valid archive.<br></div><div><br></div><div>Any s=
uggestions?<br></div></div>

--000000000000ef2cde061216c48b--

