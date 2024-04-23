Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E01AC4345F
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 11:57:32 +0000 (UTC)
Subject: Yocto common place holder for includes which used multiple recipe
To: yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Apr 2024 04:57:29 -0700
Message-ID: <COpS.1713873449234365047.hDTV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="vrJMawvy2wQQOnkAlU6s"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 11:57:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62985

--vrJMawvy2wQQOnkAlU6s
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I need a common place holder to share one include files which can be used b=
y multiple recipe (this include files includes some variables like SRC_URL,=
 tag, gitbranch, ..., etc).

I can copy it to each recipe but I am looking for the best practice to shar=
e a common inc file for all recipes in meta-xxx which can be found by defau=
lt and this need to be under meta-xxx folder.

thanks in advance.

Regards,

Salahaldeen Altous

--vrJMawvy2wQQOnkAlU6s
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p>
<p>I need a common place holder to share one include files which can be use=
d by multiple recipe (this include files includes some variables like SRC_U=
RL, tag, gitbranch, ..., etc).</p>
<p>I can copy it to each recipe but I am looking for the best practice to s=
hare a common inc file for all recipes in meta-xxx which can be found by de=
fault and this need to be under meta-xxx folder.</p>
<p>thanks in advance.</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Salahaldeen Altous</p>

--vrJMawvy2wQQOnkAlU6s--

