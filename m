Return-Path: <woailinux@hotmail.com>
Received: from blu0-omc3-s16.blu0.hotmail.com (blu0-omc3-s16.blu0.hotmail.com
	[65.55.116.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CB86E00723
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 21:02:33 -0700 (PDT)
Received: from BLU0-SMTP121 ([65.55.116.72]) by blu0-omc3-s16.blu0.hotmail.com
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 13 Apr 2012 21:02:32 -0700
X-Originating-IP: [114.255.122.12]
X-Originating-Email: [woailinux@hotmail.com]
Message-ID: <BLU0-SMTP1211642316DA9A003041503B9380@phx.gbl>
Received: from [172.21.23.12] ([114.255.122.12]) by BLU0-SMTP121.phx.gbl over
	TLS secured channel with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 13 Apr 2012 21:02:31 -0700
Date: Sat, 14 Apr 2012 12:02:26 +0800
From: jack <woailinux@hotmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-OriginalArrivalTime: 14 Apr 2012 04:02:31.0816 (UTC)
	FILETIME=[6A806880:01CD19F3]
Subject: error: runqemu command not fonund, when "$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3" THx!
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
X-List-Received-Date: Sat, 14 Apr 2012 04:02:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

hi,all! I Use a pre-built image and run it in the QEMU emulator.
I have downloaded and installed 
"poky-eglibc-i686-i586-toolchain-gmae-1.1.1.tar.bz2", then I downloaded 
"bzImage-qemux86.bin"  and  "core-image-lsb-qt3-qemux86.ext3"
but when
"$ runqemu qemux86 bzImage-qemux86.bin core-image-lsb-qt3-qemux86.ext3"
error like below:
error: runqemu command not fonund


