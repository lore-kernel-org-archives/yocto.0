Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A691FECAAD3
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 16:37:22 +0000 (UTC)
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
 by mx.groups.io with SMTP id smtpd.web08.1176.1663605433392773618
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 09:37:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=SPF record not found (domain: t-online.de, ip: 194.25.134.21,
 mailfrom: f_l_k@t-online.de)
Received: from fwd74.dcpf.telekom.de (fwd74.aul.t-online.de [10.223.144.100])
	by mailout10.t-online.de (Postfix) with SMTP id 0D8661026D;
	Mon, 19 Sep 2022 18:37:11 +0200 (CEST)
Received: from [192.168.178.83] ([84.163.47.121]) by fwd74.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1oaJla-1a0Ykq0; Mon, 19 Sep 2022 18:37:06 +0200
Date: Mon, 19 Sep 2022 18:37:01 +0200
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Edgar Mobile <heideggm@hotmail.com>, yocto@lists.yoctoproject.org
Message-Id: <P5UGIR.ETKUECS9HZXY1@t-online.de>
In-Reply-To: 
	<CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
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
X-Mailer: geary/40.0
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-vKmBeHkHcCWQr1vutkk7"
X-TOI-EXPURGATEID: 150726::1663605426-C9488B6F-68604C0A/0/0 CLEAN NORMAL
X-TOI-MSGID: f7e50bd2-7cfa-4a42-a818-3ecdb1cfb03c
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 16:37:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58078

--=-vKmBeHkHcCWQr1vutkk7
Content-Type: text/plain; charset=us-ascii; format=flowed

Am Mo, 19. Sep 2022 um 16:33:11 +0100 schrieb Alexander Kanavin 
<alex.kanavin@gmail.com>:
> You need to check the Mesa recipe to see how the build options are 
> defined

mesa builds vulkan support, if you add 'vulkan' to DISTRO_FEATURES. If 
you need to, you can add additional drivers with a line like this to a 
mesa_%.bbappend:

VULKAN_DRIVERS:append = ",foo,bar"


--=-vKmBeHkHcCWQr1vutkk7
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">Am Mo, 19. Sep 2022 um 16:33:11 +0100 schrieb Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;:<br><blockquote type="cite">You need to check the Mesa recipe to see how the build options are defined</blockquote><div><br></div><div>mesa builds vulkan support, if you add 'vulkan' to DISTRO_FEATURES. If you need to, you can add additional drivers with a line like this to a mesa_%.bbappend:</div><div><br></div><div>VULKAN_DRIVERS:append = ",foo,bar"</div></div>
--=-vKmBeHkHcCWQr1vutkk7--


