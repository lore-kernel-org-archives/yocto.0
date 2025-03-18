Return-Path: <ndivecha@granitenet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E3E5C282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 20:05:37 +0000 (UTC)
Subject: Install zabbix-proxy
To: yocto@lists.yoctoproject.org
From: "Nitesh D" <ndivecha@granitenet.com>
X-Originating-Location: Quincy, Massachusetts, US (65.202.145.2)
X-Originating-Platform: Mac Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 18 Mar 2025 13:05:31 -0700
Message-ID: <HSzU.1742328331216232413.DQOK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="fxAeJZbKc2JPqSH2P8aU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 20:05:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64977

--fxAeJZbKc2JPqSH2P8aU
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m working on an embedded hardware project using Yocto Project. I =
need to set up a =E2=80=9Czabbix-proxy=E2=80=9D to monitor remote devices (=
 https://www.zabbix.com/documentation...toring/proxies ( https://www.zabbix=
.com/documentation/6.0/en/manual/distributed_monitoring/proxies ) ). Unfort=
unately, OpenEmbedded =E2=80=9Cmeta-oe=E2=80=9D has a recipe for zabbix and=
 zabbix-agent is available, but it doesn=E2=80=99t include zabbix-proxy.

Has anyone successfully implemented =E2=80=9Czabbix-proxy=E2=80=9D over OE =
Linux?

I=E2=80=99d really appreciate any help or guidance you can provide to get z=
abbix-proxy.

Cheers,
Nitesh

--fxAeJZbKc2JPqSH2P8aU
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hello,</div>
<div>&nbsp;</div>
<div>I&rsquo;m working on an embedded hardware project using Yocto Project.=
 I need to set up a &ldquo;zabbix-proxy&rdquo; to monitor remote devices (<=
a href=3D"https://www.zabbix.com/documentation/6.0/en/manual/distributed_mo=
nitoring/proxies">https://www.zabbix.com/documentation...toring/proxies</a>=
). Unfortunately, OpenEmbedded &ldquo;meta-oe&rdquo; has a recipe for zabbi=
x and zabbix-agent is available, but it doesn&rsquo;t include zabbix-proxy.=
</div>
<div>&nbsp;</div>
<div>Has anyone successfully implemented &ldquo;zabbix-proxy&rdquo; over OE=
 Linux?</div>
<div>&nbsp;</div>
<div>I&rsquo;d really appreciate any help or guidance you can provide to ge=
t zabbix-proxy.&nbsp;</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Nitesh</div>
</div>

--fxAeJZbKc2JPqSH2P8aU--

