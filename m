Return-Path: <jguittet.opensource@witekio.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85536C3DA49
	for <webhook@archiver.kernel.org>; Fri, 26 Jul 2024 10:50:28 +0000 (UTC)
Subject: Custom symlink in build/tmp/deploy/image/machine
To: yocto@lists.yoctoproject.org
From: "Joel GUITTET" <jguittet.opensource@witekio.com>
X-Originating-Location: Brest, Brittany, FR (78.120.132.222)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 26 Jul 2024 03:50:23 -0700
Message-ID: <rBsI.1721991023925081725.nUIZ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gJCnMiGEwdZSZMFrsATo"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 26 Jul 2024 10:50:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63577

--gJCnMiGEwdZSZMFrsATo
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a custom image class that is generating image with extension ".my-im=
age".
The IMAGE_CMD:my-image function I have created put this image at "${IMGDEPL=
OYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.my-image"
I see it is deployed in build/tmp/deploy/image/machine directory, with an a=
dditional symlink so that I can use the symlink to reference the latest ver=
sion built. Ok.

The custom image class now also generate a signature of this file with exte=
nsion ".sig". The IMAGE_CMD:my-image function put this file at "${IMGDEPLOY=
DIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.sig".
I see it is deployed in build/tmp/deploy/image/machine directory, but there=
 is no symlink created for this new file.

How is it possible to configure additional symlink to be created while depl=
oying the image and related files ?

Thanks
Joel

--gJCnMiGEwdZSZMFrsATo
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I have a custom image class that is generating image with extension ".=
my-image".</div>
<div>The IMAGE_CMD:my-image function I have created put this image at "${IM=
GDEPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.my-image"</div>
<div>I see it is deployed in build/tmp/deploy/image/machine directory, with=
 an additional symlink so that I can use the symlink to reference the lates=
t version built. Ok.</div>
<div>&nbsp;</div>
<div>The custom image class now also generate a signature of this file with=
 extension ".sig". The IMAGE_CMD:my-image function put this file at "${IMGD=
EPLOYDIR}/${IMAGE_NAME}${IMAGE_NAME_SUFFIX}.sig".</div>
<div>I see it is deployed in build/tmp/deploy/image/machine directory, but =
there is no symlink created for this new file.</div>
<div>&nbsp;</div>
<div>How is it possible to configure additional symlink to be created while=
 deploying the image and related files ?</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Joel</div>

--gJCnMiGEwdZSZMFrsATo--

