Return-Path: <duy.dang.yw@renesas.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1012C433F5
	for <webhook@archiver.kernel.org>; Mon, 20 Dec 2021 06:33:55 +0000 (UTC)
Subject: #systemd Weston service restarting timeout on dunfell branch
To: yocto@lists.yoctoproject.org
From: "Duy" <duy.dang.yw@renesas.com>
X-Originating-Location: Ho Chi Minh City, Ho Chi Minh, VN (27.74.253.134)
X-Originating-Platform: Windows Firefox 92
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 19 Dec 2021 22:33:54 -0800
Message-ID: <2FQr.1639982034696800392.mBjt@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2JXXsj9dAMoSFxL0YONi"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Dec 2021 06:33:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55621

--2JXXsj9dAMoSFxL0YONi
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

In 3.1.12, I noticed weston service type was changed to Nofity. This make w=
eston service cannot be restarted by "systemctl restart weston@root" comman=
d. The service is then timeout and fail.

Investigating systemd unit document, it seems that the notification message=
 is required for a notify unit to finish its launch. So I tried to add this=
 command to /usr/bin/weston-start script:
systemd-notify --ready The service can be restart normally. Is it considere=
d a bug? Or do we have any workaround?

--2JXXsj9dAMoSFxL0YONi
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />In 3.1.12, I noticed weston service type was changed to Nofi=
ty. This make weston service cannot be restarted by "systemctl restart <a h=
ref=3D"mailto:weston@root&quot;" target=3D"_blank" rel=3D"noopener">weston@=
root"</a> command. The service is then timeout and fail.<br /><br />Investi=
gating systemd unit document, it seems that the notification message is req=
uired for a notify unit to finish its launch. So I tried to add this comman=
d to /usr/bin/weston-start script: <br />
<pre><code class=3D"diff syntaxhl"><span class=3D"CodeRay"><span class=3D"l=
ine insert"><span class=3D"insert"></span>systemd-notify --ready</span></sp=
an></code></pre>
The service can be restart normally. Is it considered a bug? Or do we have =
any workaround?<br /><br /><code class=3D"diff syntaxhl"><span class=3D"Cod=
eRay"><span class=3D"line insert"></span></span></code>

--2JXXsj9dAMoSFxL0YONi--

