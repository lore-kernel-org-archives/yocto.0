Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ABB0E0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 08:19:26 -0800 (PST)
Received: from [192.168.0.26] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 127DE257A4
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 15:52:52 +0000 (GMT)
Message-ID: <4F05CD5B.3060909@communistcode.co.uk>
Date: Thu, 05 Jan 2012 16:18:35 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Yocto Eclipse Plugin - Python 'undefined symbol'
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
X-List-Received-Date: Thu, 05 Jan 2012 16:19:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I encounter this error when trying to launch a debug session in Eclipse. 
I am using the master branch of poky, and the master branch of 
eclipse-plugin on an ArchLinux 64 host.

Any ideas, it seems as though the Python wasn't built with Unicode 
support but I can't tell if it is using the bitbake built python or host 
python...

Error creating session
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
symbol lookup error: 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
undefined symbol: PyUnicodeUCS4_FromEncodedObject
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
symbol lookup error: 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
undefined symbol: PyUnicodeUCS4_FromEncodedObject
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
symbol lookup error: 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
undefined symbol: PyUnicodeUCS4_FromEncodedObject

Cheers,
Jack.

