Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F548C54E49
	for <webhook@archiver.kernel.org>; Fri,  8 Mar 2024 00:28:23 +0000 (UTC)
Received: from mailout08.t-online.de (mailout08.t-online.de [194.25.134.20])
 by mx.groups.io with SMTP id smtpd.web11.9586.1709857694617561225
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 16:28:14 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.20, mailfrom: f_l_k@t-online.de)
Received: from fwd84.aul.t-online.de (fwd84.aul.t-online.de [10.223.144.110])
	by mailout08.t-online.de (Postfix) with SMTP id 54A9AE2F8;
	Fri,  8 Mar 2024 01:28:12 +0100 (CET)
Received: from [192.168.0.192] ([24.134.105.89]) by fwd84.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1riO5r-27oTWi0; Fri, 8 Mar 2024 01:28:11 +0100
Date: Fri, 08 Mar 2024 01:28:14 +0100
From: f_l_k@t-online.de
Subject: Re: [yocto] Yocto Project Quick Build - MACHINE
To: yocto@lists.yoctoproject.org, worik.stanton@tirotech.co.nz
Message-Id: <2N60AS.IS9X55HYOFEM2@t-online.de>
In-Reply-To: <CANuMBWH835Xj0prs1EUrkVjnRFyE4BF7-viJsrHdYMPSdv60Xg@mail.gmail.com>
References: <CANuMBWH835Xj0prs1EUrkVjnRFyE4BF7-viJsrHdYMPSdv60Xg@mail.gmail.com>
X-Mailer: geary/44.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-//V99rZQ1wTEbRA8n+rN"
X-TOI-EXPURGATEID: 150726::1709857692-2E7FB9FB-3763ED42/0/0 CLEAN NORMAL
X-TOI-MSGID: 4093f12b-aa9b-4235-80b9-07d6a4d10c87
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Mar 2024 00:28:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62704

--=-//V99rZQ1wTEbRA8n+rN
Content-Type: text/plain; charset=us-ascii; format=flowed

On Thu, Mar 7 2024 at 03:46:30 PM -08:00:00, Worik Stanton 
<worik.stanton@tirotech.co.nz> wrote:
> What have I done wrong?

Hi,
did you add meta-altera here?

build/conf/bblayers.conf


--=-//V99rZQ1wTEbRA8n+rN
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">On Thu, Mar 7 2024 at 03:46:30 PM -08:00:00, Worik Stanton &lt;worik.stanton@tirotech.co.nz&gt; wrote:<br><blockquote type="cite">What have I done wrong?</blockquote><div><br></div><div>Hi,</div><div>did you add meta-altera here?</div><div><br></div><div>build/conf/bblayers.conf</div></div>
--=-//V99rZQ1wTEbRA8n+rN--


