Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56203C433EF
	for <webhook@archiver.kernel.org>; Fri, 25 Mar 2022 04:30:00 +0000 (UTC)
Subject: bus service inactive issue #yocto
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (122.166.120.168)
X-Originating-Platform: Linux Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 24 Mar 2022 21:29:59 -0700
Message-ID: <Wbc7.1648182599486649653.oRRP@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yKzYbJwas4zJGTYwfWpE"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Mar 2022 04:30:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56560

--yKzYbJwas4zJGTYwfWpE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I am trying to start service dbus. I have built an image on riscv target ma=
chine. I want to access firewalld , firewalld service is running but dbus-d=
eamon service also should be start to get a client response.
I have built packages using gatesgarth branch=C2=A0 systemd,dbus, firewalld=
 installed. But facing problems.

So natively installed systemd,dbus,dbus-broker but still service is inactiv=
e state only using systemctl I am trying to start services.

issue :

aded: loaded ([]8;;file://Unmatched-2.0.2/lib/systemd/system/dbus-broker.se=
rviceG/lib/systemd/system/dbus-broker.service[]8;;G; enabled; vendor preset=
: enable
d)
Active: inactive (dead)
TriggeredBy: =E2=97=8B dbus.socket
Docs: []8;;man:dbus-broker-launch(1)Gman:dbus-broker-launch(1)[]8;;G

Can anybody know this please guide me.
Thanking you in advance.

--
Regards,
Sateesh

--yKzYbJwas4zJGTYwfWpE
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,<br /><br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
I am trying to start service dbus. I have built an image on riscv target ma=
chine. I want to access firewalld , firewalld service is running but dbus-d=
eamon service also should be start to get a client response.<br />I have bu=
ilt packages using gatesgarth branch&nbsp; systemd,dbus, firewalld installe=
d. But facing problems.<br /><br />So natively installed systemd,dbus,dbus-=
broker but still service is inactive state only using systemctl I am trying=
 to start services.<br /><br />issue :<br /><br />
<div>aded: loaded ([]8;;file://Unmatched-2.0.2/lib/systemd/system/dbus-brok=
er.serviceG/lib/systemd/system/dbus-broker.service[]8;;G; enabled; vendor p=
reset: enable</div>
<div>d)</div>
<div>&nbsp; &nbsp; &nbsp;Active: inactive (dead)</div>
<div>TriggeredBy: =E2=97=8B dbus.socket</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;Docs: []8;;man:dbus-broker-launch(1)Gman:db=
us-broker-launch(1)[]8;;G</div>
<div>&nbsp;</div>
Can anybody know this please guide me.<br />Thanking you in advance.<br /><=
br />-- <br />Regards,<br />Sateesh

--yKzYbJwas4zJGTYwfWpE--

