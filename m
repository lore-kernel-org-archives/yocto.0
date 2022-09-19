Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635B9ECAAA1
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 17:17:22 +0000 (UTC)
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
 by mx.groups.io with SMTP id smtpd.web11.1743.1663607834585450671
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 10:17:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.84,
 mailfrom: f_l_k@t-online.de)
Received: from fwd81.dcpf.telekom.de (fwd81.aul.t-online.de [10.223.144.107])
	by mailout09.t-online.de (Postfix) with SMTP id 4DCDA1C386;
	Mon, 19 Sep 2022 19:17:04 +0200 (CEST)
Received: from [192.168.178.83] ([84.163.47.121]) by fwd81.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1oaKOA-11t7Vg0; Mon, 19 Sep 2022 19:16:58 +0200
Date: Mon, 19 Sep 2022 19:16:52 +0200
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
Message-Id: <40WGIR.ECG3N5TIIYMJ1@t-online.de>
In-Reply-To: 
	<PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
References: 
	<PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-tD-v_Cb4F7cOqyQRWpgWOBavxqhgJPhZzQ2gw1dkWxw@mail.gmail.com>
	<SJ0PR84MB1846B369EB668E66A065A4FCC7489@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj_jSuNdush++p=NWW86M2rs2fpnTzOuRw1xjvDBrAdsZw@mail.gmail.com>
	<PH0PR84MB1835D30B90E3ED9ADADA471BC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj8diBFzwNe_veJG-Vx9cam0u=-uG6O1c=gSL9J9kO6NEg@mail.gmail.com>
	<PH0PR84MB183555F695A0E7C8818C14E5C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj9oFKPYa63AiH4tDJ8Jku0826ySM22uXxxq=vOwbbD+vA@mail.gmail.com>
	<PH0PR84MB1835788AFD16FEB8E4A15790C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj8ANJ_EnvBgi+mZH52kr5rxyhBbBWEDoaOFPR9MDLDgZg@mail.gmail.com>
	<PH0PR84MB183571245531C6D271BD5A90C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-rLXUAXn_BNYCM8bjeeWVCWU3YYFvnr5bagw7e0V8Akw@mail.gmail.com>
	<PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
	<CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
	<P5UGIR.ETKUECS9HZXY1@t-online.de>
	<PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-jea+gtaJjfbAPKmppPLd"
X-TOI-EXPURGATEID: 150726::1663607818-DBFE97E2-3998CE3D/0/0 CLEAN NORMAL
X-TOI-MSGID: d7271f19-a6ab-416a-b7af-5fcc6b7a1cde
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 17:17:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58080

--=-jea+gtaJjfbAPKmppPLd
Content-Type: text/plain; charset=us-ascii; format=flowed

Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile 
<heideggm@hotmail.com>:
> This wasn't enough

i guess you would also need to add venus support to virglrenderer.bb 
for qemu:

DEPENDS:append = "vulkan-loader vulkan-headers"
EXTRA_OEMESON += "-Dvenus-experimental=true"

but i have never tested this


--=-jea+gtaJjfbAPKmppPLd
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">Am Mo, 19. Sep 2022 um 16:54:52 +0000 schrieb Edgar Mobile &lt;heideggm@hotmail.com&gt;:<br><blockquote type="cite">This wasn't enough</blockquote><div><br></div><div>i guess you would also need to add venus support to virglrenderer.bb for qemu:</div><div><br></div><div>DEPENDS:append = "vulkan-loader vulkan-headers"</div><div>EXTRA_OEMESON += "<span class="s">-D</span><span class="s">venus-experimental=true"</span></div><div><span class="s"><br></span></div><div><span class="s">but i have never tested this</span></div></div>
--=-jea+gtaJjfbAPKmppPLd--


