Return-Path: <shivaji.yannaboina@thermofisher.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8804CA0EE4
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 05:43:53 +0000 (UTC)
Subject: Re: [yocto] Circular dependency issues when building Qt with Yocto Scarthgap
To: "Yannaboina, Shivaji" <shivaji.yannaboina@thermofisher.com>, yocto@lists.yoctoproject.org
From: "Yannaboina, Shivaji" <shivaji.yannaboina@thermofisher.com>
X-Originating-Location: IN (59.144.139.168)
X-Originating-Platform: Windows Chrome 139
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Aug 2025 22:43:45 -0700
References: <SA1P222MB1341100CC95767E9F1491FCEE53EA@SA1P222MB1341.NAMP222.PROD.OUTLOOK.COM>
In-Reply-To: <SA1P222MB1341100CC95767E9F1491FCEE53EA@SA1P222MB1341.NAMP222.PROD.OUTLOOK.COM>
Message-ID: <1989.1756187025705671685@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="novxpqfWvTexTZRs8S41"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 05:43:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65791

--novxpqfWvTexTZRs8S41
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

1. I am able to build the image using bit bake successfully without adding =
QT packages.
2. The moment when add QT packages like this in .bb file in receipes-core l=
ike below

IMAGE_INSTALL +=3D "qtbase qtdeclarative qtquickcontrols2 qtgraphicaleffect=
s qttools" - the circular dependency issue is coming all the 3 scenario's
with meta-qt5.12, meta-qt5.15, meta-qt6.11

--novxpqfWvTexTZRs8S41
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>1. I am able to build the image using bit bake successfully without ad=
ding QT packages.<br />2. The moment when add QT packages like this in .bb =
file in receipes-core like below
<p>IMAGE_INSTALL +=3D "qtbase qtdeclarative qtquickcontrols2 qtgraphicaleff=
ects qttools" - the circular dependency issue is coming all the 3 scenario'=
s<br />&nbsp; &nbsp;with meta-qt5.12, meta-qt5.15, meta-qt6.11</p>
<span data-teams=3D"true"><span><span style=3D"font-family: -apple-system, =
BlinkMacSystemFont, 'Segoe UI', system-ui, 'Apple Color Emoji', 'Segoe UI E=
moji', 'Segoe UI Web', sans-serif; font-size: 14px; white-space: pre-wrap;"=
>&nbsp;</span></span></span>&nbsp;</div>

--novxpqfWvTexTZRs8S41--

