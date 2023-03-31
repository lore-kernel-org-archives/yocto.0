Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C92CC76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 18:20:13 +0000 (UTC)
Subject: How to configure cron using yocto?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 31 Mar 2023 11:20:11 -0700
Message-ID: <hJn5.1680286811271192659.MLv2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BfbSyvH9ftL7x1BR57ih"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 18:20:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59588

--BfbSyvH9ftL7x1BR57ih
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,

I am trying to include the cron to my yocto (release Morty) image. In the i=
mage recipe I have added=C2=A0IMAGE_INSTALL_append =3D " cronie". This crea=
ted the crontab and cron.d directory in /etc/. Also other directories like =
/etc/cron.daily/, /etc/cron.hourly/, are created. But when I flash the imag=
e to the board and try to add the cron job using "crontab -e" I get below e=
rror:

/var/spool/cron: No such file or directory
/var/spool/cron: mkdir: No such file or directory

Also when I try to start crond daemon with "/etc/init.d/crond start" I get =
below error

Starting crond: /var/spool/cron: No such file or directory
/var/spool/cron: mkdir: No such file or directory
FAIL

There is no systemd available.
I noticed that these directories doesn't exist. The filesystem is read-only=
.
Is there anything I am missing in the image during build? How can I add cro=
n jobs using "crontab -e" in this case? My cron jobs should run every 20min=
s.

P.S: Please let me know if you need any further info

--BfbSyvH9ftL7x1BR57ih
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello All,<br /><br />I am trying to include the cron to my yocto (release =
Morty) image. In the image recipe I have added&nbsp;IMAGE_INSTALL_append =
=3D " cronie". This created the crontab and cron.d directory in /etc/. Also=
 other directories like /etc/cron.daily/, /etc/cron.hourly/, are created. B=
ut when I flash the image to the board and try to add the cron job using "c=
rontab -e" I get below error:<br /><br />
<div>/var/spool/cron: No such file or directory</div>
<div>/var/spool/cron: mkdir: No such file or directory<br /><br />
<div style=3D"line-height: 1.42857;">Also when I try to start crond daemon =
with "/etc/init.d/crond start" I get below error<br /><br /></div>
<div style=3D"line-height: 1.42857;">Starting crond: /var/spool/cron: No su=
ch file or directory</div>
<div style=3D"line-height: 1.42857;">/var/spool/cron: mkdir: No such file o=
r directory</div>
<div style=3D"line-height: 1.42857;">FAIL</div>
<br />There is no systemd available.&nbsp;<br />I noticed that these direct=
ories doesn't exist. The filesystem is read-only.<br />Is there anything I =
am missing in the image during build? How can I add cron jobs using "cronta=
b -e" in this case? My cron jobs should run every 20mins.<br /><br />P.S: P=
lease let me know if you need any further info</div>

--BfbSyvH9ftL7x1BR57ih--

