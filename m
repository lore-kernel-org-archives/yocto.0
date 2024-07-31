Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D0E1C3DA64
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 14:38:29 +0000 (UTC)
Subject: [scarthgap]: Binary copied in RFS but with wrong permission 
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (49.207.195.100)
X-Originating-Platform: Linux Firefox 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 31 Jul 2024 07:38:09 -0700
Message-ID: <XAom.1722436689396510034.5XJc@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bxQ7uOK9xzeIh2tI6YIs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 14:38:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63633

--bxQ7uOK9xzeIh2tI6YIs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All ,

I am creating an core-image-minimal for am3505 custom yocto BSP.
I have added few packages like example curl ,sudo ,tcpdump
The compilation went fine , but i see different error with binary

a) /etc/sudo.conf is owned by uid 5001, should be 0
root:~# sudo -v
sudo: /etc/sudo.conf is owned by uid 5001, should be 0
sudo: /etc/sudo.conf is owned by uid 5001, should be 0
sudo: /etc/sudoers is owned by uid 5001, should be 0
sudo: error initializing audit plugin sudoers_audit

b) The futex facility returned an unexpected error code.
root:~# curl -v
The futex facility returned an unexpected error code.
Aborted

root:~# tcpdump -v
[ 1064.376617] davinci_emac davinci_emac.0 eth0: entered promiscuous mode
tcpdump: listening on eth0, link-type EN10MB (Ethernet), snapshot length 26=
2144 bytes
The futex facility returned an unexpected error code.[ 1064.517639] davinci=
_emac davinci_emac.0 eth0: left promiscuous mode
Aborted

=3D> This futex error i am observing with few other binaries .

I am not adding any custom append or any other changes as of now
The binaries are added from their respective standard recipe.

Can senior member please point to probable cause in yocto as this was defau=
lt package being added in image.

Thanks ,
Ashish

--bxQ7uOK9xzeIh2tI6YIs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi All ,</div>
<div>&nbsp;</div>
<div>I am creating an core-image-minimal for am3505 custom yocto BSP.</div>
<div>I have added few packages like example curl ,sudo ,tcpdump</div>
<div>The compilation went fine , but i see different error with binary&nbsp=
;</div>
<div>&nbsp;</div>
<div>a) /etc/sudo.conf is owned by uid 5001, should be 0</div>
<div>root:~# sudo -v<br />sudo: /etc/sudo.conf is owned by uid 5001, should=
 be 0<br />sudo: /etc/sudo.conf is owned by uid 5001, should be 0<br />sudo=
: /etc/sudoers is owned by uid 5001, should be 0<br />sudo: error initializ=
ing audit plugin sudoers_audit</div>
<div>&nbsp;</div>
<div>b) The futex facility returned an unexpected error code.</div>
<div>root:~# curl -v<br />The futex facility returned an unexpected error c=
ode.<br />Aborted</div>
<div>&nbsp;</div>
<div>
<div>root:~# tcpdump -v<br />[ 1064.376617] davinci_emac davinci_emac.0 eth=
0: entered promiscuous mode<br />tcpdump: listening on eth0, link-type EN10=
MB (Ethernet), snapshot length 262144 bytes<br />The futex facility returne=
d an unexpected error code.[ 1064.517639] davinci_emac davinci_emac.0 eth0:=
 left promiscuous mode</div>
<div>Aborted</div>
</div>
<div>&nbsp;</div>
<div>=3D&gt; This futex error i am observing with few other binaries .</div=
>
<div>&nbsp;</div>
<div>I am not adding any custom append or any other changes as of now</div>
<div>The binaries are added from their respective standard recipe.</div>
<div>&nbsp;</div>
<div>Can senior member please point to probable cause in yocto as this was =
default package being added in image.</div>
<div>&nbsp;</div>
<div>Thanks ,</div>
<div>Ashish</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--bxQ7uOK9xzeIh2tI6YIs--

