Return-Path: <xylopyrographer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C7D5C5475B
	for <webhook@archiver.kernel.org>; Fri,  8 Mar 2024 22:58:12 +0000 (UTC)
Subject: Cannot ssh into qemu guest
To: yocto@lists.yoctoproject.org
From: "Xylopyrographer" <xylopyrographer@gmail.com>
X-Originating-Location: Calgary, Alberta, CA (68.146.148.10)
X-Originating-Platform: Mac Safari 17.3
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 08 Mar 2024 14:58:03 -0800
Message-ID: <ZMbp.1709938683080134225.bPqU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="f9F9jfMwiMOceejyTBks"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Mar 2024 22:58:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62711

--f9F9jfMwiMOceejyTBks
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've built a QEMU quemuarm64 core-image-full-cmdline machine. Runs fine. =
=C2=A0I'm launching it with:
*runqemu qemuarm64 nographic*

Now trying to figure out how to ssh into it.

The book I'm following simply states: "You can SSH into this VM with *ssh r=
oot@192.168.7.2* "

A bit later, going through the exercise of using devtool to add a new recip=
e, the command line is:
*devtool deploy-target bubblewrap root@192.168.7.2*

However, both *ssh=C2=A0root@192.168.7.2* and the *deploy-target* commands =
time out on attempting the ssh connection.

* Host is Debian 12 Bookworm
* Yocto version is nanbield
* Using GNOME Terminal
* Launching qemu in one Terminal window, running everything else in a secon=
d Terminal window.

Any pointers on the magic incantation to get this running?

Many thanks.

--f9F9jfMwiMOceejyTBks
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've built a QEMU quemuarm64 core-image-full-cmdline machine. Runs fine. &n=
bsp;I'm launching it with:<br /><strong><span style=3D"font-family: courier=
_newregular, courier;">runqemu qemuarm64 nographic</span></strong><br /><br=
 />Now trying to figure out how to <span style=3D"font-family: courier_newr=
egular, courier;">ssh</span> into it.<br /><br />The book I'm following sim=
ply states: "You can SSH into this VM with <strong><span style=3D"font-fami=
ly: courier_newregular, courier;">ssh root@192.168.7.2</span></strong>"<br =
/><br />A bit later, going through the exercise of using devtool to add a n=
ew recipe, the command line is:<br /><strong><span style=3D"font-family: co=
urier_newregular, courier;">devtool deploy-target bubblewrap root@192.168.7=
.2</span></strong><br /><br />However, both&nbsp;<strong><span style=3D"fon=
t-family: courier_newregular, courier;">ssh&nbsp;root@192.168.7.2</span></s=
trong><span style=3D"font-family: courier_newregular, courier;">&nbsp;and t=
he <strong>deploy-target</strong>&nbsp;commands time out on attempting the =
ssh connection.<br /><br /></span>
<ul>
<li>Host is Debian 12 Bookworm</li>
<li>Yocto version is nanbield</li>
<li>Using GNOME Terminal</li>
<li>Launching qemu in one Terminal window, running everything else in a sec=
ond Terminal window.&nbsp;</li>
</ul>
<br />Any pointers on the magic incantation to get this running?<br /><br /=
>Many thanks.

--f9F9jfMwiMOceejyTBks--

