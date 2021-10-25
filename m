Return-Path: <Ahmed.Hossam@opensynergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73E7EC433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 08:27:47 +0000 (UTC)
Subject: Re: dunfell: pkgconfig-native build fails in existing Yocto BSP
To: yocto@lists.yoctoproject.org
From: "Ahmed Hossam" <Ahmed.Hossam@opensynergy.com>
X-Originating-Location: Berlin, Land Berlin, DE (85.203.15.54)
X-Originating-Platform: Linux Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 Oct 2021 01:27:46 -0700
References: 
 <AM0PR10MB31073A9D434C38BC2EF8A48B99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB31073A9D434C38BC2EF8A48B99839@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Message-ID: <25288.1635150466553146248@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LBLUlswtLWJ3LlCGdoND"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 08:27:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55133

--LBLUlswtLWJ3LlCGdoND
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

We also have the same issue with similar in-docker builds, a workaround for=
 the issue is mentioned here: https://bugzilla.yoctoproject.org/show_bug.cg=
i?id=3D14519 until the fix is backported to dunfell.

Best Regards,
Ahmed Hossam

--LBLUlswtLWJ3LlCGdoND
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />We also have the same issue with similar in-docker builds=
, a workaround for the issue is mentioned here:&nbsp;<a href=3D"https://bug=
zilla.yoctoproject.org/show_bug.cgi?id=3D14519" target=3D"_blank" rel=3D"no=
opener">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14519</a>&nbsp;=
until the fix is backported to dunfell.<br /><br />Best Regards,<br />Ahmed=
 Hossam

--LBLUlswtLWJ3LlCGdoND--

