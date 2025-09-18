Return-Path: <seth.raymond@matrixspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8593CAC59A
	for <webhook@archiver.kernel.org>; Thu, 18 Sep 2025 13:25:53 +0000 (UTC)
Subject: Re: [yocto] Documentation around adding custom fetchers to layer
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: seth.raymond@matrixspace.com
X-Originating-Location: Northborough, Massachusetts, US (108.49.121.91)
X-Originating-Platform: Linux Firefox 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 18 Sep 2025 06:25:49 -0700
References: <CANNYZj96qN23jkWg_pKoP1aBbR7KPXeSa4kYypQ_Om+9QffX5g@mail.gmail.com>
In-Reply-To: <CANNYZj96qN23jkWg_pKoP1aBbR7KPXeSa4kYypQ_Om+9QffX5g@mail.gmail.com>
Message-ID: <9753.1758201949018105472@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="R0n24nKSSD0BAcw1Jif5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Sep 2025 13:25:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65857

--R0n24nKSSD0BAcw1Jif5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yep, I'm pivoting to just make this a bbclass instead. It feels less elegan=
t, but it does the job. Thanks for the tips!

-Seth

--R0n24nKSSD0BAcw1Jif5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Yep, I'm pivoting to just make this a bbclass instead. It feels less e=
legant, but it does the job. Thanks for the tips!</div>
<div>&nbsp;</div>
<div>-Seth</div>

--R0n24nKSSD0BAcw1Jif5--

