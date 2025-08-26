Return-Path: <shivaji.yannaboina@thermofisher.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05253CA0EFA
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 06:36:04 +0000 (UTC)
Subject: Re: [yocto] Circular dependency issues when building Qt with Yocto Scarthgap
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Yannaboina, Shivaji" <shivaji.yannaboina@thermofisher.com>
X-Originating-Location: IN (59.144.139.168)
X-Originating-Platform: Windows Chrome 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Aug 2025 23:36:00 -0700
References: <783586b9-5aef-456e-b13e-0171ab013df7@gmail.com>
In-Reply-To: <783586b9-5aef-456e-b13e-0171ab013df7@gmail.com>
Message-ID: <2959.1756190160441438084@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SDo2LHa4jZEDY3qhzMOW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 06:36:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65793

--SDo2LHa4jZEDY3qhzMOW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for response,

I didn't add any Application still.
I was supposed to add meta-qt* layers to my existing yocto project structur=
e and build them successfully, so during this,
1. Performed Yocto build without QT layers and succeeded, and image didn't =
have the=C2=A0 QT related details when i verified in the manifest file
2.Added QT layers- build-getting errors as mentioned earlier-idea is if bui=
ld successful- hope these packages will reflect in final image Ex: in manif=
est file,

--SDo2LHa4jZEDY3qhzMOW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks for response,<br /><br />I didn't add any Application still. <b=
r />I was supposed to add meta-qt* layers to my existing yocto project stru=
cture and build them successfully, so during this,<br />1. Performed Yocto =
build without QT layers and succeeded, and image didn't have the&nbsp; QT r=
elated details when i verified in the manifest file<br />2.Added QT layers-=
 build-getting errors as mentioned earlier-idea is if build successful- hop=
e these packages will reflect in final image Ex: in manifest file,<br /><br=
 /><br /></div>

--SDo2LHa4jZEDY3qhzMOW--

