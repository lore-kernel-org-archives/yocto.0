Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F07BCC25B08
	for <webhook@archiver.kernel.org>; Sat, 20 Aug 2022 18:52:38 +0000 (UTC)
Subject: Create the patch for the linux kernel module  #dunfell
To: yocto@lists.yoctoproject.org
From: mahendrasondagar08@gmail.com
X-Originating-Location: Kosamba, Gujarat, IN (103.238.110.104)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 20 Aug 2022 11:52:37 -0700
Message-ID: <TqOC.1661021557343936224.PfAS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="imtXWIFAE48z7pZPyoE7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Aug 2022 18:52:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57866

--imtXWIFAE48z7pZPyoE7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi... Community

Hope all are doing well

I'm dealing with the yocto dunfell branch with the STM32MP1

I know, how to create the patch for the device tree source (DTS) and add wi=
th the custom image

My intend is to modify the busb.c to work with my bluetooth USB dongle
I have create the patch for the same and adding the same way as i does with=
 the DTS file

But, unfortunately, it's causing the issue wile baking the image!

Can any one redirect me to the tutorial to customize the kernel module via =
patch under yocto ?

All suggestions and comments welcome

Thanks
Mahendra

--imtXWIFAE48z7pZPyoE7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi... Community</p>
<p>Hope all are doing well <br /><br />I'm dealing with the yocto dunfell b=
ranch with the STM32MP1<br /><br />I know, how to create the patch for the =
device tree source (DTS) and add with the custom image <br /><br />My inten=
d is to modify the busb.c to work with my bluetooth USB dongle <br />I have=
 create the patch for the same and adding the same way as i does with the D=
TS file <br /><br />But, unfortunately, it's causing the issue wile baking =
the image!<br /><br />Can any one redirect me to the tutorial to customize =
the kernel module via patch under yocto ?</p>
<p>&nbsp;</p>
<p>All suggestions and comments welcome <br /><br />Thanks <br />Mahendra</=
p>

--imtXWIFAE48z7pZPyoE7--

