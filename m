Return-Path: <bgctkd@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2576C761A6
	for <webhook@archiver.kernel.org>; Mon, 27 Mar 2023 13:24:29 +0000 (UTC)
Subject: Intel G202 Lan Card Sluggishness #kirkstone  #mickledore #lan #igb
To: yocto@lists.yoctoproject.org
From: bgctkd@gmail.com
X-Originating-Location: Beaverton, Oregon, US (136.226.60.100)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 27 Mar 2023 06:24:25 -0700
Message-ID: <KEjN.1679923465663777896.vkYb@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="URnO0JSS7yoelGywPfX7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 13:24:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59527

--URnO0JSS7yoelGywPfX7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello -- I am currently working on an embedded system using an Intel G202 L=
an card. It uses the igb driver. We are on the Kirkstone branch the ping re=
sponse time is poor (on the order of hundreds of milliseconds), packet trac=
es show packet loss and dmesg reports "Detected Tx Unit Hang". I have updat=
ed to poky master (mickledore). And with a bit of effort to I have managed =
to get partially functional image that I can at least configure the network=
 interfaces with. This appears to fix the issue as I now have sub milliseco=
nd response time. We have also tried stock Ubuntu images on our platform. T=
he Ubuntu Focal image exhibits the poor behavior, Jammy appears to have res=
olved the issue. I have looked at the differences as well as merged changes=
 in the igb source code and files that appear to be "MSI" related, neither =
have resolved the issue. If I configure out "#CONFIG_PCI_MSI is not set" - =
this also corrects the issue but is not a good solution for us. Can anyone =
point me to where the fix for this issue is? We are presently in the proces=
s of bisecting changes to try to determine when/where the issue was resolve=
d.

--URnO0JSS7yoelGywPfX7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello -- I am currently working on an embedded system using an Intel G202 L=
an card. It uses the igb driver. We are on the Kirkstone branch the ping re=
sponse time is poor (on the order of hundreds of milliseconds), packet trac=
es show packet loss and dmesg reports "Detected Tx Unit Hang". I have updat=
ed to poky master (mickledore). And with a bit of effort to I have managed =
to get partially functional image that I can at least configure the network=
 interfaces with. This appears to fix the issue as I now have sub milliseco=
nd response time. We have also tried stock Ubuntu images on our platform. T=
he Ubuntu Focal image exhibits the poor behavior, Jammy appears to have res=
olved the issue. I have looked at the differences as well as merged changes=
 in the igb source code and files that appear to be "MSI" related, neither =
have resolved the issue. If I configure out "#CONFIG_PCI_MSI is not set" - =
this also corrects the issue but is not a good solution for us. Can anyone =
point me to where the fix for this issue is? We are presently in the proces=
s of bisecting changes to try to determine when/where the issue was resolve=
d.

--URnO0JSS7yoelGywPfX7--

