Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64C6D5AE6B
	for <webhook@archiver.kernel.org>; Thu,  7 Nov 2024 07:23:22 +0000 (UTC)
Subject: exclude layer from specific image when have multiple images
To: yocto@lists.yoctoproject.org
From: "Haimbach" <haimbachar2008@gmail.com>
X-Originating-Location: Shelomi, Northern District, IL (193.169.71.243)
X-Originating-Platform: Linux Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 06 Nov 2024 23:23:16 -0800
Message-ID: <IToB.1730964196493730746.P0kI@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PgdQmtwzmtlqt851ZErR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Nov 2024 07:23:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64227

--PgdQmtwzmtlqt851ZErR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have just wonder if there is an option to exclude specific layer to speci=
fic images.

For an example, lets says I have 2 images called: *image-A.bb* , *image-B.b=
b*
And lets says I have the next layer: *meta-my-layer*
this layer is in the list of the bblayers.conf.

Now I want only that *image-A* will include that layer.
But I don't want that *image-B* will include that layer.

Is there a way to achieve this?

I can do it with SRC_URI:remove the contents of the layer in image-B .
*But I want to use more nicer approach.*

Regards,
Haim

--PgdQmtwzmtlqt851ZErR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I have just wonder if there is an option to exclude specific layer to =
specific images.</div>
<div>&nbsp;</div>
<div>For an example, lets says I have 2 images called:<strong> image-A.bb</=
strong>,<strong> image-B.bb</strong></div>
<div>And lets says I have the next layer: <strong>meta-my-layer</strong></d=
iv>
<div>this layer is in the list of the bblayers.conf.</div>
<div>&nbsp;</div>
<div>Now I want only that <strong>image-A</strong> will include that layer.=
</div>
<div>But I don't want that <strong>image-B</strong> will include that layer=
.</div>
<div>&nbsp;</div>
<div>Is there a way to achieve this?</div>
<div>&nbsp;</div>
<div>I can do it with SRC_URI:remove the contents of the layer in image-B .=
</div>
<div><strong>But I want to use more nicer approach.</strong></div>
<div>&nbsp;</div>
<div>Regards,</div>
<div>Haim</div>

--PgdQmtwzmtlqt851ZErR--

