Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAAEE77188
	for <webhook@archiver.kernel.org>; Thu,  2 Jan 2025 11:32:08 +0000 (UTC)
Subject: Re: [yocto] Python3.12 / Scarthgap build issues.
To: "Daniel Squires" <dan@engineeredarts.co.uk>, yocto@lists.yoctoproject.org
From: "Daniel Squires" <dan@engineeredarts.co.uk>
X-Originating-Location: Watford, England, GB (62.31.146.167)
X-Originating-Platform: Linux Chrome 129
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 02 Jan 2025 03:31:59 -0800
References: <MLZs.1735816952240340605.zFIL@lists.yoctoproject.org>
In-Reply-To: <MLZs.1735816952240340605.zFIL@lists.yoctoproject.org>
Message-ID: <19806.1735817519813620792@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1igqhRFLXQ638yVItCrT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jan 2025 11:32:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64492

--1igqhRFLXQ638yVItCrT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Answering my own question, having looked at what I dismissed as an irreleva=
nt post more thoroughly I spotted a potential source of the above. It appea=
rs the python3 recipes pyconfig.h is getting clobbered by the tensorflow re=
cipe which I had previously built:

https://github.com/ribalda/meta-tensorflow/blob/7c0dba3f2fb95f4ece1535b3f3d=
7e5cc98361f19/recipes-framework/tensorflow/tensorflow_1.13.0.bb#L57

--1igqhRFLXQ638yVItCrT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Answering my own question, having looked at what I dismissed as an irr=
elevant post more thoroughly I spotted a potential source of the above. It =
appears the python3 recipes pyconfig.h is getting clobbered by the tensorfl=
ow recipe which I had previously built:</div>
<div>&nbsp;</div>
<div>https://github.com/ribalda/meta-tensorflow/blob/7c0dba3f2fb95f4ece1535=
b3f3d7e5cc98361f19/recipes-framework/tensorflow/tensorflow_1.13.0.bb#L57</d=
iv>

--1igqhRFLXQ638yVItCrT--

