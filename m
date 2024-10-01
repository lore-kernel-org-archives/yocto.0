Return-Path: <ersevs@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6AC2CF64BE
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 13:28:59 +0000 (UTC)
Subject: Preventing kernel from recompiling when bundling into initramfs
To: yocto@lists.yoctoproject.org
From: "Ernast" <ersevs@gmail.com>
X-Originating-Location: US (4.2.206.46)
X-Originating-Platform: Linux Chrome 127
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 01 Oct 2024 06:28:54 -0700
Message-ID: <WGyR.1727789334726206141.xHcB@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2XkpXGGd31BBtTjFyBb2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 13:28:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63920

--2XkpXGGd31BBtTjFyBb2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have been looking into improving the build time of my yocto build and fol=
lowing some of the recommendations regarding debugging long build times, I =
have traced the issue back to dynamic data in my rootfs which causes misses=
 in the sstate cache. I believe the dynamic data causes the following rebui=
ld chain: do_rootfs -> kernel do_compile -> do_bundle_initramfs.

I understand why do_rootfs/do_bundle_initramfs must be rerun but in this pa=
rticular case there shouldn't be a need to recompile the kernel. As far as =
I can tell, this is only happening because the final initramfs (which needs=
 rebuilt) and the bzImage are part of the same sstate artifact (which is in=
validated as a result of the dynamic data in the rootfs). I'm wondering if =
there is an opportunity to improve this and keep the kernel from recompilin=
g each time only the rootfs changes.

Unfortunately the dynamic data in the rootfs is a hard requirement for me a=
nd cannot be removed.

Thanks,

Ernast

--2XkpXGGd31BBtTjFyBb2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>&nbsp;I have been looking into improving the build time of my yocto bu=
ild and following some of the recommendations regarding debugging long buil=
d times, I have traced the issue back to dynamic data in my rootfs which ca=
uses misses in the sstate cache. I believe the dynamic data causes the foll=
owing rebuild chain: do_rootfs -&gt; kernel do_compile -&gt; do_bundle_init=
ramfs.</div>
<div>&nbsp;</div>
<div>I understand why do_rootfs/do_bundle_initramfs must be rerun but in th=
is particular case there shouldn't be a need to recompile the kernel. As fa=
r as I can tell, this is only happening because the final initramfs (which =
needs rebuilt) and the bzImage are part of the same sstate artifact (which =
is invalidated as a result of the dynamic data in the rootfs). I'm wonderin=
g if there is an opportunity to improve this and keep the kernel from recom=
piling each time only the rootfs changes.</div>
<div>&nbsp;</div>
<div>Unfortunately the dynamic data in the rootfs is a hard requirement for=
 me and cannot be removed.&nbsp;</div>
<div>&nbsp;</div>
<div>Thanks,</div>
<div>&nbsp;</div>
<div>&nbsp;Ernast&nbsp;</div>

--2XkpXGGd31BBtTjFyBb2--

