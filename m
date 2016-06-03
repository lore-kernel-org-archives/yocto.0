Return-Path: <dan@emutex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9A1AE00DB3; Fri,  3 Jun 2016 02:41:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2084 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Jun 2016 02:41:24 PDT
Received: from bert.emutex.com (bert.emutex.com [91.103.1.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E7CAE00DAD
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2016 02:41:24 -0700 (PDT)
Received: from [92.51.199.138] (helo=statler.emutex.com)
	by bert.emutex.com with esmtp (Exim 4.84)
	(envelope-from <dan@emutex.com>) id 1b8l3t-0003UB-OH
	for yocto@yoctoproject.org; Fri, 03 Jun 2016 10:06:37 +0100
Received: from [10.10.64.18] by statler.emutex.com with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84)
	(envelope-from <dan@emutex.com>) id 1b8l3v-0001oH-1q
	for yocto@yoctoproject.org; Fri, 03 Jun 2016 10:06:39 +0100
To: yocto@yoctoproject.org
From: Dan O'Donovan <dan@emutex.com>
Message-ID: <5751489D.8000403@emutex.com>
Date: Fri, 3 Jun 2016 10:06:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: rootfs mounted read-only on Live USB (x86-64)
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
X-List-Received-Date: Fri, 03 Jun 2016 09:41:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi all

Has anyone else noticed that the root file-system appears to be mounted read-only when booting a Live USB image from Yocto 2.1.

This is on a sato build from the krogoth branch of poky and meta-intel, for a generic x86-64 machine (4.4 kernel).

I'm transferring the resulting .iso image to a usb stick using 'dd', and then picking the 'boot' option at startup.

As well as a bunch of errors about the read-only filesystem (e.g. failing to create files in /var and other locations), the desktop UI fails to load.

This worked fine with Yocto 2.0.

I have a hunch that it might be caused by a lack of aufs support.  Is it possible that aufs patches were omitted from the x86 kernels in Yocto 2.1?

Thanks,
-Dan

P.S. It works fine if I just install it directly, or if I use the .hddimg, instead of trying to boot the live image from the .iso.

