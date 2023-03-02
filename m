Return-Path: <vikkramblossoms@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CEEC7EE23
	for <webhook@archiver.kernel.org>; Thu,  2 Mar 2023 01:48:46 +0000 (UTC)
Subject: #esdk TEMPLATECONF variable intializing sdk fails
To: yocto@lists.yoctoproject.org
From: vikkramblossoms@gmail.com
X-Originating-Location: Coimbatore, Tamil Nadu, IN (49.206.114.52)
X-Originating-Platform: Android Phone Chrome 110
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 01 Mar 2023 17:48:44 -0800
Message-ID: <KDTl.1677721724267023767.DZDo@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="RouSCIzV4r7bTtLSMKIH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Mar 2023 01:48:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59330

--RouSCIzV4r7bTtLSMKIH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I do export the TEMPLATECONF variable to product=C2=A0 variant. Then i buil=
d a full esdk. I see that the templateconf.cfg stores the absolute path of =
my variant template folder. When i try to install the esdk this absolute pa=
th creates error. I tried to blacklist this variable

--RouSCIzV4r7bTtLSMKIH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I do export the TEMPLATECONF variable to product&nbsp; variant. Then i buil=
d a full esdk. I see that the templateconf.cfg stores the absolute path of =
my variant template folder. When i try to install the esdk this absolute pa=
th creates error. I tried to blacklist this variable&nbsp;

--RouSCIzV4r7bTtLSMKIH--

