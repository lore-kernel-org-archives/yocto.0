Return-Path: <aleksandar.nikolic010@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6D9D609AB
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 07:40:38 +0000 (UTC)
Subject: Re: [yocto] Periodic cleanup of the downloads directory
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>, yocto@lists.yoctoproject.org
From: "Aleksandar Nikolic" <aleksandar.nikolic010@gmail.com>
X-Originating-Location: CH (147.161.139.87)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 26 Nov 2024 23:40:33 -0800
References: <096700bfc7f523d73c84362c225c4b0edb0f8fa7.camel@linuxfoundation.org>
In-Reply-To: <096700bfc7f523d73c84362c225c4b0edb0f8fa7.camel@linuxfoundation.org>
Message-ID: <14717.1732693233379951678@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rzzxnK0y2jfgjv8e4r7U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 07:40:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64356

--rzzxnK0y2jfgjv8e4r7U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Yep, you are right, not removing files from DL_DIR could help in the future=
 with older builds! And yes, we plan to either remove files older than X da=
ys from sstate or to just build from scratch once a week. Thanks.

Cheers,
Aleksandar

--rzzxnK0y2jfgjv8e4r7U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Yep, you are right, not removing files from DL_DIR could help in the f=
uture with older builds! And yes, we plan to either remove files older than=
 X days from sstate or to just build from scratch once a week. Thanks.</div=
>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Aleksandar</div>

--rzzxnK0y2jfgjv8e4r7U--

