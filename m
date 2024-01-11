Return-Path: <ashujoshi35@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5C4C4707B
	for <webhook@archiver.kernel.org>; Thu, 11 Jan 2024 08:44:39 +0000 (UTC)
Subject: Re: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
To: Khem Raj <raj.khem@gmail.com>,yocto@lists.yoctoproject.org
From: ashujoshi35@gmail.com
X-Originating-Location: Singapore, SG (165.225.230.126)
X-Originating-Platform: Windows Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Jan 2024 00:44:31 -0800
References: <CAMKF1spVwmeRRw+bhDMBYc7ckzUFZ+-_Hfjz4xvRsQgSDYFxVg@mail.gmail.com>
In-Reply-To: <CAMKF1spVwmeRRw+bhDMBYc7ckzUFZ+-_Hfjz4xvRsQgSDYFxVg@mail.gmail.com>
Message-ID: <12528.1704962671502041182@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nfvWacFvl1u43mBYB0ai"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jan 2024 08:44:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62130

--nfvWacFvl1u43mBYB0ai
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I tried to even override the linker using LDFLAGS but still linker embedded=
 is /lib64/ld-linux-x86_64.so.2 only. Below is how i tried to explicitly se=
t lib/ld-linux-x86-64.so.2

EXTRA_OEMAKE +=3D "LD_LIBRARY_PATH=3D${COMPONENTS_DIR}/core2-64/glibc/lib/l=
d-linux-x86-64.so.2:${LD_LIBRARY_PATH}"
LDFLAGS +=3D " -dynamic-linker ${COMPONENTS_DIR}/core2-64/glibc/lib/ld-linu=
x-x86-64.so.2"

--nfvWacFvl1u43mBYB0ai
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I tried to even override the linker using LDFLAGS but still linker embedded=
 is /lib64/ld-linux-x86_64.so.2 only. Below is how i tried to explicitly se=
t lib/ld-linux-x86-64.so.2<br /><br />
<div>EXTRA_OEMAKE +=3D "LD_LIBRARY_PATH=3D${COMPONENTS_DIR}/core2-64/glibc/=
lib/ld-linux-x86-64.so.2:${LD_LIBRARY_PATH}"</div>
<div>LDFLAGS +=3D " -dynamic-linker ${COMPONENTS_DIR}/core2-64/glibc/lib/ld=
-linux-x86-64.so.2"<br /><br /><br /></div>

--nfvWacFvl1u43mBYB0ai--

