Return-Path: <kavita.mnnit@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E00C0218A
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 15:55:28 +0000 (UTC)
Subject: Re: [yocto] [yocto scarthgap] do_configure failed for pth-2.0.7 package #scarthgap #yocto #autotools #bitbake
To: "Martin Jansa" <martin.jansa@gmail.com>, yocto@lists.yoctoproject.org
From: kavita.mnnit@gmail.com
X-Originating-Location: US (170.85.71.81)
X-Originating-Platform: Windows Chrome 132
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 28 Jan 2025 07:55:26 -0800
References: <CA+chaQccQt04-1U-QJVO33fnZfZXKxs87ZENuvw4CjGviP9JFw@mail.gmail.com>
In-Reply-To: <CA+chaQccQt04-1U-QJVO33fnZfZXKxs87ZENuvw4CjGviP9JFw@mail.gmail.com>
Message-ID: <25624.1738079726475804282@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="DdmxKQ1XFztK8Ota26bk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 15:55:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64665

--DdmxKQ1XFztK8Ota26bk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Actually in my project, there is a dependency of pth package. We are using =
with the Kirkstone as well. Now with the scarthgap release, autoconf versio=
n has been changed. When I am rolling back to old autoconf version, its bui=
lding successfully.

Now, I am pth package recipe to use the autoconf old version while other on=
es will use newer version.

--DdmxKQ1XFztK8Ota26bk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Actually in my project, there is a dependency of pth package. We are u=
sing with the Kirkstone as well. Now with the scarthgap release, autoconf v=
ersion has been changed. When I am rolling back to old autoconf version, it=
s building successfully.</div>
<div>&nbsp;</div>
<div>Now, I am pth package recipe to use the autoconf old version while oth=
er ones will use newer version.</div>

--DdmxKQ1XFztK8Ota26bk--

