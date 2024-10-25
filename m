Return-Path: <hchanuy@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F11D0C5F5
	for <webhook@archiver.kernel.org>; Fri, 25 Oct 2024 09:21:46 +0000 (UTC)
Subject: Re: [yocto] How to add postinst and prerm scripts to a recipe?
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Uy Ha" <hchanuy@gmail.com>
X-Originating-Location: Helsinki, Uusimaa, FI (87.92.135.50)
X-Originating-Platform: Linux Firefox 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 25 Oct 2024 02:21:43 -0700
References: <CANNYZj-o3-EKuAr7eg=+MWPJJJ-gAsw+WDC7ua-tWxT6KffuRg@mail.gmail.com>
In-Reply-To: <CANNYZj-o3-EKuAr7eg=+MWPJJJ-gAsw+WDC7ua-tWxT6KffuRg@mail.gmail.com>
Message-ID: <31642.1729848103619250450@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QLIbSvnSp05moNrEwYK3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Oct 2024 09:21:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64123

--QLIbSvnSp05moNrEwYK3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

That works for postinst, but what about prerm? It is run only when the pack=
age is removed in future so it cannot be done at bitbake build time

--QLIbSvnSp05moNrEwYK3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>That works for postinst, but what about prerm? It is run only when the=
 package is removed in future so it cannot be done at bitbake build time</d=
iv>

--QLIbSvnSp05moNrEwYK3--

