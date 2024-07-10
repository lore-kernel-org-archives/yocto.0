Return-Path: <philip.dawson@datapath.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0651AC3DA45
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 12:25:41 +0000 (UTC)
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with different device trees
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: philip.dawson@datapath.co.uk
X-Originating-Location: Paddington, England, GB (212.69.51.233)
X-Originating-Platform: Windows Firefox 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Jul 2024 05:25:34 -0700
References: <CANNYZj8xOKK=s+QnDR-XxZsmJrhcHH2JD4x3x4sgSoqG16vvZQ@mail.gmail.com>
In-Reply-To: <CANNYZj8xOKK=s+QnDR-XxZsmJrhcHH2JD4x3x4sgSoqG16vvZQ@mail.gmail.com>
Message-ID: <12578.1720614334413245014@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jqgotOARGZwn75bIP9vK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 12:25:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63454

--jqgotOARGZwn75bIP9vK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

The four boards are all using the same MACHINE which is the petalinux defau=
lt for our devices (zynqmp_generic)

Our software depends on headers from our custom kernel modules/drivers (e.g=
. for ioctls). If there's a better way of doing this please let me know.

Thanks,
Phil

--jqgotOARGZwn75bIP9vK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />The four boards are all using the same MACHINE which is=
 the petalinux default for our devices (zynqmp_generic)<br /><br />Our soft=
ware depends on headers from our custom kernel modules/drivers (e.g. for io=
ctls). If there's a better way of doing this please let me know.<br /><br /=
>Thanks,<br />Phil

--jqgotOARGZwn75bIP9vK--

