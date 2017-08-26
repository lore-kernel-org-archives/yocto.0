Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 888CAE00CB0; Sat, 26 Aug 2017 06:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 552 seconds by postgrey-1.32 at yocto-www;
	Sat, 26 Aug 2017 06:19:17 PDT
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2468EE00B1B
	for <yocto@yoctoproject.org>; Sat, 26 Aug 2017 06:19:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A9460861B2
	for <yocto@yoctoproject.org>; Sat, 26 Aug 2017 13:10:03 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id tVfev_qX5WKJ for <yocto@yoctoproject.org>;
	Sat, 26 Aug 2017 13:09:54 +0000 (UTC)
Received: from [192.168.0.10]
	(cpc111193-live30-2-0-cust656.17-2.cable.virginm.net [92.232.58.145])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 8345C860E9
	for <yocto@yoctoproject.org>; Sat, 26 Aug 2017 13:09:52 +0000 (UTC)
To: Yocto <yocto@yoctoproject.org>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <258ff3cf-5cac-501a-132b-b91c487c4d5b@dynamicdevices.co.uk>
Date: Sat, 26 Aug 2017 14:09:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
Subject: Problems running image in qemu (x86)
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
X-List-Received-Date: Sat, 26 Aug 2017 13:19:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi,

I'm bringing the Mono build up to date in the meta-mono layer and ran
into a problem with my testing.

I generally target QEMU, e.g. qemux86, build a core-image-sato based
Mono test image and run up with 'runqemu qemux86'

It's a remote build system so I am SSH'd in with VNC port forwarding and
I view the QEMU box running with a TightVNC client.

This has worked well for a long time, and still works fine with the
current krogoth branch.

I have just built against master though and am seeing screen corruption.

e.g. https://postimg.org/image/xjcdybdul

Can anybody tell me what's changed?

Thanks,

Alex


