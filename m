Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEA1C54EBE
	for <webhook@archiver.kernel.org>; Tue, 10 Jan 2023 17:58:44 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.260.1673373523248082323
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jan 2023 09:58:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=pj++F9vU;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 1CB2E1BF203;
	Tue, 10 Jan 2023 17:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1673373521;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bYMy/g4u+Kxc2nn2Gdy0SILeQHcVjgsawLPhTIW27Fw=;
	b=pj++F9vUmHbfG/yppZ5bPDxY3Apgz8wrFdp0e4htaQ3S/Ty+NH75ZIKVjMDMrEg2HpYkFq
	OFrJBAT9VKTKxRqb5PCEPQnS/Q53dk5ZEeSABCcCH+/q1v4gI5tnhCttWBxibLsI0QMZKP
	BQNejKnaiM7xifz3i+RzbnAfncOmCmcp38oL/J8VPnxnic/Dk2uEZZowuYA2qwspTysZIQ
	Wznz3kYgG9v1zkSniuE75sa/lKxWihPXryMMPMGDBeuNRWD7HLEMfgBcwpPIfrozImSDui
	eqBzIs8dxK7uXc6IaxT1Z8BRJ3OHGe6oqqfF/NHsoXhLOhlU8EvPaY96UIXA5w==
Message-ID: <2faf99a6-4d29-0ecf-2459-360d097e5e71@bootlin.com>
Date: Tue, 10 Jan 2023 18:58:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Can't find go-helloworld in my image
Content-Language: en-US
To: Tim Orling <ticotimo@gmail.com>
References: <ebcbd116-7fd9-bb09-588e-c851139b33ea@bootlin.com>
 <CANx9H-A8HGySr=DEZBNYf+YpJVE-OWJ6yJiqDiCPQ0rbv=LLCA@mail.gmail.com>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANx9H-A8HGySr=DEZBNYf+YpJVE-OWJ6yJiqDiCPQ0rbv=LLCA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jan 2023 17:58:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58961


On 10.01.23 at 18:52, Tim Orling wrote:
>
>
> On Tue, Jan 10, 2023 at 9:48 AM Michael Opdenacker via 
> lists.yoctoproject.org <http://lists.yoctoproject.org> 
> <michael.opdenacker=bootlin.com@lists.yoctoproject.org> wrote:
>
>     Greetings,
>
>     Using Poky master, I added go-helloworld to my local.conf file:
>     IMAGE_install:append = " go-helloworld"
>
>
> I assume you meant IMAGE_INSTALL:append = "go-helloworld" ?


Oops, yes, silly me! How could I miss this? That was the reason why.
Many thanks Tim :-)

Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


