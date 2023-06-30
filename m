Return-Path: <cddiao@ambarella.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17439EB64D9
	for <webhook@archiver.kernel.org>; Fri, 30 Jun 2023 02:36:35 +0000 (UTC)
Subject: Re: report one objcopy bug and fix
To: yocto@lists.yoctoproject.org
From: cddiao@ambarella.com
X-Originating-Location: London, England, GB (95.179.225.185)
X-Originating-Platform: Windows Firefox 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 29 Jun 2023 19:36:32 -0700
References: <c561ff89da6b3d966fef9a57c3b0dd8e732639e6.camel@linuxfoundation.org>
In-Reply-To: <c561ff89da6b3d966fef9a57c3b0dd8e732639e6.camel@linuxfoundation.org>
Message-ID: <16989.1688092592478812912@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="LSuDHEz7ByqpzYOKreQr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 02:36:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60482

--LSuDHEz7ByqpzYOKreQr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,
How about to remove "-S" in the tar commands ?
I only tested 20.04.3 and 20.04.6. I didn't test the other distro, so I'm n=
ot sure if there's anything wrong with the other distro.
To be on the safe side, remove the "-S" can solve the problem fundamentally=
.

--LSuDHEz7ByqpzYOKreQr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard,<br />&nbsp;&nbsp;&nbsp;&nbsp; How about to remove "-S" in the t=
ar commands ? <br />&nbsp;&nbsp;&nbsp;&nbsp; I only tested 20.04.3 and 20.0=
4.6. I didn't test the other distro, so I'm not sure if there's anything wr=
ong with the other distro.<br />&nbsp;&nbsp;&nbsp; To be on the safe side, =
remove the "-S" can solve the problem fundamentally.

--LSuDHEz7ByqpzYOKreQr--

