Return-Path: <Joshua.Schueler@tesat.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37F72C54E65
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 11:19:49 +0000 (UTC)
Subject: Re: [yocto] sstate-cache: Ignore ERROR_QA entry for local build
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: =?UTF-8?B?Sm9zaHVhIFNjaMO8bGVy?= <Joshua.Schueler@tesat.de>
X-Originating-Location: =?UTF-8?B?RMO8c3NlbGRvcmYsIE5vcnRoIFJoaW5lLVdlc3RwaGFsaWEsIERF?= (62.156.155.14)
X-Originating-Platform: Windows Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 22 May 2025 04:19:47 -0700
References: <CANNYZj8P8sP_CvqppUoU23XsepXRTWThoP-gAvz3K=Pza97eEQ@mail.gmail.com>
In-Reply-To: <CANNYZj8P8sP_CvqppUoU23XsepXRTWThoP-gAvz3K=Pza97eEQ@mail.gmail.com>
Message-ID: <2503.1747912787150505167@lists.yoctoproject.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 11:19:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65397

Hi Alex,
Sorry, forgot to mention the version. We are on scartgap, which does not se=
em have this commit yet. Thank you very much for the pointer though.
I assume there is no easy workaround for scarthgap.
- Joshua

