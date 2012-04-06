Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B8BCE0137C
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 02:34:15 -0700 (PDT)
Received: from [192.168.0.2] (host86-134-170-101.range86-134.btcentralplus.com
	[86.134.170.101]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id D715599C2
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 10:34:13 +0100 (BST)
Message-ID: <4F7EB894.3040308@r-finger.com>
Date: Fri, 06 Apr 2012 10:34:12 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: using and auditing kernel config fragments
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Apr 2012 09:34:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

I am trying to add a kernel config fragment to the yocto 2.6.37 kernel
for BeagleBoard, because I need a driver for a rt2800usb dongle.

For some reason which I cannot work out, the rt2800usb options are
removed (rather then disabled) from the yocto kernel config, i.e., if I
run 'bitbake -c menuconfig linux-yocto', there is very little under
Drivers->Net->WLAN. If I run menuconfig in the devshell, there are lots
more WLAN drivers available, including the rt2800.

So, I created custom fragment with the appropriate options, which works
to the extent it gets picked up, but then the options are removed during
the kernel_configme process and end up in the missing_required.cfg, and
there is no information I can find anywhere in the logs as to why this
is the case. Any ideas how to find out what the problem is?

(I am using yocto master)

Tomas

