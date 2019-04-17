Return-Path: <pierluigi.greto@bisdn.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F775E00D40; Wed, 17 Apr 2019 08:13:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 426 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Apr 2019 08:13:02 PDT
Received: from mx.bisdn.de (mx.bisdn.de [185.27.182.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 633A6E00CEE
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 08:13:02 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.16.250.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx.bisdn.de (Postfix) with ESMTPSA id 4D6F4A46C7
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2019 17:05:55 +0200 (CEST)
To: yocto@yoctoproject.org
From: Pierluigi Greto <pierluigi.greto@bisdn.de>
Message-ID: <e6fc119b-6216-9dc2-b0d4-8692e081ab29@bisdn.de>
Date: Wed, 17 Apr 2019 17:05:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
Subject: fitImage: hangs at "Starting kernel ..."
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
X-List-Received-Date: Wed, 17 Apr 2019 15:13:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi all,

I'm trying to build an image for an arm platform with uboot. After the 
installation, when the system is starting it hangs at "Starting kernel 
...". In the log I can see that the kernel uncompressed image, the 
ramdisk subimage and  the Flat Device Tree are found. But the kernel 
doesn't start.
Any hints on how to check what it's wrong with the image? For example if 
the kernel is correctly compiled, the FTD is the right one ecc.
The loaded kernel is shown as "uncompressed", there is some way to 
define the compression type in yocto (I have an image that works and the 
kernel is shown as "gzip compressed")? Could the compression type be a 
problem?

Any hint is very welcome.

Thank you,
Pierluigi


