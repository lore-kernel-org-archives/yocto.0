Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAA9CE0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 08:27:57 -0800 (PST)
Received: from [192.168.0.26] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id ECEFD2579C
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 16:01:22 +0000 (GMT)
Message-ID: <4F05CF5B.1020808@communistcode.co.uk>
Date: Thu, 05 Jan 2012 16:27:07 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F05CD5B.3060909@communistcode.co.uk>
In-Reply-To: <4F05CD5B.3060909@communistcode.co.uk>
Subject: Re: Yocto Eclipse Plugin - Python 'undefined symbol'
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
X-List-Received-Date: Thu, 05 Jan 2012 16:27:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/01/12 16:18, Jack Mitchell wrote:
> I encounter this error when trying to launch a debug session in 
> Eclipse. I am using the master branch of poky, and the master branch 
> of eclipse-plugin on an ArchLinux 64 host.
>
> Any ideas, it seems as though the Python wasn't built with Unicode 
> support but I can't tell if it is using the bitbake built python or 
> host python...
>
> Error creating session
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
> symbol lookup error: 
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
> undefined symbol: PyUnicodeUCS4_FromEncodedObject
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
> symbol lookup error: 
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
> undefined symbol: PyUnicodeUCS4_FromEncodedObject
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
> symbol lookup error: 
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb: 
> undefined symbol: PyUnicodeUCS4_FromEncodedObject
>
> Cheers,
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

A cheeky ldd of the binary file gives me:

linux-vdso.so.1 =>  (0x00007fff68dff000)
     libreadline.so.6 => 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libreadline.so.6 
(0x00007fb5cf3af000)
     libncursesw.so.5 => /lib/libncursesw.so.5 (0x00007fb5cf152000)
     libz.so.1 => 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libz.so.1 
(0x00007fb5cef3b000)
     libm.so.6 => /lib/libm.so.6 (0x00007fb5cec47000)
     libpthread.so.0 => /lib/libpthread.so.0 (0x00007fb5cea2a000)
     libdl.so.2 => /lib/libdl.so.2 (0x00007fb5ce826000)
     libutil.so.1 => /lib/libutil.so.1 (0x00007fb5ce623000)
     libpython2.7.so.1.0 => 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libpython2.7.so.1.0 
(0x00007fb5ce248000)
     libexpat.so.1 => 
/home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libexpat.so.1 
(0x00007fb5ce01e000)
     libc.so.6 => /lib/libc.so.6 (0x00007fb5cdc7b000)
     /lib/ld-linux-x86-64.so.2 (0x00007fb5cf5f1000)

Which seems to indicate that it is using the bitbake built python?


