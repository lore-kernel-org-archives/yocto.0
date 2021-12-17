Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF74AC433F5
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 17:42:11 +0000 (UTC)
Subject: Questions about shared sstate, dl_dir, buildhistory_dir
To: yocto@lists.yoctoproject.org
From: "Rusty Howell" <rustyhowell@gmail.com>
X-Originating-Location: Provo, Utah, US (136.36.195.213)
X-Originating-Platform: Linux Firefox 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Dec 2021 09:42:11 -0800
Message-ID: <wFeF.1639762931527258142.7PP4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0G3Fcyn5FAzDfEzCHeqm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 17:42:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55612

--0G3Fcyn5FAzDfEzCHeqm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Related to this topic of setting up a cluster of build nodes: https://lists=
.yoctoproject.org/g/yocto/topic/85515144

We have multiple build nodes right now configured to use a shared SSTATE ca=
che and shared PR server. We are building four MACHINE types. Build jobs ar=
e randomly assigned, so any node can build the image for any MACHINE type.
In order to maintain a proper package feed for long term, we are backing up=
 the PR server database regularly.

I still have these questions though.

* Do we need to also backup anything in BUILDHISTORY_DIR?

* Do we need to share anything in BUILDHISTORY_DIR?

* I often see people recommend using SSTATE_MIRROR.=C2=A0 What are the pros=
/cons to using a SSTATE_MIRROR vs all nodes using a shared SSTATE_DIR?

* Can/should DL_DIR be shared across build nodes?

* Should the nodes use a remote/shared BBSERVER?

* I have also seen someone mention a "hash equivalence server" that can als=
o accelerate builds. Is that an old term for the PR_server?

* BB_SIGNATURE_HANDLER - I see there are some options to tweak in BB_SIGNAT=
IRE_WHITELIST.=C2=A0 Are there common tweaks to these vars are generally be=
neficial?=C2=A0 I image the defaults are the best.

Thanks for your time.
Rusty

--0G3Fcyn5FAzDfEzCHeqm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Related to this topic of setting up a cluster of build nodes:&nbsp; <a href=
=3D"https://lists.yoctoproject.org/g/yocto/topic/85515144" target=3D"_blank=
" rel=3D"noopener">https://lists.yoctoproject.org/g/yocto/topic/85515144</a=
><br /><br />We have multiple build nodes right now configured to use a sha=
red SSTATE cache and shared PR server. We are building four MACHINE types. =
Build jobs are randomly assigned, so any node can build the image for any M=
ACHINE type. <br />In order to maintain a proper package feed for long term=
, we are backing up the PR server database regularly.&nbsp; <br /><br />I s=
till have these questions though.<br /><br />* Do we need to also backup an=
ything in BUILDHISTORY_DIR? <br /><br />* Do we need to share anything in B=
UILDHISTORY_DIR?<br /><br />* I often see people recommend using SSTATE_MIR=
ROR.&nbsp; What are the pros/cons to using a SSTATE_MIRROR vs all nodes usi=
ng a shared SSTATE_DIR?<br /><br />* Can/should DL_DIR be shared across bui=
ld nodes?<br /><br />* Should the nodes use a remote/shared BBSERVER?<br />=
<br />* I have also seen someone mention a "hash equivalence server" that c=
an also accelerate builds. Is that an old term for the PR_server?<br /><br =
/>* BB_SIGNATURE_HANDLER - I see there are some options to tweak in BB_SIGN=
ATIRE_WHITELIST.&nbsp; Are there common tweaks to these vars are generally =
beneficial?&nbsp; I image the defaults are the best.<br /><br />Thanks for =
your time.<br />Rusty

--0G3Fcyn5FAzDfEzCHeqm--

