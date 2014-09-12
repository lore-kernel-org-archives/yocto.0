Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0957E007DD; Fri, 12 Sep 2014 04:25:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64276E00790
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 04:25:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id C3E2727E085
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 11:25:16 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id hWILmVUJHJwG for <yocto@yoctoproject.org>;
	Fri, 12 Sep 2014 11:25:16 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id F105B27E06B
	for <yocto@yoctoproject.org>; Fri, 12 Sep 2014 11:25:15 +0000 (UTC)
Message-ID: <5412D81C.7060204@dynamicdevices.co.uk>
Date: Fri, 12 Sep 2014 12:25:16 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: [meta-mono] Mono updated to 3.8.0
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
X-List-Received-Date: Fri, 12 Sep 2014 11:25:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I've updated support for Mono build in meta-mono master from 3.4.0 to
3.8.0 (the current release).

I've performed basic build testing on an x64 host targetting an i.MX6
platform and succesfully run up a commercial application which makes use
of console / X.

If anybody has the time and inclination to perform build and smoke
testing all feedback would be appreciated and incorporated into the READM=
E.

Note that there is a still an outstanding issue with Mono not working
correctly with ARM hardfp targets.

ref: https://bugzilla.xamarin.com/show_bug.cgi?id=3D20239

I have been unable to determine why this is to date. If anybody is
interested in working with me to track down the issue please contact me
directly.

Cheers,

Alex



