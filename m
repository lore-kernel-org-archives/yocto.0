Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF3F2E00863; Mon, 20 Oct 2014 07:55:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D06FE00846
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 07:54:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 22F5527E099
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 14:54:58 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id wXf6Xmcv54B7 for <yocto@yoctoproject.org>;
	Mon, 20 Oct 2014 14:54:56 +0000 (UTC)
Received: from [192.168.1.19] (AMarseille-651-1-95-183.w109-208.abo.wanadoo.fr
	[109.208.62.183])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CDE1727E084
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 14:54:56 +0000 (UTC)
Message-ID: <5445223D.3020709@dynamicdevices.co.uk>
Date: Mon, 20 Oct 2014 16:54:53 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: [meta-mono] Mono updated to 3.10.0
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
X-List-Received-Date: Mon, 20 Oct 2014 14:55:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


I've updated support for Mono build in meta-mono master to 3.10.0 (the
current release).

I've performed basic build testing on an qemux86 build of
core-image-mono, based on core-image-sato, running a "Hello World"
console application and a "Hello World" Windows Forms application.

There has been feedback that issues with armhf support are addressed in
3.10.0 but I have not yet had time to investigate.

ref: https://bugzilla.xamarin.com/show_bug.cgi?id=20239

All feedback on testing and/or issues appreciated.

Regards,

Alex


