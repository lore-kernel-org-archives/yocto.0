Return-Path: <stefan.tauner@artech.at>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE57CC001B0
	for <webhook@archiver.kernel.org>; Wed, 26 Jul 2023 14:29:20 +0000 (UTC)
Received: from out07.mymailwall.com (out07.mymailwall.com [91.212.136.3])
 by mx.groups.io with SMTP id smtpd.web10.12623.1690381754292808923
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jul 2023 07:29:15 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: artech.at, ip: 91.212.136.3, mailfrom: stefan.tauner@artech.at)
X-MyMailWallStatus: Email scanned(2259088666)
Received: from mail.artech.at (EHLO mail.artech.at) [91.112.220.99]
	by relay.mymailwall.com with ESMTP TLS id 26521 2259088666; Wed, 26 Jul 2023 16:29:10 +0200
Received: from tauner-t14s (192.168.0.251) by SRV09.ARTech.local
 (192.168.0.89) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2507.23; Wed, 26 Jul
 2023 16:29:09 +0200
Date: Wed, 26 Jul 2023 16:29:09 +0200
From: Stefan Tauner <stefan.tauner@artech.at>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security] Possible candidate for packaging: Wazuh
Message-ID: <20230726162909.016f7371@tauner-t14s>
Organization: A&R Tech
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [192.168.0.251]
X-ClientProxiedBy: SRV09.ARTech.local (192.168.0.89) To SRV09.ARTech.local
 (192.168.0.89)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 14:29:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60658

Hi,

Wazuh forked in 2015 from ossec (which is included in meta-security
since 2021, cf.
https://git.yoctoproject.org/meta-security/log/recipes-ids/ossec).
 - https://wazuh.com
 - https://github.com/wazuh/wazuh

Many aspects (including file names and configuration variables etc.)
have remained the same and from my very little experience with ossec
(and specifically googling for documentation and help) it is quite
obvious that Wazuh is widely used, more active and a worthy contender in
the FOSS IDS market.

I do not intend to look further into writing a port at the moment
(as ossec is fulfilling our requirements at this point) but I wanted to
mention it here at least in the unlikely case anyone is looking for
some work in the unfounded hope to get pleasantly surprised if I need
Wazuh in the future ;)
I assume a port can be based on the ossec recipe but the projects
diverged quite a bit. For example, Wazuh comes with quite a bit of
Python code and due to its "cloudiness" there might be dragons.
--
with kind regards/mit freundlichen Gr=C3=BC=C3=9Fen,
Stefan Tauner
A&R-Tech Kernel Penguins



FN 181686 k. HG Wien, UID-Nr. ATU 47056901, zertifiziert nach ISO 9001:2015=
 (Nr. AT-04036/0), ISO/TS 22163:2017 (IR-00009/0) und ISO 27001:2013 (Nr. I=
-00619/0)
Der Inhalt dieser E-Mail ist vertraulich und ausschlie=C3=9Flich f=C3=BCr d=
en bezeichneten Adressaten bestimmt. Wenn Sie nicht der vorgesehene Adressa=
t dieser E-Mail oder dessen Vertreter sein sollten, so beachten Sie bitte, =
dass jede Form der Kenntnisnahme, Ver=C3=B6ffentlichung, Vervielf=C3=A4ltig=
ung oder Weitergabe des Inhaltes dieser E-Mail unzul=C3=A4ssig ist. Wir bit=
ten Sie, sich in diesem Fall mit dem Absender der E-Mail in Verbindung zu s=
etzen und die E-Mail zu vernichten. F=C3=BCr =C3=9Cbermittlungsfehler oder =
sonstige Irrt=C3=BCmer bei der =C3=9Cbermittlung besteht keine Haftung.
This e-mail is intended solely for the person to whom it is addressed and m=
ay contain confidential or legally privileged information. Access to this e=
-mail by anyone else is unauthorized. If an addressing or transmission erro=
r has misdirected this e-mail, please notify the author by replying to this=
 e-mail and destroy this e-mail and any attachments. E-mail may be suscepti=
ble to data corruption, interception, unauthorized amendment, viruses and d=
elays or the consequences thereof. If you are not the intended recipient, b=
e advised that you have received this e-mail in error and that any use, dis=
semination, forwarding, printing or copying of this e-mail is strictly proh=
ibited.


