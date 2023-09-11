Return-Path: <tyrocjl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03246EE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 07:39:28 +0000 (UTC)
Subject: Re: How to add a hook or handler for specified task?
To: yocto@lists.yoctoproject.org
From: "Jiliang Cai" <tyrocjl@gmail.com>
X-Originating-Location: US (149.104.118.105)
X-Originating-Platform: Windows Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 11 Sep 2023 00:39:19 -0700
References: <CANzPQ-D9ONa3ADnRAT0EYGZWmGTf_Qdp77PdBaAC3XObF+cQ1g@mail.gmail.com>
In-Reply-To: <CANzPQ-D9ONa3ADnRAT0EYGZWmGTf_Qdp77PdBaAC3XObF+cQ1g@mail.gmail.com>
Message-ID: <20124.1694417959178972663@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sR4isH7IeMXHa3U2eYNp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 07:39:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60966

--sR4isH7IeMXHa3U2eYNp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I found a solution that works. If there are other more suitable solutions, =
please let me know, thank you. Everyone is welcome to discuss.

I use the bb.build.TaskFailed event, although it's global, not specific to =
a recipe. In the handler body, I use e.getTask() to determine whether the s=
pecified task failed, and if so, execute my code.

--sR4isH7IeMXHa3U2eYNp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I found a solution that works. If there are other more suitable soluti=
ons, please let me know, thank you. Everyone is welcome to discuss.</div>
<div>&nbsp;</div>
<div>I use the bb.build.TaskFailed event, although it's global, not specifi=
c to a recipe. In the handler body, I use e.getTask() to determine whether =
the specified task failed, and if so, execute my code.</div>

--sR4isH7IeMXHa3U2eYNp--

