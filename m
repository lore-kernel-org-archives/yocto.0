Return-Path: <andrei@gherzan.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 441DBC433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 12:10:26 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by mx.groups.io with SMTP id smtpd.web08.5753.1641298225138539054
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:10:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gherzan.com header.s=fm3 header.b=yVebpPcn;
 spf=pass (domain: gherzan.com, ip: 66.111.4.29, mailfrom: andrei@gherzan.com)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 5A9515C01F0
	for <yocto@lists.yoctoproject.org>; Tue,  4 Jan 2022 07:10:24 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Tue, 04 Jan 2022 07:10:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.com; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=ha9cTB41my3cL/WTPpl+2iXfN9Wba1G
	Is1PynT/XIAQ=; b=yVebpPcnezdUneXvsIZnoqOSceEYDdmBxoxmm5kdJl7j97r
	/lzLEu43mMODmC5ZropAAO9LvzRbYjCZFxBRjrEynZ01mVxJHESfc4WGdMSO1EXz
	scjo32xWUpVRekL5y6W8dYFZ1vz5wuyeWS7OrqOz3uKf0kSmjQLJU6AltbzHkxeC
	uspfkjAVn7c+qrRgwHj9XD8uTnn/VSX27SkUWXewNG8Ar9qwCbRr64qw8TM0HTKk
	Lyj4LgBcN8BdG1N2lEXzr26ahTv3xtjlOfqeCP3H/QyhmC3Xh89Jd+JpYhNTaX1x
	tWBjrM4waYa3iYUOkaTwML4yOs8CnJ94bTIAjow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ha9cTB
	41my3cL/WTPpl+2iXfN9Wba1GIs1PynT/XIAQ=; b=L04w1cNHQ2CcahGxE7IsjL
	3syZdfeYRWQm/3xhQcwny0hAnLMCz3DAj9FlkH5Ew6KgpFoS4XJ5JkH0BfT2cdIz
	UY476cfqt3jMRMocfr7orWHu+8opgFZxW8dgWP9yOYjl9SuWmhqjJRXLDSOXTFrs
	fWy7OjFXOK52H+OlJ/C6Yy57TVKDx/RZxs/npDmB9mRj9X+ICOw0d4x4wLdhycBA
	cnXXfyW5DJK+jHC6D8Nt0EB4nVsVRTszEz6cjlPwJW6XlcqdpysK2Y5JshKzUKLB
	RmLWr9xVdKV74SECZVqWzaoOrrpau8MAX2xHZHOMsVcrirp3WEzxCCV9v8367QnA
	==
X-ME-Sender: <xms:MDnUYWzUWdNF0JBu7BGKXHkrKr5ZzonfZetSCSdomFa1epkmxWUMVQ>
    <xme:MDnUYSSWnnVroAWb-VWm5OnF6NOYGvlWsQeRYBy4z_xB4GH0isPE7j1AqGwe6T5_r
    8xQhmr7DfXBMinbttQ>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrudeffedgfeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvufgtsehttd
    ertderredtnecuhfhrohhmpedftehnughrvghiucfihhgvrhiirghnfdcuoegrnhgurhgv
    ihesghhhvghriigrnhdrtghomheqnecuggftrfgrthhtvghrnhepffeliedtteehkeetje
    elteelhfevjedvleekvdffjeffkeegtedvvdetkedvudeinecuffhomhgrihhnpehophgv
    nhgvmhgsvgguuggvugdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpegrnhgurhgvihesghhhvghriigrnhdrtghomh
X-ME-Proxy: <xmx:MDnUYYWd-idbQ3tq6w3nazOMozoqxSTEPMOMFYODIsCVOjDj1hKLgw>
    <xmx:MDnUYcj7uQCtHSxlJfNvOdebKQnPCsyX6OpEcOjKnkImfVLiQh6wdQ>
    <xmx:MDnUYYCoCTDB8PHjsOpRdH8lr0zIsrXyAWTZHaTp0H6LXmytv5g_Bw>
    <xmx:MDnUYbPgb11xJxdh1YNiSmLh_2FH5lELg9LEkBT9NdK5xoiFh_BggA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 322B33C0465; Tue,  4 Jan 2022 07:10:24 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4525-g8883000b21-fm-20211221.001-g8883000b
Mime-Version: 1.0
Message-Id: <08be671e-a4ba-493d-8e0b-35fd5bf697d4@www.fastmail.com>
In-Reply-To: <20211209025956.41679-1-mingli.yu@windriver.com>
References: <20211209025956.41679-1-mingli.yu@windriver.com>
Date: Tue, 04 Jan 2022 12:10:04 +0000
From: "Andrei Gherzan" <andrei@gherzan.com>
To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH] xserver-xorg: remove xshmfence
 configure
 option
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 12:10:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55716

On Thu, 9 Dec 2021, at 02:59, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
>
> After the commit [1] introduced in openembedded-core layer,
> some configure options is't carried over include xshmfence
> option, so remove the xshmfence configure option to silence
> the below warning.
>   WARNING: xserver-xorg-2_21.1.1-r0 do_configure: QA Issue: 
> xserver-xorg: invalid PACKAGECONFIG: xshmfence [invalid-packageconfig]
>
> [1] 
> https://git.openembedded.org/openembedded-core/commit/?id=e05abd87ee5d23750c641d0129d9c83db68ee2e8
>
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>

I have merged this to master.

Thanks,
Andrei

