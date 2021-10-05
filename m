Return-Path: <n.jeker@delisys.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88459C433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Oct 2021 08:07:16 +0000 (UTC)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
 [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.22538.1633421232795232879
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Oct 2021 01:07:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch
 ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1mXfTg-0005Ix-Kg; Tue, 05 Oct 2021 10:07:08 +0200
Message-ID: <e5679a7035929357663fea6af7e869090ffa4e59.camel@delisys.ch>
Subject: Re: [yocto] Enabling Websockets in Mosquitto in yocto zeus #zeus
From: Nicolas Jeker <n.jeker@delisys.ch>
To: poornesh@elmeasure.com, yocto@lists.yoctoproject.org
Date: Tue, 05 Oct 2021 10:07:08 +0200
In-Reply-To: <rZJT.1633085135213129947.MN1U@lists.yoctoproject.org>
References: <rZJT.1633085135213129947.MN1U@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1633421233;31fa6a59;
X-HE-SMSGID: 1mXfTg-0005Ix-Kg
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Oct 2021 08:07:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54955

On Fri, 2021-10-01 at 03:45 -0700, poornesh@elmeasure.com wrote:
> Greetings !
> 
> I could able to add Mosquitto in Yocto Zeus , but as default websockets
> is disabled in Mosquitto . Can anyone help me how to enable websockets
> in Mosquitto in yocto zeus.
> 

There's a 'websockets' PACKAGECONFIG for the mosquitto recipe. You can
read more about how to change PACKAGECONFIGs in the documentation [1].

Be aware that since yocto dunfell, the websockets PACKAGECONFIG is
enabled by default, so you can remove it if you update to a newer
version in the future.

[1]:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-PACKAGECONFIG

> Thanks in Advance
> 


