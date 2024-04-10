Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5FB9CD128A
	for <webhook@archiver.kernel.org>; Wed, 10 Apr 2024 16:36:50 +0000 (UTC)
Subject: linux-raspberrypi kernel with Xen support
To: yocto@lists.yoctoproject.org
From: tanski.piotr@gmail.com
X-Originating-Location: =?UTF-8?B?xbt5cmFyZMOzdywgTWF6b3ZpYSwgUEw=?= (83.24.45.158)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Apr 2024 09:27:05 -0700
Message-ID: <tlyO.1712766425727213574.4b4b@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ms5UHfQijAcwOfMwK21E"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Apr 2024 16:36:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62912

--Ms5UHfQijAcwOfMwK21E
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The problem I have is well described on meta virtualization mailing lists h=
ere: https://lists.yoctoproject.org/g/meta-virtualization/message/8672.

Since, at least for now, there's no good fix for the problem I've found, I'=
m thinking whether there's a way to use Xen from meta-virtualization layer =
with linux-raspberrypi kernel, instead of linux-yocto.
Has anyone tried to adjust meta-virtualization or port it to get it working=
 with linux-raspberrypi?

PS. I tried a few quick and dirty solutions but there are some problems wit=
h kernel modules memory layouts mismatch and XEN modules are not inserted.

--Ms5UHfQijAcwOfMwK21E
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The problem I have is well described on meta virtualization mailing lists h=
ere:&nbsp;<a href=3D"https://lists.yoctoproject.org/g/meta-virtualization/m=
essage/8672" target=3D"_blank" rel=3D"noopener">https://lists.yoctoproject.=
org/g/meta-virtualization/message/8672</a>&nbsp;.<br /><br />Since, at leas=
t for now, there's no good fix for the problem I've found, I'm thinking whe=
ther there's a way to use Xen from meta-virtualization layer with linux-ras=
pberrypi kernel, instead of linux-yocto.<br />Has anyone tried to adjust me=
ta-virtualization or port it to get it working with linux-raspberrypi?<br /=
><br />PS. I tried a few quick and dirty solutions but there are some probl=
ems with kernel modules memory layouts mismatch and XEN modules are not ins=
erted.

--Ms5UHfQijAcwOfMwK21E--

