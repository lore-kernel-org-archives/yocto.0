Return-Path: <xylopyrographer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD860C54791
	for <webhook@archiver.kernel.org>; Sat,  9 Mar 2024 18:59:07 +0000 (UTC)
Subject: Re: [yocto] Cannot ssh into qemu guest
To: Marco Cavallini <koansoftware@gmail.com>,yocto@lists.yoctoproject.org
From: "Xylopyrographer" <xylopyrographer@gmail.com>
X-Originating-Location: Calgary, Alberta, CA (68.146.148.10)
X-Originating-Platform: Mac Safari 17.3
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 09 Mar 2024 10:58:58 -0800
References: <27822.1709973725254624537@lists.yoctoproject.org>
In-Reply-To: <27822.1709973725254624537@lists.yoctoproject.org>
Message-ID: <27822.1710010738640962284@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lLFVUx1oBH10M6ARK3VT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 09 Mar 2024 18:59:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62714

--lLFVUx1oBH10M6ARK3VT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply.

Still a bit green with all this but from the QEMU VM, *sshd* is running and=
 port 22 is open.

Checked by running:
*ps aux | grep sshd
* and
*netstat -plant | grep :22

* as well, I can telnet in to the VM itself by running (from within the VM)=
:
*
telnet localhost 22*

which returns:
*Connected to localhost*
*SSH-2.0-OpenSSH_9.5*

So I think all is as it should be on the QEMU side of things?

Just need the magic keystrokes to get in from outside the VM.

Any further hints?

Many thanks.

--lLFVUx1oBH10M6ARK3VT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the reply.<br /><br />
<div>Still a bit green with all this but from the QEMU VM, <strong><span st=
yle=3D"font-family: courier_newregular, courier;">sshd</span></strong> is r=
unning and port 22 is open.<br /><br /></div>
<div>Checked by running:<br /><strong><span style=3D"font-family: courier_n=
ewregular, courier;">ps aux | grep sshd<br /></span></strong>and <br /><str=
ong><span style=3D"font-family: courier_newregular, courier;">netstat -plan=
t | grep :22<br /><br /></span></strong>as well, I can telnet in to the VM =
itself by running (from within the VM):<br /><span style=3D"font-family: co=
urier_newregular, courier;"><strong><br />telnet localhost 22</strong></spa=
n><br /><br />which returns:</div>
<div><span style=3D"font-family: courier_newregular, courier;"><strong>Conn=
ected to localhost</strong></span></div>
<div><span style=3D"font-family: courier_newregular, courier;"><strong>SSH-=
2.0-OpenSSH_9.5</strong></span><br /><br /></div>
<div>So I think all is as it should be on the QEMU side of things?</div>
<div><br />Just need the magic keystrokes to get in from outside the VM. <b=
r /><br />Any further hints?<br /><br />Many thanks.</div>

--lLFVUx1oBH10M6ARK3VT--

