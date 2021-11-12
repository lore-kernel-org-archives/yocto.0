Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 808B4C433EF
	for <webhook@archiver.kernel.org>; Fri, 12 Nov 2021 12:38:59 +0000 (UTC)
Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com
 [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web11.15081.1636720737880149016
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Nov 2021 04:38:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=ER/Eb852;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.21,
 mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 2E437320167D;
	Fri, 12 Nov 2021 07:38:54 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute3.internal (MEProxy); Fri, 12 Nov 2021 07:38:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=azKTxtU8TPOzxgvdhIcbv+2jlu3jXKK
	sIRDL5YZQpt4=; b=ER/Eb852Kvwyk8t2eh16Zva6+mAmO/2xsX3iz65V9sh9bo/
	80hhh1VMzr1dS9WM+mKyW4SroJ4ZGQqzUgcboZlUsziS8fX+AHwpt1G0WtpYg4EN
	8YS3YzhHlPG/xQNb1ZPBoMesnuvXggP1y0UvlXfRXwXe2wOl5oApyu7N2nJWrtHD
	XDDYe4TFCEcfoxfc+Y2O5yGQG1X5QVHo93o2wRza6Js/b6E5H/xicFN1FyKpvV+h
	cczzsh0QCqeHgwL3Nvw9vJpq9K3a2Q2HjqA2FojACOe78wAjFA0S9pxAWe00SYj6
	/AxGdFunJGK7Jn0hQvk6KhnQfd5b5bz604mOSog==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=azKTxt
	U8TPOzxgvdhIcbv+2jlu3jXKKsIRDL5YZQpt4=; b=Xl2ANQ/A+21vRKoWx57XQ3
	UXfhGpKueGNBQnAGKe8TU/ci53eCMsV+XNbVLjE5Y4kx3dWeRar18+JAFDqUbTa3
	plNVkS+zP66AR3dPQYTA3XtLKmD8W0ReCl4xC8GiXQCWKPJzg1ziKiDzjy48MqyS
	ERtXDX47UPhD4nVAkU0nEANbEBM9RmetXFk/jyyMCnEfIqT0cplNQ5O7pe0PHbda
	YR7Sxa93tVLesqLs9MDB5wP8VBj8Qr/2RpKar2oiTxR6KiRk0i9WnhgPM0k890dc
	4pBZqpwfv7AqJzUkmzVhkBq/28PxYHf/nRlP0o7Yrgsoyog4hvGygG0HP4JvL+EA
	==
X-ME-Sender: <xms:XWCOYYhZKbllR6H0hoIybQN1iR7Yhsd9dOiC2gA2BLi2FwaNt0ksLQ>
    <xme:XWCOYRBrYb4tTvJh05M-ONGCH5ubj5QB09LruWldD2s4fDADL8JaKwr3iyEsXiBP5
    Se1M-Yl1yohM5rg>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrvdefgdegtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfofgrnhhu
    vghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilhdrhf
    foqeenucggtffrrghtthgvrhhnpeffkeekffdtudevudfhueehuefhtddvieeujeevieet
    leellefhteehhedtleduffenucffohhmrghinhephihotghtohhprhhojhgvtghtrdhorh
    hgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepofgr
    nhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:XWCOYQFOyx-A6lk7m6rYgxlqSyuL5vG1vWMBwYl2UxGi3hiwsdBTSQ>
    <xmx:XWCOYZSIdD0yLiIg1SkSPnYKm0XSDuzV4UQLGlaYpbq7GLHo38frhA>
    <xmx:XWCOYVzjBlroWm2HESq27VubTlriYFMoMG4iLxr47vqK70OrEHvBzw>
    <xmx:XWCOYevvIeX4IyPtjAwP5oowxn05rTaGq0wyqbjqKObazSc-OssThg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 895423C0265; Fri, 12 Nov 2021 07:38:53 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1371-g2296cc3491-fm-20211109.003-g2296cc34
Mime-Version: 1.0
Message-Id: <f366babd-a6e8-419a-ba92-1a76b98ea54f@www.fastmail.com>
In-Reply-To: 
 <3b634ba0411818686f962b7d53591bace5204140.camel@linuxfoundation.org>
References: <31d2787a-7e22-4f81-8f0e-1e4a87706046@www.fastmail.com>
 <CANnLRdjO+iCFGhHT6X41kTa5FAJP=fOToR+5DbiTaQVm4K8VpA@mail.gmail.com>
 <3b634ba0411818686f962b7d53591bace5204140.camel@linuxfoundation.org>
Date: Fri, 12 Nov 2021 13:38:33 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Richard Purdie" <richard.purdie@linuxfoundation.org>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto suddenly creating directories with 700 instead 755.
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Nov 2021 12:38:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55321

Am Fr, 12. Nov 2021, um 11:35, schrieb Richard Purdie:
> On Thu, 2021-11-11 at 18:28 -0500, Stephen John Smoogen wrote:
>> On Thu, 11 Nov 2021 at 11:10, Manuel Wagesreither <ManWag@fastmail.fm> wrote:
>> > 
>> > Hello all,
>> > 
>> > sorry, wall of text incoming.
>> > 
>> > tl;dr:
>> > If recipes install directories with `install -d path/to/dir`, how is the default mode determined? What can cause it suddenly (that is, without updating metalayers or similar) to change from 755 to 700?
>> > 
>> 
>> when I did this to myself recently, I had changed the shells default
>> umask value to 077 which caused exactly what you are listing. I would
>> check to see if the users or system wide umask was changed recently by
>> an update.
>
> I'd note there were a number of fixes for umask issues in master/honister:
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=f4fb74465787b50030d7fed5e0b293774ccb371b
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c4ecf7c1122380cdbc74fe692aa91756dc5bdf6b
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=522607e704876c67ed093bac47dde9238709ccae
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=58c97902933cced2981dfc7480fc0a458b4fb900

Thanks a lot. I will read through the links and commits provided and see if that helps us.

We are currently using poky on dunfell as it were on early September: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=bdd30be1a3815f70062d8febca91eaf042a77c3d.

Regards,
Manuel

