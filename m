Return-Path: <ManWag@FastMail.FM>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955ACC433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:42 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by mx.groups.io with SMTP id smtpd.web10.8523.1649754745713097812
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 02:12:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@fastmail.fm header.s=fm3
 header.b=pl+RPCTf;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.25, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id 1A5395C01B3
	for <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 05:12:25 -0400 (EDT)
Received: from imap43 ([10.202.2.93])
  by compute3.internal (MEProxy); Tue, 12 Apr 2022 05:12:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	cc:content-type:date:date:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1649754745; x=1649841145; bh=+NC1cNirrrWagwwKYNKVNU+eYCEfQUZ9TDL
	wSYIHRio=; b=pl+RPCTf1mAB/2YVk0ecDlGoHhJ5X6SudaMm4a4P3VSzgFfQ4P2
	kFcPXvq73kgjGPI1U1sjCl8swMCCkv/RrUgq+FnzWSipnqfsYeS6fyKn2orSyp9D
	Mh5R1GSlRRYYgqtrOL0XgzYUHUwShe957l6spyve5A5tWpUp0eaYCk54Igl6uhlV
	vRuGUTWrCNiojPPmoUuJcbsONHsKwm0sJ35gV9Z4zXTVxcPo8UQyRPVHDhfvO3pD
	uTpuczfPFAFtqEljxAbF/LDjXUAJbCqxO5D204PSFLMG6gQaNa587SwPSoEm/HQi
	ieRabHkaKZm3NcSqfZjnGaweD03NDR53qkg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:date:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1649754745; x=1649841145; bh=+NC1cNirrrWag
	wwKYNKVNU+eYCEfQUZ9TDLwSYIHRio=; b=gWI7tVlpdZt4+Mr6SAoOM3J+VqKQ5
	IjM+CYohmcJPQ1luO8H6Cio/oGWWlf/UnO+vvQAz6ra15vW/JgAP3bI6GxXUErad
	35apF+X6DNM715CT0swB4r0NTqeazlXzDvazdu6qVpF3RefUlHMfK4ifd87bKqYO
	Q5PbgNVvJh9nuZVKyQFtgQz8qkTizipKHjS0thsA0GissktzQ/HFgSQZe4o9TDPl
	3fJmikmdMyD19mRbjuccv6zha5IacHSk50MPmouNRF8LyLdeqjQbv3o8ZFwltJMg
	2lk4b+YlFQntcjBMVPLYwzhpY7MIat4+iL7QXHj2AoRjtSkXY58+CqPqw==
X-ME-Sender: <xms:eEJVYrNp4aMsyeZWvestmvhY82E87AULwCkT3jQlc8Cz3Apv1SPX1A>
    <xme:eEJVYl_v6j6QX55LIUVAj9IbPaAGKr1-Y6yjJkeqDOTLwOB6OfYUgsQ8XNH5ol15W
    kjC4N8bg2-aQ9FD>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvvddrudekkedgudduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpefhtefhleehje
    efjeefudeugeetieefffffheehiedugfehleejhffhtddtleefudenucffohhmrghinhep
    hihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:eEJVYqSdC-JBVI9KySYQwd06DsIHxeFdG7hFOWQGoJalGjNSXsyz_Q>
    <xmx:eEJVYvvipn5ysVdR9yi5QD-dYnFjsmp09zuYGuGQ4p3RFZkQQh5LoQ>
    <xmx:eEJVYjfrowJ112hx2LihgDdxzWCd9Nb0AA6OGY6mdmDT_OMP8yZ1Hg>
    <xmx:eUJVYto35CAJ3vn1et4lxuQ27Y_jGBH3hhTmiQazVTyaVV7Av4RkuA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id CA6CAAC0E98; Tue, 12 Apr 2022 05:12:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-386-g4174665229-fm-20220406.001-g41746652
Mime-Version: 1.0
Message-Id: <373ce685-0531-44ae-8bb3-9e29a15abdfd@www.fastmail.com>
Date: Tue, 12 Apr 2022 11:11:13 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: yocto@lists.yoctoproject.org
Subject: LICENSE_CREATE_PACKAGE not working properly
Content-Type: text/plain
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56740

Hi all,

I'm on Dunfell [1] and just can't get LICENSE_CREATE_PACKAGE [2] to work right. I'd like to use it to get 'os-release-lic' onto my image. I don't want to install the license packages of *all* the packages onto my image, hence I'm setting NO_RECOMMENDATIONS [3] as well.

[1] https://git.yoctoproject.org/poky/commit/?h=dunfell&id=b41d4e46d30ed32e11d68466721a0f4056bad700
[2] http://docs.yoctoproject.org/ref-manual/variables.html#term-LICENSE_CREATE_PACKAGE
[3] http://docs.yoctoproject.org/ref-manual/variables.html#term-NO_RECOMMENDATIONS

Both LICENSE_CREATE_PACKAGE = "1" and NO_RECOMMENDATIONS = "1" are set in my local.conf.

Symptom: Bitbake errors out saying nothing RPROVIDES 'os-release-lic'. Sometimes the package DOES appear in `oe-pkgdata-util list-pkgs` though. This seems to depend on whether I issue a build between adding LICENSE_CREATE_PACKAGE and adding os-release-lic, or do both together without an intermediate build.

Has anyone any idea what's going on here? Does it work on your projects?

As a start, where do oe-pkgdata-util and bitbake get their info regarding available packages from? How can come to different results?

Thanks in advance.
Regards,
Manuel

