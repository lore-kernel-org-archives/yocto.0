Return-Path: <sebastien.raillet@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0BA0EC6FD18
	for <webhook@archiver.kernel.org>; Tue, 25 Apr 2023 08:45:27 +0000 (UTC)
Subject: Re: Ownership issue during do_image
To: yocto@lists.yoctoproject.org
From: sebastien.raillet@gmail.com
X-Originating-Location: CH (147.161.182.251)
X-Originating-Platform: Windows Chrome 112
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 25 Apr 2023 01:45:26 -0700
References: <28940.1671177470292511205@lists.yoctoproject.org>
In-Reply-To: <28940.1671177470292511205@lists.yoctoproject.org>
Message-ID: <8648.1682412326518905593@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="gkxkgI2g3Q4f1UZh6MOR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Apr 2023 08:45:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59774

--gkxkgI2g3Q4f1UZh6MOR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I was facing a similar issue some days ago and I've found your post.

We are using also a custom image generation to split the final rootfs in ma=
ny partitions. After upgrading our distro to dunfell, we encountered simila=
r issue to the one you had. We were using temporary folders like this : IMA=
GE_ROOTFS_COPY=3D"${DEPLOY_DIR_IMA GE}/rootfs-copy/"
MM_SPLITDIR=3D"${DEPLOY_DIR_IMAGE}/partitions/" Trying to dig into the issu=
e, I've discovered the introduction of this commit ( https://github.com/yoc=
toproject/poky/commit/4e7c21160b74d0e63d90cae535ff73579cc4fa8b ) (integrate=
d into Dunfell 3.1.6 and above). The goal is to make pseudo / fakeroot mech=
anism ignoring many paths to be stored inside its database.

Sadly, ${DEPLOY_DIR_IMAGE} as well as ${S} you used are now part of these e=
xcluded paths. The fix I've made on my side is to use ${WORKDIR} instead of=
 ${DEPLOY_DIR_IMAGE}.

My assumption is that if one of the path you are using isn't tracked by pse=
udo / fakeroot mechanism, it will refuse to make the copy preserving the pe=
rmissions as it isn't able to retrieve them inside the database.

Hope it can help to better understand what happens if others people are fac=
ing similar issue :)

--gkxkgI2g3Q4f1UZh6MOR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I was facing a similar issue some days ago and I've found=
 your post.<br /><br />We are using also a custom image generation to split=
 the final rootfs in many partitions. After upgrading our distro to dunfell=
, we encountered similar issue to the one you had. We were using temporary =
folders like this :&nbsp;
<pre class=3D"prettyprint prettyprinted" style=3D"padding: 2px; line-height=
: 1.42857; border-color: #888888;"><code class=3D"language-unknown"><span c=
lass=3D"pun" style=3D"color: #666600;">IMAGE_ROOTFS_COPY=3D"${DEPLOY_DIR_IM=
A</span><span class=3D"pun">GE}/rootfs-copy/"</span><span class=3D"pun" sty=
le=3D"color: #666600;">
MM_SPLITDIR=3D"${DEPLOY_DIR_IMAGE}/partitions/"</span></code></pre>
Trying to dig into the issue, I've discovered the introduction of <a href=
=3D"https://github.com/yoctoproject/poky/commit/4e7c21160b74d0e63d90cae535f=
f73579cc4fa8b" target=3D"_blank" rel=3D"noopener">this commit</a>&nbsp;(int=
egrated into Dunfell 3.1.6 and above). The goal is to make pseudo / fakeroo=
t mechanism ignoring many paths to be stored inside its database.<br /><br =
/>Sadly, ${DEPLOY_DIR_IMAGE} as well as ${S} you used are now part of these=
 excluded paths. The fix I've made on my side is to use ${WORKDIR} instead =
of ${DEPLOY_DIR_IMAGE}.<br /><br />My assumption is that if one of the path=
 you are using isn't tracked by pseudo / fakeroot mechanism, it will refuse=
 to make the copy preserving the permissions as it isn't able to retrieve t=
hem inside the database.<br /><br />Hope it can help to better understand w=
hat happens if others people are facing similar issue :)

--gkxkgI2g3Q4f1UZh6MOR--

