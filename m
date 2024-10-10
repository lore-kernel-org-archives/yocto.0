Return-Path: <jean-michel.papy@exail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78DE7CF11C4
	for <webhook@archiver.kernel.org>; Thu, 10 Oct 2024 09:56:18 +0000 (UTC)
Subject: Re: [yocto] #kirkstone #yocto [openembedded-core] openssh/sshd
To: "Khem Raj" <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
From: "Jean-Michel Papy" <jean-michel.papy@exail.com>
X-Originating-Location: Saint-Fons, Auvergne-Rhone-Alpes, FR (91.167.88.195)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Oct 2024 02:56:06 -0700
References: <CAMKF1sr0asGXus8v9KiOJ_01uwxpFSDC3z_kA02ONK9BPecQ7w@mail.gmail.com>
In-Reply-To: <CAMKF1sr0asGXus8v9KiOJ_01uwxpFSDC3z_kA02ONK9BPecQ7w@mail.gmail.com>
Message-ID: <10004.1728554166177308269@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Jv6UrHilErtUDEcMOLNH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Oct 2024 09:56:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64002

--Jv6UrHilErtUDEcMOLNH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Khem,

Thank you for your answer and for the patch.
I tested both changing permissions before and after file renaming and it wo=
rks equally well.
If you do not mind I'd like to have your opinion about the most preferred w=
ay of doing a
modification of recipe via a bbappend:
1) providing patch and letting bitbake apply it
2) providing a modified file and letting bitbake replace the original one
Thank you in advance
Best regards

--Jv6UrHilErtUDEcMOLNH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Dear Khem,<br /><br />Thank you for your answer and for the patch. <br=
 />I tested both changing permissions before and after file renaming and it=
 works equally well.<br />If you do not mind I'd like to have your opinion =
about the most preferred way of doing a <br />modification of recipe via a =
bbappend:<br />1) providing patch and letting bitbake apply it<br />2) prov=
iding a modified file and letting bitbake replace the original one<br />Tha=
nk you in advance<br />Best regards</div>

--Jv6UrHilErtUDEcMOLNH--

