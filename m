Return-Path: <markus.webert@libreo.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604D8C36002
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 10:15:39 +0000 (UTC)
Subject: Cronie default crontab
To: yocto@lists.yoctoproject.org
From: markus.webert@libreo.de
X-Originating-Location: US (145.224.72.147)
X-Originating-Platform: Windows Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Mar 2025 03:15:38 -0700
Message-ID: <GGz6.1742552138080948626.8ApJ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="3kzy0X9lO2QldeE7KMcQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 10:15:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65000

--3kzy0X9lO2QldeE7KMcQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I stumbled across the default crontab configuration that is shipped when ad=
ding cronie. The default crontab was added here cronie: Added default cront=
ab - poky - Poky Build Tool and Metadata ( https://git.yoctoproject.org/pok=
y/commit/?id=3D4a7446ed99a0c21ee81c22a69dd3fbbb8e396291 ).

I wondered if there is a reason that the cron.{daily, hourly, ...} folders =
are created but the run-parts is commented out in the default crontab file?
Took me a bit to figure out why placing files inside the cron.x folders has=
 no effect (scripts are not called). My expectation would be either not hav=
ing the cron.x folders created at all or the default crontab file has the r=
un-parts lines uncommented.

Thanks
Markus

--3kzy0X9lO2QldeE7KMcQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I stumbled across the default crontab configuration that is shipped wh=
en adding cronie. The default crontab was added here <a href=3D"https://git=
.yoctoproject.org/poky/commit/?id=3D4a7446ed99a0c21ee81c22a69dd3fbbb8e39629=
1">cronie: Added default crontab - poky - Poky Build Tool and Metadata</a>.=
</div>
<div>&nbsp;</div>
<div>I wondered if there is a reason that the cron.{daily, hourly, ...} fol=
ders are created but the run-parts is commented out in the default crontab =
file?</div>
<div>Took me a bit to figure out why placing files inside the cron.x folder=
s has no effect (scripts are not called). My expectation would be either no=
t having the cron.x folders created at all or the default crontab file has =
the run-parts lines uncommented.</div>
<div>&nbsp;</div>
<div>Thanks</div>
<div>Markus</div>

--3kzy0X9lO2QldeE7KMcQ--

