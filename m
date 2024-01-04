Return-Path: <bremenpl@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A316C47073
	for <webhook@archiver.kernel.org>; Thu,  4 Jan 2024 21:18:01 +0000 (UTC)
Subject: Re: [yocto] Overwriting a bbclass
To: Lukasz Przenioslo <bremenpl@gmail.com>,yocto@lists.yoctoproject.org
From: "Lukasz Przenioslo" <bremenpl@gmail.com>
X-Originating-Location: Szczecin, West Pomerania, PL (83.20.46.245)
X-Originating-Platform: Windows Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 04 Jan 2024 13:18:00 -0800
References: <Fs9Q.1704359653504757873.doJ3@lists.yoctoproject.org>
In-Reply-To: <Fs9Q.1704359653504757873.doJ3@lists.yoctoproject.org>
Message-ID: <2686.1704403080547050594@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="b5432PleSrrCXHjXNZyR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Jan 2024 21:18:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62090

--b5432PleSrrCXHjXNZyR
Content-Type: text/plain; charset="utf-8"; markup=markdown
Content-Transfer-Encoding: quoted-printable

I have figured that instead of trying to overwrite this specific class, I c=
ould as well allow it to run and generate the `extlinux/extlinux.conf` file=
 "as is", and then create a new custom recipe or class that would pick that=
 file up and edit it. Question is, what is the best way to do that? The way=
 i understood what the bbclass'es are for in Yocto, makes it difficult for =
me to grasp why is the `poky/meta/classes/uboot-extlinux-config.bbclass` cr=
eating a "python program", instead of providing generic functionality for e=
ventual inheritance.=20

So If I wanted to write something similar to this file, should it by design=
 be a custom bb, bbappend or a bbclass file? And then, how to include it in=
 the build, assuming my custom layer is already added? I would appreciate a=
ll feedback!

--b5432PleSrrCXHjXNZyR
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I have figured that instead of trying to overwrite this specific class, =
I could as well allow it to run and generate the <code>extlinux/extlinux.co=
nf</code> file &quot;as is&quot;, and then create a new custom recipe or cl=
ass that would pick that file up and edit it. Question is, what is the best=
 way to do that? The way i understood what the bbclass'es are for in Yocto,=
 makes it difficult for me to grasp why is the <code>poky/meta/classes/uboo=
t-extlinux-config.bbclass</code> creating a &quot;python program&quot;, ins=
tead of providing generic functionality for eventual inheritance.</p>

<p>So If I wanted to write something similar to this file, should it by des=
ign be a custom bb, bbappend or a bbclass file? And then, how to include it=
 in the build, assuming my custom layer is already added? I would appreciat=
e all feedback!</p>

--b5432PleSrrCXHjXNZyR--

