Return-Path: <b.stemer@gantner-instruments.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D98C4D73EBB
	for <webhook@archiver.kernel.org>; Mon,  2 Feb 2026 07:06:15 +0000 (UTC)
Subject: Re: [yocto] packages aren't added to eSDK sysroot
To: "Andre" <an_aire@yahoo.com>, yocto@lists.yoctoproject.org
From: b.stemer@gantner-instruments.com
X-Originating-Location: Schruns, Vorarlberg, AT (194.208.89.84)
X-Originating-Platform: Linux Chrome 144
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 01 Feb 2026 23:06:10 -0800
References: <Wbln.1751977218969341818.0K3Y@lists.yoctoproject.org>
In-Reply-To: <Wbln.1751977218969341818.0K3Y@lists.yoctoproject.org>
Message-ID: <1043486.1770015970265491848@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="tkpo7lmG8sL2ImF0IUPf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Feb 2026 07:06:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66206

--tkpo7lmG8sL2ImF0IUPf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have the same problem and could not find any solution for it. With 'rocko=
' all our libraries are available in the SDK and the eSDK. Since the transi=
tion to 'scarthgap', only the SDK contains my libraries and I cannot mange =
it to make them available in the eSDK. I played around with PACKAGE_ARCH an=
d SDK_PACKAGE_ARCHS, without success. Would be great to see any comments on=
 this issue.

--tkpo7lmG8sL2ImF0IUPf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have the same problem and could not find any solution for it. With '=
rocko' all our libraries are available in the SDK and the eSDK. Since the t=
ransition to 'scarthgap', only the SDK contains my libraries and I cannot m=
ange it to make them available in the eSDK. I played around with PACKAGE_AR=
CH and SDK_PACKAGE_ARCHS, without success. Would be great to see any commen=
ts on this issue.</div>

--tkpo7lmG8sL2ImF0IUPf--

