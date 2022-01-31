Return-Path: <dbeal@cardinalpeak.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0248C433F5
	for <webhook@archiver.kernel.org>; Mon, 31 Jan 2022 18:27:31 +0000 (UTC)
Subject: Re: How to prevent auto start of matchbox-terminal at boot?
To: yocto@lists.yoctoproject.org
From: "Dave Beal" <dbeal@cardinalpeak.com>
X-Originating-Location: US (216.75.212.5)
X-Originating-Platform: Windows Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 31 Jan 2022 10:27:30 -0800
References: 
 <CANNYZj8WwbdLu9w6Y+kbOLVPfHLYR5baQ+DXZm_ES+-pi9vKTQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8WwbdLu9w6Y+kbOLVPfHLYR5baQ+DXZm_ES+-pi9vKTQ@mail.gmail.com>
Message-ID: <2735.1643653650424804738@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4Bi0VmzbKU37pB4lVX4Z"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Jan 2022 18:27:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56031

--4Bi0VmzbKU37pB4lVX4Z
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Alex!=C2=A0 That was it.=C2=A0 The script that started the matchbox=
-terminal is /usr/bin/mini-x-session.=C2=A0 I just edited this file and com=
mented out the terminal line and another line that was setting my display t=
o an incorrect resolution.

--4Bi0VmzbKU37pB4lVX4Z
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Alex!&nbsp; That was it.&nbsp; The script that started the matchbox=
-terminal is /usr/bin/mini-x-session.&nbsp; I just edited this file and com=
mented out the terminal line and another line that was setting my display t=
o an incorrect resolution.

--4Bi0VmzbKU37pB4lVX4Z--

