Return-Path: <athragared@proton.me>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD1C072A2
	for <webhook@archiver.kernel.org>; Fri, 17 Nov 2023 09:11:42 +0000 (UTC)
Subject: How do I allow non root users to use busybox tools
To: yocto@lists.yoctoproject.org
From: athragared@proton.me
X-Originating-Location: Marl, North Rhine-Westphalia, DE (93.133.16.252)
X-Originating-Platform: Windows Firefox 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Nov 2023 01:11:33 -0800
Message-ID: <SCw4.1700212293132412971.6Qm8@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="isaIdCrpWrclEgxAlv7U"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Nov 2023 09:11:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61713

--isaIdCrpWrclEgxAlv7U
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I noticed today, that the program *date* in my image comes from *busybox* :

ls -la /bin/ | grep date
lrwxrwxrwx 1 root root 17 Nov 16 15:54 date -> /bin/busybox.suid

As this is only a link I could not change the rights with chown etc..
Now I wanted to ask if it is possible to transfer individual programs from =
busybox to another user or group?

I found this ( https://unix.stackexchange.com/questions/279223/how-do-i-set=
-up-busybox-to-allow-a-non-root-user-to-set-the-date ) Stackexchange thread=
 which talks about an */etc/busybox.conf*. However, I could not find this o=
n my system.

I also could not find anything in the yocto manual.

Thanks in advance.

Regards

athragared

--isaIdCrpWrclEgxAlv7U
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello everyone,<br /><br />I noticed today, that the program <strong>dat=
e</strong> in my image comes from <strong>busybox</strong>:<br /><br />ls -=
la /bin/ | grep date<br />lrwxrwxrwx 1 root root 17 Nov 16 15:54 date -&gt;=
 /bin/busybox.suid<br /><br />As this is only a link I could not change the=
 rights with chown etc..<br />Now I wanted to ask if it is possible to tran=
sfer individual programs from busybox to another user or group?<br /><br />=
I found <a href=3D"https://unix.stackexchange.com/questions/279223/how-do-i=
-set-up-busybox-to-allow-a-non-root-user-to-set-the-date" target=3D"_blank"=
 rel=3D"noopener">this</a> Stackexchange thread which talks about an <stron=
g>/etc/busybox.conf</strong>. However, I could not find this on my system.<=
br /><br />I also could not find anything in the yocto manual.<br /><br />T=
hanks in advance.</p>
<p><br />Regards</p>
<p>athragared</p>

--isaIdCrpWrclEgxAlv7U--

