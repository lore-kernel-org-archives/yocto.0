Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E29CC433F5
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 13:07:30 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by mx.groups.io with SMTP id smtpd.web10.10331.1636636049786373108
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 05:07:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=MfRFv18j;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.28, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id CDC955C0192;
	Thu, 11 Nov 2021 08:07:28 -0500 (EST)
Received: from imap41 ([10.202.2.91])
  by compute3.internal (MEProxy); Thu, 11 Nov 2021 08:07:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=5STiUuZSZ80H/2BAgEmQKMnTvZKwgKY
	FPXDC5ADCAH4=; b=MfRFv18je19WSijfqNln2vp6jkP1XBzHsAMns0wtbcPcMhu
	MDB+g/XmBAaPhSD7LKwbyaq+FzPQwKpp6Klcr2sZHbG0ZbAavRFKKXZ73YTYIN6L
	bX0jHpSfPWtdTaZ24ORR42WM71WoxFtasWxyczulF2m+YieP7Fyo0HftqaOXzfDi
	JGgfpvhI4KIHPTMezVfdb777fl9M3wmyRJwD/VU00eMD09u/zZ30KHb2wk084HnX
	ZmwuCvaw7vBXp89byj2H7m97JORoDJrHhQoWLbNvSltmhaD3HnQVZ9IbsA6yyqeQ
	auDHpdIDyTkqWOz7J4ygm6jor5QBlkbeVG2B7QA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=5STiUu
	ZSZ80H/2BAgEmQKMnTvZKwgKYFPXDC5ADCAH4=; b=lad4kGRmlcfT7NA99nAt5n
	EbZVKob7Hc4Rurnp4o8BrZ9Rwerq5cowhCMh9CVv15GW06vBUj+3Q5j/h082Xt5s
	EJc0WboFQC2pecp/ed6LDWoeCmTmVdqWRHPOCU8YUs/xj265tChIGkUzArly69XO
	PRpS4Ksk0nm/SPJhW16PQK7ssDcaq/2b7nQVG8Fsr+XdW9hp2aQVle7P7eE52ER8
	ZnMyxDPzXk7M4IrnGi86pzhL7D6nujzmHQUPrvNxX7ipWnJxE9AaTOlsy0wK3kSv
	Yipby49n2uJuzPzdt/yzBN3FXFK6EJItAn+7sHDnyNQgUQMbjmgJ+lXes/Sg/2HQ
	==
X-ME-Sender: <xms:kBWNYWAGK99aWbhPVreOVnGgfWg8zsMzZdCj_PC8ok6tjeiel0fyKQ>
    <xme:kBWNYQgTghVVn7mHOWRSNqqqhkWa0-rapUJhGQCk0zyXZ-wv3Y2oUyfiCWrouS-1O
    xoRy73bVIXKS6Am>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvuddrvddugdegkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfofgrnhhu
    vghlucghrghgvghsrhgvihhthhgvrhdfuceoofgrnhghrghgsefhrghsthforghilhdrhf
    foqeenucggtffrrghtthgvrhhnpedvieeiudejheetuddvieduudegvdegkeeihfevheej
    hefghfffkeejtdeltedtgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:kBWNYZmiO3j0bQNtxC0jP-6vWBKgL0DKZtPV-PlpDKNMZEzBvY6sXA>
    <xmx:kBWNYUwdaZ1LmzbVw3LMxQBbFmGFrhKJkgo3VRKdsGakuQwzTjjdjw>
    <xmx:kBWNYbSFZ5z1Q9Lza4raqp404quS0T0fclkbnF7Sog5qdaKwStJFEA>
    <xmx:kBWNYeOegrdyqQK6sSv-wxfQjw882uTXXPos1FJXJSQ616O0DZW4Hg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 9CF633C0C77; Thu, 11 Nov 2021 08:07:28 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1371-g2296cc3491-fm-20211109.003-g2296cc34
Mime-Version: 1.0
Message-Id: <a40fec04-0a49-44ae-866f-f818e67e8222@www.fastmail.com>
In-Reply-To: 
 <AM0PR0702MB3761032325B33A543A700244FE8D9@AM0PR0702MB3761.eurprd07.prod.outlook.com>
References: 
 <AM0PR0702MB3761032325B33A543A700244FE8D9@AM0PR0702MB3761.eurprd07.prod.outlook.com>
Date: Thu, 11 Nov 2021 14:06:41 +0100
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Jeffrey Simons" <jeffrey.simons@boonedam.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] User configuration & host contamination
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 13:07:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55312

Hi Jeffrey,

Am Do, 4. Nov 2021, um 11:00, schrieb Jeffrey Simons:
> Hi all,
>
> I'm having some difficulty with setting up users and the respective 
> application user assignments. I have a generic recipe which inherits 
> useradd and sets a user, this
> works great for my purpose without one exception. I can't assign the 
> user in my other recipe where the application is build.
>
> Snippet from my user add (based on the useradd-example):
> 	USERADD_PARAM_${PN} = "--uid 1200 \
>                       	--home-dir /home/user1 \
>                        	--groups dialout \
>                        	--user-group \
>                        	--password '********' \
>                        	--shell /bin/bash user1"
>
> Snippet from my application which wants to assign the user1:
> 	do_install () {
> 		chown -R user1 ${D}/usr/local/bin/test_app/
> 	}
> It fails with the message:
> "WARNING: test_app-1.0-12-r0 do_package_qa: QA Issue: test_app: 
> /usr/local/bin/test_app/some_script.py is owned by uid 1000, which is 
> the same as the user running bitbake. This may be due to host 
> contamination"
>
> Any pointers/thoughts in how I can resolve this issue?

Does the recipe which builds the application DEPEND on the recipe which sets up the user? This is what I would try. If I understand things correctly, Yocto/Bitbake provides every recipe a pristine environment unnaffected from other recipes going into the same image. For example, if you want to link your application against some libraries provided by other recipes, you need to add them to DEPENDS. That populates your build environment with that other recipes output. I'm not sure this applies to user accounts as well, but I guess it's worth a try.

Please note I probably used the termins "recipe" and "package" incorrectly.

Hope this helps,
Manuel

