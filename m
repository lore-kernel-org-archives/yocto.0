Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622D4D3ABEC
	for <webhook@archiver.kernel.org>; Mon, 11 Nov 2024 18:39:01 +0000 (UTC)
Subject: Re: [yocto] kernel headers missing head files when using SDK generated from populate_sdk
To: "Crane" <crane2018@gmail.com>, yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Hamilton, Ontario, CA (72.138.19.58)
X-Originating-Platform: Windows Chrome 130
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Nov 2024 10:38:55 -0800
References: <fZUC.1731203786688941221.OCwj@lists.yoctoproject.org>
In-Reply-To: <fZUC.1731203786688941221.OCwj@lists.yoctoproject.org>
Message-ID: <29094.1731350335316967481@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wBgL8YFV8IKTrqneD7fp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Nov 2024 18:39:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64255

--wBgL8YFV8IKTrqneD7fp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

It looks like that it is not because the kernel header misses head file, bu=
t the kernel header is for user application, not the one for kernel module.
For example, in ./include/linux/types.h, there are below lines:

>=20
> #define __EXPORTED_HEADERS__
> #include <uapi/linux/types.h>
>=20

So, I am afraid that "populate_sdk" just generates the SDK for user applica=
tion development.
How to configure in Yocto so that "populate_sdk" generates the kernel heade=
rs that are for kernel module development?
In the manual, I don't see that eSDK is to do that.

Thanks!
Crane

--wBgL8YFV8IKTrqneD7fp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>It looks like that it is not because the kernel header misses head fil=
e, but the kernel header is for user application, not the one for kernel mo=
dule.</div>
<div>For example, in ./include/linux/types.h, there are below lines:</div>
<blockquote>
<div>#define __EXPORTED_HEADERS__</div>
<div>#include &lt;uapi/linux/types.h&gt;</div>
</blockquote>
<div>So, I am afraid that "populate_sdk" just generates the SDK for user ap=
plication development.</div>
<div>How to configure in Yocto so that "populate_sdk" generates the kernel =
headers that are for kernel module development?</div>
<div>In the manual, I don't see that eSDK is to do that.</div>
<div>&nbsp;</div>
<div>Thanks!</div>
<div>Crane</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--wBgL8YFV8IKTrqneD7fp--

