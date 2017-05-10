Return-Path: <SRS0=I8GSMr=4Q=glidemtech.com=jaymind@eigbox.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12DA3E00B45; Wed, 10 May 2017 03:44:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.7 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [66.96.187.4 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4442]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1820 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 May 2017 03:44:09 PDT
Received: from bosmailout04.eigbox.net (bosmailout04.eigbox.net [66.96.187.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB54EE00B3D
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 03:44:09 -0700 (PDT)
Received: from bosmailscan02.eigbox.net ([10.20.15.2])
	by bosmailout04.eigbox.net with esmtp (Exim) id 1d8Ocs-00049S-TT
	for yocto@yoctoproject.org; Wed, 10 May 2017 06:13:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=glidemtech.com; s=dkim;
	h=Sender:Content-Transfer-Encoding:Content-Type:
	MIME-Version:To:From:Subject:Date:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nP1jIW/xwWni1GEf4ZGB1G1+6UKIdliLyulXFh6eq/8=;
	b=Zam6E/Xxq2fniuiMhDXxPoxwOn
	uCHUvaL18L1y90Xh0mx0HsKlHQ/Mk/PPQgM+0yDuEfgAvtWJOTXEXAKAwv4rVyCF6+OtQ6dGS1Pha
	6FgdcN4U+LCk3l1wT17wTUE7et59ZEpkanTN9lG/RwdoPMtoYoz9NVnD6NSJwxdIY/mqrXZcaPj9V
	rai15v5eRzMfB36L598DzAOKlHsf5QLu9ddewMw08M3axGlrYZ1XuAGK0TkvmLTVnWiK/P1qkZUWd
	jLmy+eruvTy2rCE7AWLvhBJHkN8i4sTJDOed6lVZbfc2ZuUL9pzwT3zuAmR4iOhJS+iGPGASai4vZ
	qPyDFiaA==;
Received: from [10.115.3.32] (helo=bosimpout12)
	by bosmailscan02.eigbox.net with esmtp (Exim) id 1d8Ocq-0006ib-OE
	for yocto@yoctoproject.org; Wed, 10 May 2017 06:13:44 -0400
Received: from boswebmail22.eigbox.net ([10.20.16.22]) by bosimpout12 with 
	id JaDf1v0010UZg7e01aDkQj; Wed, 10 May 2017 06:13:44 -0400
X-Authority-Analysis: v=2.2 cv=U6ziNaju c=1 sm=1 tr=0
	a=/gk9IMqOVko+14773W679Q==:117 a=60MO79bJCu5TkALfye7ouQ==:17
	a=8nJEP1OIZ-IA:10 a=tJ8p9aeEuA8A:10 a=yAY1xbLwAAAA:8
	a=uU67mdB0t752Uw7oiNsA:9
	a=wPNLvfGTeEIA:10 a=yk87ph-orFVm32uD_yCq:22
Received: from [127.0.0.1] (helo=emailmg.ipower.com)
	by boswebmail22.eigbox.net with esmtp (Exim) id 1d8Ock-0000cz-Qu
	for yocto@yoctoproject.org; Wed, 10 May 2017 06:13:38 -0400
Received: from 103.204.192.202
	(SquirrelMail authenticated user jaymind@glidemtech.com)
	by emailmg.ipower.com with HTTP; Wed, 10 May 2017 15:43:38 +0530
Message-ID: <1e39ba0e26232aa4f6788139982da3a5.squirrel@emailmg.ipower.com>
Date: Wed, 10 May 2017 15:43:38 +0530
From: "JAYMIN DABHI" <jaymind@glidemtech.com>
To: yocto@yoctoproject.org
User-Agent: SquirrelMail/1.4.19
MIME-Version: 1.0
X-Priority: 1 (Highest)
Importance: High
Sender: "JAYMIN DABHI" <jaymind@glidemtech.com>
Subject: How to integrate mender to Yocto Jethro (4.1.15-1.2.0) for Pico i.MX6UL Hobbit Board?
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
X-List-Received-Date: Wed, 10 May 2017 10:44:15 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

Hi All,

Want to integrate mender with existing Yocto build. My Yocto repo branch
is Jethro 4.1.15 and poky branch is morty.

Current machine environment detail is as below:

Development board - Pico i.MX6UL Hobbit TechNexion Board.
DISTRO Version  = 4.1.15-1.2.0
DISTRO Name = 'fsl-imx-fb'

Bitbake for - core-image-base

What would be the process or steps for integrating mender (meta-mender
layer) in existing Yocto repo for custom board?

Followed this link :
https://docs.mender.io/1.0/Artifacts/Building-Mender-Yocto-image, but it
was unsuccessful.

Any suggestions.

Thanks,
-- 
JAYMIN


