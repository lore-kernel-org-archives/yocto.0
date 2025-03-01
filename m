Return-Path: <landervanloock@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A411CC021B8
	for <webhook@archiver.kernel.org>; Sat,  1 Mar 2025 18:32:12 +0000 (UTC)
Subject: Re: [yocto] Btrfs root filesystem permission issue
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Lander0606" <landervanloock@gmail.com>
X-Originating-Location: Antwerp, Flanders, BE (94.110.112.215)
X-Originating-Platform: Linux Firefox 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 01 Mar 2025 10:32:05 -0800
References: <cc0e95c4-8411-4ec8-abb0-61378d978c87@gmail.com>
In-Reply-To: <cc0e95c4-8411-4ec8-abb0-61378d978c87@gmail.com>
Message-ID: <18989.1740853925670787710@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1egpEgdJLjlD4uhWGmNK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 01 Mar 2025 18:32:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64905

--1egpEgdJLjlD4uhWGmNK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Nice! I did some research, but the only "improvement" I see would be to cha=
nge the stat-struct in the callback to force UID/GID to 0. But for that, I =
think we need another callback function to wrap around the given callback t=
o change the UID/GID. Unless I'm not seeing something or misunderstand wher=
e the problem really is?

I did a grep on the whole pseudo source code to search for the existance of=
 "nftw" and found that ./ports/unix/* is the only place. If that one is not=
 used in Linux, I would guess btrfs-tools would give an error upon creating=
 the filesystem, right?

--1egpEgdJLjlD4uhWGmNK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Nice! I did some research, but the only "improvement" I see would be t=
o change the stat-struct in the callback to force UID/GID to 0. But for tha=
t, I think we need another callback function to wrap around the given callb=
ack to change the UID/GID. Unless I'm not seeing something or misunderstand=
 where the problem really is?</div>
<div>&nbsp;</div>
<div>I did a grep on the whole pseudo source code to search for the existan=
ce of "nftw" and found that ./ports/unix/* is the only place. If that one i=
s not used in Linux, I would guess btrfs-tools would give an error upon cre=
ating the filesystem, right?</div>

--1egpEgdJLjlD4uhWGmNK--

