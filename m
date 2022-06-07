Return-Path: <scott.threet@konecranes.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFB37C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Jun 2022 12:09:30 +0000 (UTC)
Subject: Re: tc commands in yocto
To: yocto@lists.yoctoproject.org
From: scott.threet@konecranes.com
X-Originating-Location: =?utf-8?b?SGFydmlhbGEsIEthbnRhLUjDpG1lLCBGSSAoNjIu?=
 =?utf-8?b?NjEuOTcuMTEp?=
X-Originating-Platform: Windows Firefox 98
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 07 Jun 2022 05:09:21 -0700
References: <11085.1654582601680067990@lists.yoctoproject.org>
In-Reply-To: <11085.1654582601680067990@lists.yoctoproject.org>
Message-ID: <9515.1654603761732605234@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cRcWbOjtekfmtPKtMNZp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Jun 2022 12:09:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57287

--cRcWbOjtekfmtPKtMNZp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

well now I feel dumb; I figured out the problem; all those lines like:

# CONFIG_NET_SCHED is not set

are not comments (even if code highlighting thinks they are), they unset th=
e settings, once I removed that from my defconfig it works

--cRcWbOjtekfmtPKtMNZp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>well now I feel dumb; I figured out the problem; all those lines like:</=
p>
<p># CONFIG_NET_SCHED is not set</p>
<p>are not comments (even if code highlighting thinks they are), they unset=
 the settings, once I removed that from my defconfig it works</p>
<p>&nbsp;</p>

--cRcWbOjtekfmtPKtMNZp--

