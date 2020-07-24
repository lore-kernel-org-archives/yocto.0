Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
 by mx.groups.io with SMTP id smtpd.web12.2871.1595617609052155787
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 12:06:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ftml.net header.s=fm1 header.b=eeMyaHRI;
 spf=pass (domain: ftml.net, ip: 64.147.123.25, mailfrom: fdk17@ftml.net)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 26F11E89
	for <yocto@lists.yoctoproject.org>; Fri, 24 Jul 2020 15:06:48 -0400 (EDT)
Received: from imap7 ([10.202.2.57])
  by compute3.internal (MEProxy); Fri, 24 Jul 2020 15:06:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ftml.net; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=33UiqnK5e/vAslunLCMlXkutVodfQ5s
	tbjF9Zbaszak=; b=eeMyaHRIiX6i/O9gHOyH4O6/bxmsl87giCUQka/aQLfuf5u
	IzLMaT4g021YIQfwR815Iwp3vFhvdyCQQPJMRKehyM0cWOCJqQC9vieYAsq8hC2J
	4vINJE1MJvhpUtMwehom+db47RmNa94W1Wu27C2JL2ZE8y8LImfmRfFXKm5yTEKj
	OyJz1geXAAX/1imJhee/KDB8dVgOhn8Wgcsh1oZZIm5GgxKXuOKQ5Ca6I/IxImVw
	ZYkG1PIdtEQy0THi8AuZpFbyrQWYo+uKhOGEqP+up1fvAzix2ZmOwtQYvCiyaa7R
	WcxG2pGQHJyXlBCdJgqHPM2Qvw2m2+dhNcZnUuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=33Uiqn
	K5e/vAslunLCMlXkutVodfQ5stbjF9Zbaszak=; b=nZTEEgDuBYeBcFvQ+pS8Pf
	ukVXZ7aoFo5ebpVz6MAQa2EjuFMh1FcquTkeL76cjaHR7+G/AwAOMH7yMDtE1iTF
	GFzKd7cRQPfQcOrxNjGUHcGWLEP2lR+YKK/le3zJGI5Bb3NmS0JPQ2+vF3H5dwar
	Im/eRIIL9/ptE0MhbMlxSlJw4wMc53gI2smGSIyCD/HwJYw9ZDUf+QztjHfeeWbk
	XYzSJmkgfAENMWAFch87U3a1BfYZa8NUJo2C2rZKQ131Dm5yPGMS5zhwj/C06PGB
	hjZXqpfaRx+ribXGDomyr6AB2H3RQLZmy1auFGxdmcAwRKRw07zEJL5db/ex8/Ig
	==
X-ME-Sender: <xms:RzEbX95Xa7i0Smjr_efFndCU4x_9b6_5amicMj0RTPPnQPK19vfw_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrheefgddufeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsegrtd
    erreerredtnecuhfhrohhmpedfhfhrvgguuceurghkshhikhdfuceofhgukhdujeesfhht
    mhhlrdhnvghtqeenucggtffrrghtthgvrhhnpefgkedtjeejleehvedtvdfhiedvvddtgf
    ejveefleeukeevuedvgfejjefgueehhfenucevlhhushhtvghrufhiiigvpedtnecurfgr
    rhgrmhepmhgrihhlfhhrohhmpehfughkudejsehfthhmlhdrnhgvth
X-ME-Proxy: <xmx:RzEbX675Q8OjjkodQZ2DZyLYBn7U2I9WI35tUpnY5VWHpjrsfjv_6g>
    <xmx:RzEbX0f7Cz7-enyAcM1xz8_EQUbYFhVhlRNNpFm-nHklHQRoKR6dwA>
    <xmx:RzEbX2IzM6txTI8ap5tk7lxev1De7hXzcMko0RT6gLfn4pyZPJ5vww>
    <xmx:RzEbX0ZyfMyApuLr_YL5zq-LVXX5-uKlk1rj8vdsFXaEDtQqBmV3kQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 5D92418041E; Fri, 24 Jul 2020 15:06:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-92-g11c785d-fm-20200721.004-g11c785d5
Mime-Version: 1.0
Message-Id: <932b3576-0e34-456a-8c76-0897a4e8c5c7@www.fastmail.com>
In-Reply-To: <4159.1595301994782406425@lists.yoctoproject.org>
References: 
 <CA+chaQcp+gvTxxwxXcMtUL1OnpERhD3TAr3jLFLi+J1sq7qXeA@mail.gmail.com>
 <4159.1595301994782406425@lists.yoctoproject.org>
Date: Fri, 24 Jul 2020 15:06:15 -0400
From: "Fred Baksik" <fdk17@ftml.net>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Offline Build #yocto
Content-Type: multipart/alternative;
 boundary=3d107f6db603456c92015c0284add692

--3d107f6db603456c92015c0284add692
Content-Type: text/plain

On Mon, Jul 20, 2020, at 11:26 PM, Amrun Nisha.R wrote:
> I gave new downloads (<pwd>/downloads) path in replace of /opt/yocto_downloads. It takes the new downloads path and did the compilation, but i'm facing error in do_fetch and do_compile. 
> -=-=-=-=-=-=-=-=-=-=-=-
> 

This kind of procedure worked for me pretty straight forward.

Did your original local.conf file contain the following?
#create download mirrors
BB_GENERATE_MIRROR_TARBALLS = "1"


--3d107f6db603456c92015c0284add692
Content-Type: text/html

<!DOCTYPE html><html><head><title></title><style type="text/css">p.MsoNormal,p.MsoNoSpacing{margin:0}</style></head><body><div>On Mon, Jul 20, 2020, at 11:26 PM, Amrun Nisha.R wrote:<br></div><blockquote type="cite" id="qt" style=""><div>I gave new downloads (&lt;pwd&gt;/downloads) path in replace of /opt/yocto_downloads. It takes the new downloads path and did the compilation, but i'm facing error in do_fetch and do_compile. <br></div><div>-=-=-=-=-=-=-=-=-=-=-=-<br></div><div><br></div></blockquote><div><br></div><div>This kind of procedure worked for me pretty straight forward.<br></div><div><br></div><div>Did your original local.conf file contain the following?<br></div><div>#create download mirrors<br></div><div>BB_GENERATE_MIRROR_TARBALLS = "1"<br></div><div><br></div><div><br></div></body></html>

--3d107f6db603456c92015c0284add692--
