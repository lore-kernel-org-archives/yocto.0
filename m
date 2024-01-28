Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9266C47258
	for <webhook@archiver.kernel.org>; Sun, 28 Jan 2024 09:01:28 +0000 (UTC)
Subject: Re: [yocto] How to build two images with different settings of a recipe in Yocto
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: =?UTF-8?B?SsO2cmcgU29tbWVy?= <joerg.sommer@navimatix.de>
X-Originating-Location: Jena, Thuringia, DE (91.65.35.62)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 28 Jan 2024 01:01:25 -0800
References: <CANNYZj_1VzMf12EPRQgm=zG2pAJR+_6BRrJ-Ejgq7NGwOfpnYg@mail.gmail.com>
In-Reply-To: <CANNYZj_1VzMf12EPRQgm=zG2pAJR+_6BRrJ-Ejgq7NGwOfpnYg@mail.gmail.com>
Message-ID: <3472.1706432485345899127@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w0r26UFQVGfTLblgBHau"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Jan 2024 09:01:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62313

--w0r26UFQVGfTLblgBHau
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your reply. It helps, but I see some issues with the ROOTFS_POST=
PROCESS_COMMAND.

For the config file this is a possible solution. But what can I do if I nee=
d code changes? SSH announced they'll disable DSA support by default in a f=
ew months and for all other images except one I would stay with this defaul=
t. I have to supply another setting to configure when building the recipe f=
or one image. And I have more images they require reduced (or widened) sett=
ings of packages.

And editing the image has the drawback that it doesn't play well with packa=
ge management. If I install/update the sshd ipk, it doesn't contain the cha=
nge from ROOTFS_POSTPROCESS_COMMAND.

--w0r26UFQVGfTLblgBHau
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your reply. It helps, but I see some issues with the ROOTFS_POST=
PROCESS_COMMAND.<br /><br />For the config file this is a possible solution=
. But what can I do if I need code changes? SSH announced they'll disable D=
SA support by default in a few months and for all other images except one I=
 would stay with this default. I have to supply another setting to configur=
e when building the recipe for one image. And I have more images they requi=
re reduced (or widened) settings of packages.<br /><br />And editing the im=
age has the drawback that it doesn't play well with package management. If =
I install/update the sshd ipk, it doesn't contain the change from ROOTFS_PO=
STPROCESS_COMMAND.

--w0r26UFQVGfTLblgBHau--

