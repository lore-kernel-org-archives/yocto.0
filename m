Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCAC433FE
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 07:37:00 +0000 (UTC)
Subject: firewalld pkg_postinit issue #gstreamer
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Mar 2022 00:36:58 -0700
Message-ID: <1UOk.1648107418717324909.H2KT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="IVd9aHXvdAytgpt0KnyD"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 07:37:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56546

--IVd9aHXvdAytgpt0KnyD
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am facing the issue pkg_postinit. I tried to delete this on firewalld rec=
ipe side but I have not identified it. Can you please anybody know this iss=
ue please guide me.
ERROR: core-image-base-1.0-r0 do_rootfs: Postinstall scriptlets of ['firewa=
lld'] have failed. If the intention is to defer them to first boot,
then please place them into pkg_postinst_ontarget_${PN} ().

--
Regards,
Sateesh

--IVd9aHXvdAytgpt0KnyD
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 I am facing the issue pkg_postinit. I tried to delete this on firewalld re=
cipe side but I have not identified it. Can you please anybody know this is=
sue please guide me.<br />
<div>ERROR: core-image-base-1.0-r0 do_rootfs: Postinstall scriptlets of ['f=
irewalld'] have failed. If the intention is to defer them to first boot,</d=
iv>
<div>then please place them into pkg_postinst_ontarget_${PN} ().<br /><br /=
><br /></div>
-- <br />Regards,<br />Sateesh

--IVd9aHXvdAytgpt0KnyD--

