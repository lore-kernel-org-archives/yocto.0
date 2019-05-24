Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E54EE00BAA; Fri, 24 May 2019 02:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2515E00B5F
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 02:55:48 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 2165F21B34;
	Fri, 24 May 2019 05:55:48 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Fri, 24 May 2019 05:55:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=rXZyXUsSS6llvDJe8wMBB1cr3DI+5yK
	emRPF5XqmUWc=; b=VJ9bQCt/efhMM/HDPldMjRrf28oMXZOamtzPt9LSCvfRtgg
	0OivjX0M7FxGgxh1V18R0qW7jeAME9M+07DnhBN/zVjSAmqeqNvT+aV0dcCT4AFO
	0GoKjqUouIYF0EMtKH055FbvNHoBq5VyYGwrL4zY2YBcpVzi8+NZ8qHrZmhsjqd9
	IU6R43R+HStoFkA6LZrBMz83Rlt2IHNwl2nmNF7yc4FUSo1CVQp/4VqnlyzC+PB9
	pCJteYGeF94z2XDj7oqJkhH4YTg3FhMtQXBZXiqCIs0VjsNltddON2bq+J+7aMku
	noGItC6pB2Olq549aZz6HkZMuJ3BAaoYo94z2hA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=rXZyXU
	sSS6llvDJe8wMBB1cr3DI+5yKemRPF5XqmUWc=; b=dxCHb09aweA/Mlf1iVIIQV
	wAxpKriDD93pJ03UNJYpybhX5IgrBJpdOaVvUhdcmu4sRV6VXu/mQfL14seHfK9F
	ep8TI8n40lxSGqhqo7MllYWJFpspNyIj/zpKDljylUMK8+Ra7xLmFZT4zx8gjhqK
	r19nObM7ALKbJ6Wnb7RtE/jS+/zmBvpn7ya2eLOqlvlCTr1LNR8RLh5BZ9RHmYx5
	5E7dLjOTwwoxx7jq1yiwA3qLD6aAEcvUsaWtnSoppHK2+LcWo7Rna2C+pUrwOjMJ
	hmV5Ppun64Yaa3YlIfM02omUJx5uMOPv7sWVad+QCgyPuTYcPGM1POqWVbRa1XzA
	==
X-ME-Sender: <xms:o7_nXGXV95A5s0YG6SxYwDLKRgSkVs78nXbMDH4IjJCVm6HikAWL-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudduiedgvdduucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrg
	hrrghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucev
	lhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:o7_nXM3SS06bh_YalACBAPdvxb7tCsmQd2gNLWu8L0tamH6nMx7SVw>
	<xmx:o7_nXJWb7Y3hGtZVxpaA1Ne3ZdAfkFcIewu0BlGXRS2mGqX8M4y4JQ>
	<xmx:o7_nXE87jqklKQZsT25sXIoy6R9wmJPl1c3zPcdiOSICqN9IGmDLHQ>
	<xmx:pL_nXHSGhjvExO8HobwdC06C2LggjflVzFRLFoF3jyjVU-9lYRAmqg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 3FE6CE00A1; Fri, 24 May 2019 05:55:47 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-550-g29afa21-fmstable-20190520v1
Mime-Version: 1.0
Message-Id: <7e022cfe-3db6-428f-97bc-2bd337bf3d3e@www.fastmail.com>
In-Reply-To: <BN6P197MB00491399D0212199DBD595BBFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
References: <mailman.14370.1558531613.2881.yocto@yoctoproject.org>
	<BN6P197MB004909BFF82584B53EF5DF24FB010@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<d10908a2-a6ac-5011-c629-0cf9de89cce6@gmail.com>
	<BN6P197MB00490F98551A58F58C80FAA7FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<99738dcb-c223-6a19-0f5c-3d8fb0ee31c8@gmail.com>
	<BN6P197MB00494FED4E8CA66ED4885186FB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
	<BN6P197MB00491399D0212199DBD595BBFB020@BN6P197MB0049.NAMP197.PROD.OUTLOOK.COM>
Date: Fri, 24 May 2019 10:55:46 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Tg, Harish" <harish.tg@aptiv.com>,
	"Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: EXT SENDER - yocto Digest, Vol 104, Issue 95
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 May 2019 09:55:49 -0000
Content-Type: text/plain

On Fri, 24 May 2019, at 10:14, Tg, Harish wrote:
> Kindly help me out in locating the source for /usr/bin of rootfs image 
> in yocto. I did a find but I do not see the /usr/bin and its exact 
> contents as in the rootfs image. I need to locate this badly as this 
> would help in adding the commands to the folder which would be finally 
> added to the rootfs image. Your help is highly appreciated. Thanks in 
> advance.
> 

In a Yocto Project build, the rootfs is built from packages and the packages are in turn built from recipes. The supported process for adding new software to the image is to write a recipe which creates a new package, then add the package to IMAGE_INSTALL for an image.

There isn't a location where you can just drop files for them to be included in a rootfs build.

I'd recommend you search online for a tutorial on this, there's plenty of good resources available.

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

