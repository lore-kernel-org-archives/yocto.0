Return-Path: <tbreddin@tpip.net>
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68BEBE013B0
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 04:14:20 -0700 (PDT)
Received: from office.tpip.net (port-87-193-171-186.static.qsc.de
	[87.193.171.186]) by mail.tpip.net (Postfix) with ESMTP id 7B84C4F578
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 11:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=tpip.net; s=k2011;
	t=1374059658; bh=BuEl7DjHnSH7PWFYegdLyi/7Yz+e24DG87w3UeGXbUE=;
	h=Date:From:To:Message-ID:In-Reply-To:Subject:MIME-Version:
	Content-Type:Content-Transfer-Encoding;
	b=SZGXAsb3ZcxehP2HJlOEMG3GlTmB/1m2rriyqHmc+dgA3AJ1dyJeyJoCiJ2vUmRu4
	/Vc0aJu/Oiypiuq2vis/TLS+c7ZHwpcWsiTRVEBJPnY6oreDh2+lGeiLxFRqPW67H4
	tp5wMzWcV3+Jb2S4Hr25L9VcotX1bJH6hZQsxfh0=
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id AFD214BD63
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 13:14:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ESrnsq975dR6 for <yocto@yoctoproject.org>;
	Wed, 17 Jul 2013 13:14:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 563514BD66
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 13:14:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Oip2fCDAq4_M for <yocto@yoctoproject.org>;
	Wed, 17 Jul 2013 13:14:16 +0200 (CEST)
Received: from office.tpip.net (office.tpip.net [192.168.2.9])
	by office.tpip.net (Postfix) with ESMTP id CC7874BD63
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 13:14:16 +0200 (CEST)
Date: Wed, 17 Jul 2013 13:14:16 +0200 (CEST)
From: Tino Breddin <tbreddin@tpip.net>
To: yocto@yoctoproject.org
Message-ID: <2109127027.634544.1374059656770.JavaMail.root@tpip.net>
In-Reply-To: <2018085420.634497.1374059058554.JavaMail.root@tpip.net>
MIME-Version: 1.0
X-Originating-IP: [87.151.70.49]
X-Mailer: Zimbra 8.0.2_GA_5569 (ZimbraWebClient - GC28 (Linux)/8.0.2_GA_5569)
Thread-Topic: Problem with AUTOINC and ipk
Thread-Index: 0OeMyqpRz/udizz+AoPgLhRHG8xLpA==
X-Mailman-Approved-At: Wed, 17 Jul 2013 08:15:00 -0700
Subject: Problem with AUTOINC and ipk
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
X-List-Received-Date: Wed, 17 Jul 2013 11:14:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi there,

We are having problems with using AUTOINC together with the ipk package format. I'm not sure whether this issue applies to rpm and deb as well.

Given the following configuration in a recipe:

SRCREV = "AUTOINC"
PV = "git${SRCPV}"
PR = "r0"

The generated package will have a version like this:

git0+e6d1870200802f32e17e334272191397e15aec53-r0

In case the latest Git revision changes, the new package would have the version:

git0+30249a36b39482a98772c881334ee703715a54cc-r0

My understanding is that the first integer before the + is meant to be incremented monotonically to allow the package manager to figure out that a upgrade is available. Where is the state for this integer kept? Obviously if 2 developers build the package independent from each other it would always be 0 initially. But it will stay 0 for a single developer too if the package is cleaned first. At least that is what we are seeing.

I'd appreciate any feedback on how to handle recipes which should follow the Git HEAD.

Cheers,
Tino

