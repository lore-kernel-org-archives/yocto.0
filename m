Return-Path: <lukas.gorris@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04EB6E01596
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 14:19:14 -0800 (PST)
Received: by mail-bk0-f47.google.com with SMTP id mx10so1365416bkb.34
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 14:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=KOy7l3LNWplj0+YbVbPNnbyb6njxfiPTmAfBhcH6Tps=;
	b=k+s2AKX5BAI2tFM0AJZvP2uB4rb/0Y+C02VWrVkkkUBz4wW4i2TY/V8K++laorHqdn
	q04YzeYsTc0dtHMevmV758bpllyGYcT4ab9pC6QoTXyb33HQWe28qDRuRd1iGvn2Qnz4
	gXsk7dkHJL42ZoSRvKMrdWQqBz7iWM4mH32nUPKHeKZu2xBnZ5wmdwj4aLcmGOZoPdPP
	SDOen5R82WMkM4UmNZqAzATCtkQqumX7YW03v9t7c7gY1hgNKKDyuZjpH6x/NEhvb2HQ
	ZXNpyg2gmJ0YmyQiAzz0ESJ/VxAYjHV3g8l0XnVs1vmDJQEhdxe/1+Q+KbxpxwQzzHYL
	SL1A==
X-Received: by 10.204.127.135 with SMTP id g7mr883377bks.42.1384467552196;
	Thu, 14 Nov 2013 14:19:12 -0800 (PST)
Received: from [10.11.215.228] (nat-gw6.rrze.uni-erlangen.de. [192.44.85.28])
	by mx.google.com with ESMTPSA id
	qg7sm4940870bkb.6.2013.11.14.14.19.10 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 14 Nov 2013 14:19:11 -0800 (PST)
Message-ID: <52854C5F.1070906@gmail.com>
Date: Thu, 14 Nov 2013 23:19:11 +0100
From: Lukas-David Gorris <lukas.gorris@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 14 Nov 2013 15:34:07 -0800
Subject: raspberrypi not booting in dylan
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
X-List-Received-Date: Thu, 14 Nov 2013 22:19:17 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

"rpi-basic-image" for MACHINE="raspberrypi" from metadata revision 1.4 
"dylan" with added layer "meta-raspberrypi" does not boot on my 512MB 
raspberrypi with hynix memory. The green ACT led will light up only 
briefly after power up. There is no activity on the serial console, HDMI 
nor usb.
With the exact hardware configuration, I can boot a "raspbian" image 
just fine ( 
http://downloads.raspberrypi.org/images/raspbian/2013-02-09-wheezy-raspbian/2013-02-09-wheezy-raspbian.zip 
).


Tested working fix:

Flash the yocto image to SD and on the generated fat partition, replace

bootcode.bin
cmdline.txt
config.txt
*.elf

with the same files copied from the fat partition of the above raspbian 
image. That will generate a yocto SD card that will boot up fine and 
super fast to login.

According to the following post, this is due to a change of memory 
modules (now hynix) used in more recent raspberrypi revisions. I have 
512MB hynix memory (http://www.raspberrypi.org/archives/3534).

It might be concluded that the bootloader in the yocto dylan metadata is 
outdated and that an update could add compatibility with current 
raspberrypi hardware.

Please let me know if I can assist testing any patches or workarounds.

Best,

Lukas

