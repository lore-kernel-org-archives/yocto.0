Return-Path: <thomas.isaacson@motorolasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934ACC52D7C
	for <webhook@archiver.kernel.org>; Wed, 21 Aug 2024 23:14:17 +0000 (UTC)
Subject: Re: [yocto] Input for FIPS openssl to be added in yocto build
To: "Ashish" <ashishm@mvista.com>, yocto@lists.yoctoproject.org
From: "Tom Isaacson" <thomas.isaacson@motorolasolutions.com>
X-Originating-Location: Auckland, NZ (203.211.107.153)
X-Originating-Platform: Windows Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 21 Aug 2024 16:14:12 -0700
References: <CAP2OjcjTrhgQM=7ZCpuOy5scmB_KZJAhZrAqvsARjV0SL4gcmw@mail.gmail.com>
In-Reply-To: <CAP2OjcjTrhgQM=7ZCpuOy5scmB_KZJAhZrAqvsARjV0SL4gcmw@mail.gmail.com>
Message-ID: <15565.1724282052793687095@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BPlEsb1X8Sr497fyXKvx"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Aug 2024 23:14:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63733

--BPlEsb1X8Sr497fyXKvx
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Has anyone made any progress on this? We're using Kirkstone (4.0) but not t=
he latest so OpenSSL 3.0.10, so we'd want to use OpenSSL 3.0.9 for FIPS sup=
port (ref https://openssl-library.org/source/ ) but the recipe mentioned is=
 for OpenSSL 1.0.2.

--BPlEsb1X8Sr497fyXKvx
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Has anyone made any progress on this? We're using Kirkstone (4.0) but =
not the latest so OpenSSL 3.0.10, so we'd want to use OpenSSL 3.0.9 for FIP=
S support (ref <a href=3D"https://openssl-library.org/source/" target=3D"_b=
lank" rel=3D"noopener">https://openssl-library.org/source/</a>) but the rec=
ipe mentioned is for OpenSSL 1.0.2.</div>
<div>&nbsp;</div>

--BPlEsb1X8Sr497fyXKvx--

