Return-Path: <poornesh.g@mindteck.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CEFFEB64DC
	for <webhook@archiver.kernel.org>; Fri, 21 Jul 2023 05:06:58 +0000 (UTC)
Subject: Missing pam_winbind.so while adding Samba(4.10.10-r0)
To: yocto@lists.yoctoproject.org
From: "Poornesh G ( India - Bangalore )" <poornesh.g@mindteck.com>
X-Originating-Location: Kolkata, West Bengal, IN (182.71.223.114)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 20 Jul 2023 22:06:53 -0700
Message-ID: <5r62.1689916013234833633.c8sH@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FpbFGNZeJHsCFFaqTTXe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jul 2023 05:06:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60625

--FpbFGNZeJHsCFFaqTTXe
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greeetings !

I am trying to include "samba" into my yocto build . I can able to see *"pa=
m_winbind.so"* in *"/build/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/sa=
mba/4.10.10-r0/image/lib/security"* folder.
But when I try to include samba into my image , it is absent in my Rootfile=
 system . I am adding in "local.conf" file as below :
*
#To enable SAMBA*
*IMAGE_INSTALL_append =3D " samba samba-client cifs-utils=C2=A0 samba-ad-dc=
 samba-base samba-common"

* Can anyone help me out to make pam_winbind.so as a part of my image .

Thanks in advance.

--FpbFGNZeJHsCFFaqTTXe
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greeetings !<br /><br />I am trying to include "samba" into my yocto build =
. I can able to see <strong>"pam_winbind.so"</strong>&nbsp; in <strong>"/bu=
ild/tmp/work/cortexa7t2hf-neon-poky-linux-gnueabi/samba/4.10.10-r0/image/li=
b/security"</strong> folder. <br />But when I try to include samba into my =
image , it is absent in my Rootfile system . I am adding in "local.conf" fi=
le as below :<br />
<div><strong><br />#To enable SAMBA</strong></div>
<div><strong>IMAGE_INSTALL_append =3D " samba samba-client cifs-utils&nbsp;=
 samba-ad-dc samba-base samba-common"<br /><br /><br /></strong>Can anyone =
help me out to make pam_winbind.so as a part of my image .<br /><br />Thank=
s in advance.</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--FpbFGNZeJHsCFFaqTTXe--

