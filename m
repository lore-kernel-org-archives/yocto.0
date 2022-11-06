Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A5E9C433FE
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 08:40:30 +0000 (UTC)
Received: from mailout05.t-online.de (mailout05.t-online.de [194.25.134.82])
 by mx.groups.io with SMTP id smtpd.web08.14463.1667724029050215224
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 01:40:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.82, mailfrom: f_l_k@t-online.de)
Received: from fwd73.dcpf.telekom.de (fwd73.aul.t-online.de [10.223.144.99])
	by mailout05.t-online.de (Postfix) with SMTP id 7AD0C21C34;
	Sun,  6 Nov 2022 09:40:26 +0100 (CET)
Received: from [192.168.178.122] ([79.219.228.48]) by fwd73.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1orbCZ-3Emj5M0; Sun, 6 Nov 2022 09:40:23 +0100
Date: Sun, 06 Nov 2022 09:40:17 +0100
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] undefined reference problem persists
To: Mistyron <ron.eggler@mistywest.com>
Cc: yocto@lists.yoctoproject.org
Message-Id: <534XKR.CLOQ7V0FCACC3@t-online.de>
In-Reply-To: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-UCyiF8jbYr8cOCKnaOxu"
X-TOI-EXPURGATEID: 150726::1667724023-2588998D-5F267114/0/0 CLEAN NORMAL
X-TOI-MSGID: 8e9f76f1-32a2-45d8-8004-01f7c42799d3
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 08:40:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58494

--=-UCyiF8jbYr8cOCKnaOxu
Content-Type: text/plain; charset=us-ascii; format=flowed

Am So, 6. Nov 2022 um 00:45:36 -0700 schrieb Mistyron 
<ron.eggler@mistywest.com>:
>     | 
> /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: 
> undefined reference to `rl_echo_signal_char'

missing readline dependency ?


--=-UCyiF8jbYr8cOCKnaOxu
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">Am So, 6. Nov 2022 um 00:45:36 -0700 schrieb Mistyron &lt;ron.eggler@mistywest.com&gt;:<br><blockquote type="cite"><div class="plaintext" style="white-space: break-spaces;">&nbsp;&nbsp;&nbsp; | /usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-network-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference to `rl_echo_signal_char'</div></blockquote><div><br></div><div>missing readline dependency ?</div></div>
--=-UCyiF8jbYr8cOCKnaOxu--


