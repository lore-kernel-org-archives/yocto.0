Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFBD8E00C09; Thu,  3 Nov 2016 05:19:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.101 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz26.laposte.net [194.117.213.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8063E00BB0
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 05:19:57 -0700 (PDT)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id C17E5121399
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:19:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail0;
	t=1478175595; bh=Luphg1mCmbIxz/i1/qJbnBkGhkbMxYU1MXvntl+s5fk=;
	h=Date:Subject:To:From;
	b=X9k94RMdIoC/FIzNlq83zWfZXc9ubVlYea48G3HFVQVoq97hqmdNp+JfBg0MY9k1M
	vx5TpzS31pn9rSBZhQph5nC8HmpOICSNSnyIMArAXdBrI7fO7rk4SM9Ux7xVIWAQSj
	kZKHcOW8cPh7A4QDU/ZWNlBWQ1NNJWgQKUbHY+a5TXmPXwX41zLpVk5rKUje+lHh9M
	jqav3MBO8oyTWajrAIp6YcFAQr5tEc4YnCAPR0dAFg8CWyUj1FbAxd6Sohm8qTXp2H
	/lYABwdoF3PWEGYUY+NeBc5nIDU9KIncS2Is/lDWH98bauelyGzLbkNSYI0RPuoX5W
	aQJJBvwt9JeFg==
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout014 (Postfix) with ESMTP id B4BD41216EF
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:19:55 +0100 (CET)
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.prosodie [10.128.63.4])
	by lpn-prd-vrout014 (Postfix) with ESMTP id AFD72121399
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:19:55 +0100 (CET)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 9F37E48DFCD
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:19:55 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [212.234.36.135])
	by lpn-prd-vrin003 (Postfix) with ESMTPA id 73D0448DFCB
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:19:55 +0100 (CET)
Date: Thu, 03 Nov 2016 13:19:55 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yqcpvhydmnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 212.234.36.135
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeelvddrkeejgddvtdcutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgffuffvggfg
X-VR-Cause-3: hffkfgesthejofdttderleenucfhrhhomhepihguvggrlhhsihhmuceoihguvggrlhhsihhmsehlrghp
X-VR-Cause-4: ohhsthgvrdhnvghtqeenucfkphepvdduvddrvdefgedrfeeirddufeehnecurfgrrhgrmhepmhhouggv
X-VR-Cause-5: pehsmhhtphhouhhtpdhhvghlohepphgtqdhmlhhsrdgvtggrfhgrrhhoshdrlhhotggrlhdpihhnvght
X-VR-Cause-6: pedvuddvrddvfeegrdefiedrudefhedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshht
X-VR-Cause-7: vgdrnhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrgh
X-VR-AvState: No
X-VR-State: 0
X-VR-State: 0
Subject: How to add libudev.h
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
X-List-Received-Date: Thu, 03 Nov 2016 12:19:59 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi all, i need to build a lib --> openZwave (on a imx6 card) libudev.h.
I have this error during the build :
/home/root/openzwave-1.4.164/cpp/hidapi/linux/hid.c:44:21: fatal error:  
libudev.h: No such file or directory
I have tried to add udev to my local.conf but this not resolve the problem.
How i can add it to my build please ?

