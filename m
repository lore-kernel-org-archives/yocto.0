Return-Path: <linusnilsson@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33A76CD128A
	for <webhook@archiver.kernel.org>; Thu, 11 Apr 2024 07:52:55 +0000 (UTC)
Subject: Correct way for multiple recipes to install files in the same directory
To: yocto@lists.yoctoproject.org
From: linusnilsson@hotmail.com
X-Originating-Location: Bromma, Stockholm County, SE (212.181.123.98)
X-Originating-Platform: Windows Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 11 Apr 2024 00:52:49 -0700
Message-ID: <ZfwI.1712821969796887981.Ve9P@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="izflfLFwSvEdIl7YfEL2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Apr 2024 07:52:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62914

--izflfLFwSvEdIl7YfEL2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi!
How/can I let multiple recipes install files in the same directory without =
getting a conflict during bitbake process?

Recipe 1 creates a user and its homedir:
inherit useradd
USERADD_PACKAGES =3D "${PN}"
USERADD_PARAM:${PN} =3D "-u 1000 -d /home/user1 -m -s /bin/bash -p 'XXX' us=
er1"
do_install(){
install -d ${D}/home/user1
chown -R user1:user1 ${D}/home/user1
}

Recipe 2 wants to install some config-files inside /home/user1/.config/.
DEPENDS =3D "recipe1"
RDEPENDS:${PN} =3D "recipe1"
do_install(){
install -d ${D}/home/user1/.config/
install -m 0644 sourcefile ${D}/home/user1/.config/
chown -R user1:user1 ${D}/home/user1/.config/
}

There is also FILES directives at the end of each recipe for the correspond=
ing files. For better readability I've removed everything that I deemed was=
 irrelevant.
The problem I get when trying to bitbake the image is during the do_rootfs =
stage:
file /home/user1 conflicts between attempted installs of <recipe2> and <rec=
ipe1>

If I comment out the "chown" line from both recipes it seems to work but th=
en I guess those directories will be owned by root during runtime, which wi=
ll be a problem for user1.

Is there a proper way to do this?

Kind regards, Linus

--izflfLFwSvEdIl7YfEL2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi!<br />How/can I let multiple recipes install files in the same direct=
ory without getting a conflict during bitbake process?<br /><br />Recipe 1 =
creates a user and its homedir:<br /><code>inherit useradd<br />USERADD_PAC=
KAGES =3D "${PN}"<br />USERADD_PARAM:${PN} =3D "-u 1000 -d /home/user1 -m -=
s /bin/bash -p 'XXX' user1"<br />do_install(){<br />&nbsp; install -d ${D}/=
home/user1<br />&nbsp; chown -R user1:user1 ${D}/home/user1<br />}<br /></c=
ode><br />Recipe 2 wants to install some config-files inside /home/user1/.c=
onfig/.<br /><code>DEPENDS =3D "recipe1"<br />RDEPENDS:${PN} =3D "recipe1"<=
br />do_install(){<br />&nbsp; install -d ${D}/home/user1/.config/<br />&nb=
sp; install -m 0644 sourcefile ${D}/home/user1/.config/<br />&nbsp; chown -=
R user1:user1 ${D}/home/user1/.config/<br />}</code><br /><br />There is al=
so FILES directives at the end of each recipe for the corresponding files. =
For better readability I've removed everything that I deemed was irrelevant=
.<br />The problem I get when trying to bitbake the image is during the do_=
rootfs stage:<br /><code>file /home/user1 conflicts between attempted insta=
lls of &lt;recipe2&gt; and &lt;recipe1&gt;</code><br /><br />If I comment o=
ut the "chown" line from both recipes it seems to work but then I guess tho=
se directories will be owned by root during runtime, which will be a proble=
m for user1.<br /><br />Is there a proper way to do this?<br /><br />Kind r=
egards, Linus</p>

--izflfLFwSvEdIl7YfEL2--

