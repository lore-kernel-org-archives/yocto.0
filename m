Return-Path: <f_l_k@t-online.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1E5C4345F
	for <webhook@archiver.kernel.org>; Fri, 12 Apr 2024 22:48:14 +0000 (UTC)
Received: from mailout09.t-online.de (mailout09.t-online.de [194.25.134.84])
 by mx.groups.io with SMTP id smtpd.web10.78.1712962093229008248
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Apr 2024 15:48:13 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: t-online.de, ip: 194.25.134.84, mailfrom: f_l_k@t-online.de)
Received: from fwd70.aul.t-online.de (fwd70.aul.t-online.de [10.223.144.96])
	by mailout09.t-online.de (Postfix) with SMTP id 1646843869;
	Sat, 13 Apr 2024 00:48:10 +0200 (CEST)
Received: from [192.168.178.67] ([84.163.32.93]) by fwd70.t-online.de
	with (TLSv1.3:TLS_AES_256_GCM_SHA384 encrypted)
	esmtp id 1rvPgl-2Cuhlo0; Sat, 13 Apr 2024 00:48:07 +0200
Date: Sat, 13 Apr 2024 00:48:28 +0200
From: Markus Volk <f_l_k@t-online.de>
Subject: Re: [yocto] Correct way for multiple recipes to install files in the
 same directory
To: yocto@lists.yoctoproject.org, linusnilsson@hotmail.com
Message-Id: <S0QUBS.O4LXIGQ2JHXB1@t-online.de>
In-Reply-To: <31389.1712938485279864761@lists.yoctoproject.org>
References: <31389.1712902067429675400@lists.yoctoproject.org>
	<31389.1712938485279864761@lists.yoctoproject.org>
X-Mailer: geary/44.1
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="=-pRUsU5gLUj5/mV5KoZPc"
X-TOI-EXPURGATEID: 150726::1712962087-22CFE89A-5F619581/0/0 CLEAN NORMAL
X-TOI-MSGID: 025476a3-7c08-45b6-b6ec-b0486d1eba65
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Apr 2024 22:48:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62926

--=-pRUsU5gLUj5/mV5KoZPc
Content-Type: text/plain; charset=us-ascii; format=flowed

On Fri, Apr 12 2024 at 09:14:45 AM -07:00:00, Linus Nilsson 
<linusnilsson@hotmail.com> wrote:
> I haven't worked with the classes yet but I can see how they can be 
> used to make things a lot easier in my case.

But don't use classen too invasively. They can be problematic, e.g. an 
:append may be ignored depending on the BBFILE_PRIORITY of a layer


--=-pRUsU5gLUj5/mV5KoZPc
Content-Type: text/html; charset=us-ascii

<div id="geary-body" dir="auto">On Fri, Apr 12 2024 at 09:14:45 AM -07:00:00, Linus Nilsson &lt;linusnilsson@hotmail.com&gt; wrote:<br><blockquote type="cite"> I haven't worked with the classes yet but I can see how they can be used to make things a lot easier in my case.</blockquote><div><br></div><div>But don't use classen too invasively. They can be problematic, e.g. an :append may be ignored depending on the BBFILE_PRIORITY of a layer</div></div>
--=-pRUsU5gLUj5/mV5KoZPc--


