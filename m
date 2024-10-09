Return-Path: <jean-michel.papy@exail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14F4CCED618
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 07:15:38 +0000 (UTC)
Subject: #kirkstone #yocto [openembedded-core] openssh/sshd
To: yocto@lists.yoctoproject.org
From: "Jean-Michel Papy" <jean-michel.papy@exail.com>
X-Originating-Location: Toulouse, Occitanie, FR (185.18.210.154)
X-Originating-Platform: Windows Firefox 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 09 Oct 2024 00:15:27 -0700
Message-ID: <g2lc.1728458127767426477.BfIA@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zITUgopIU1UW6sGm7y6Q"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 07:15:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63982

--zITUgopIU1UW6sGm7y6Q
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto Community,
I made a small dev image, which is perfectly booting (on a Enclustra card).
However when I tried to connect to the machine using ssh it failed (connect=
ion reset by peer).
After a quick look at how the socket-based activation works and the systemd=
 service dependencies,
I connected to the machine via a serial port and performed the individual p=
rogram calls manually.
I noticed that the sshd service requires the sshd_check_keys shell script t=
o be executed.
This script creates host keys if they are not provided, and the private (an=
d public) keys are generated
with default permissions (644). The problem appears when the ssh program ch=
ecks the key file permissions and finds them "too open".
I tweaked the shell script by adding a line =C2=A0chmod 0600 "$FILE" just a=
fter the line mv "${FILE}.tmp" "$FILE" and this hack works perfectly.
So finally, I just created a patch which adds this line.

I might be wrong, but I tend to believe this should have worked without thi=
s workaround.
Does somebody have an idea of what could be incorrectly set up (a variable?=
) or what should be done in the image to prevent this from happening?
Thank you in advance
Regards,
JM

--zITUgopIU1UW6sGm7y6Q
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Dear Yocto Community,</div>
<div>I made a small dev image, which is perfectly booting (on a Enclustra c=
ard).<br />However when I tried to connect to the machine using ssh it fail=
ed (connection reset by peer).<br />After a quick look at how the socket-ba=
sed activation works and the systemd service dependencies,<br />I connected=
 to the machine via a serial port and performed the individual program call=
s manually.<br />I noticed that the sshd service requires the sshd_check_ke=
ys shell script to be executed.<br />This script creates host keys if they =
are not provided, and the private (and public) keys are generated<br />with=
 default permissions (644). The problem appears when the ssh program checks=
 the key file permissions and finds them "too open".<br />I tweaked the she=
ll script by adding a line &nbsp;chmod 0600 "$FILE" just after the line mv =
"${FILE}.tmp" "$FILE" and this hack works perfectly.<br />So finally, I jus=
t created a patch which adds this line.</div>
<div><br />I might be wrong, but I tend to believe this should have worked =
without this workaround.</div>
<div>Does somebody have an idea of what could be incorrectly set up (a vari=
able?) or what should be done in the image to prevent this from happening?&=
nbsp;<br />Thank you in advance<br />Regards,<br />JM</div>
</div>

--zITUgopIU1UW6sGm7y6Q--

