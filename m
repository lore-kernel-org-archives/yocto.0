Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C60AE0090F; Thu, 15 Jan 2015 05:52:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 432 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Jan 2015 05:51:58 PST
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92C90E00906
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 05:51:58 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 5996227E140
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 13:44:45 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id cimJp47O_pmR for <yocto@yoctoproject.org>;
	Thu, 15 Jan 2015 13:44:44 +0000 (UTC)
Received: from [192.168.1.39] (AMarseille-651-1-181-130.w92-153.abo.wanadoo.fr
	[92.153.76.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 9395D27E135
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 13:44:44 +0000 (UTC)
Message-ID: <54B7C407.5050201@dynamicdevices.co.uk>
Date: Thu, 15 Jan 2015 14:43:35 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Yocto <yocto@yoctoproject.org>
Subject: [meta-mono] Mono updated to 3.12.0
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
X-List-Received-Date: Thu, 15 Jan 2015 13:52:08 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


I've updated support for Mono build in meta-mono master to 3.12.0 (the
current release).

I've performed basic build testing on an qemux86 build of
core-image-mono, based on core-image-sato, running a "Hello World"
console application and a "Hello World" Windows Forms application.

There has been feedback that issues with armhf support are addressed in
3.10.0/3.12.0 but I have not yet had time to investigate.

ref: https://bugzilla.xamarin.com/show_bug.cgi?id=20239

All feedback on testing and/or issues appreciated.

Regards,

Alex



