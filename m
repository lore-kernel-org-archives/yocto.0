Return-Path: <glmeocci@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76D9C00140
	for <webhook@archiver.kernel.org>; Fri,  5 Aug 2022 19:43:31 +0000 (UTC)
Subject: running podman from do_install
To: yocto@lists.yoctoproject.org
From: glmeocci@gmail.com
X-Originating-Location: Arezzo, Tuscany, IT (80.211.237.175)
X-Originating-Platform: Mac Firefox 103
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 05 Aug 2022 12:43:21 -0700
Message-ID: <f1Ko.1659728601779083319.mAoC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="C6ZavLVmo5bT7IlRft1T"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Aug 2022 19:43:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57786

--C6ZavLVmo5bT7IlRft1T
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is it possibile to run podman (3.0.1) from a do_install task?
I am trying to install a podman store of a container directly in the final =
image but I'm getting this error:

+ /usr/bin/podman --root /home/user/poky/build/tmp-glibc/work/cortexa57-os-=
linux/app/0.36.0-r0/container-storage pull REPO_URL

Error: cannot setup namespace using newuidmap: exit status 1

With podman 4.1 I'm getting this error:
cannot setresgid: Invalid argument

Any idea?

--C6ZavLVmo5bT7IlRft1T
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Is it possibile to run podman (3.0.1) from a do_install task?<br />I am try=
ing to install a podman store of a container directly in the final image bu=
t I'm getting this error:<br /><br />+ /usr/bin/podman --root /home/user/po=
ky/build/tmp-glibc/work/cortexa57-os-linux/app/0.36.0-r0/container-storage =
pull REPO_URL<br /><br />Error: cannot setup namespace using newuidmap: exi=
t status 1<br /><br />With podman 4.1 I'm getting this error:<br />cannot s=
etresgid: Invalid argument<br /><br />Any idea?

--C6ZavLVmo5bT7IlRft1T--

