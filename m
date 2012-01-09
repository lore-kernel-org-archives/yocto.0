Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83AABE0137C
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2012 01:25:43 -0800 (PST)
Received: from [192.168.0.21] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id A6AD725D84;
	Mon,  9 Jan 2012 08:54:40 +0000 (GMT)
Message-ID: <4F0AB266.2050004@communistcode.co.uk>
Date: Mon, 09 Jan 2012 09:24:54 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F05CD5B.3060909@communistcode.co.uk>
	<4F05CF5B.1020808@communistcode.co.uk>
	<C6510F6D410BB64A8C15398EDC6B847C240329F0@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C240329F0@ORSMSX101.amr.corp.intel.com>
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
X-List-Received-Date: Mon, 09 Jan 2012 09:25:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/12 07:28, Zhang, Jessica wrote:
> Jack,
>
> I just tried with latest poky master built out toolchain and remote debug with latest Eclipse plug-in has no problem.  My host is 32bit Ubuntu, but I don't think that makes any difference.  So how up to date is your poky meta data, mine is as of this afternoon  that contains 2 bug fixes that relevant to meta-toolchain build.  Also, seems you're using the build system derived toolchain?  If so, I can give that a try...
>
> Thanks,
> Jessica
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Jack Mitchell
> Sent: Thursday, January 05, 2012 8:27 AM
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Yocto Eclipse Plugin - Python 'undefined symbol'
>
> On 05/01/12 16:18, Jack Mitchell wrote:
>> I encounter this error when trying to launch a debug session in
>> Eclipse. I am using the master branch of poky, and the master branch
>> of eclipse-plugin on an ArchLinux 64 host.
>>
>> Any ideas, it seems as though the Python wasn't built with Unicode
>> support but I can't tell if it is using the bitbake built python or
>> host python...
>>
>> Error creating session
>> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
>> symbol lookup error:
>> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
>> undefined symbol: PyUnicodeUCS4_FromEncodedObject
>> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
>> symbol lookup error:
>> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
>> undefined symbol: PyUnicodeUCS4_FromEncodedObject
>> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
>> symbol lookup error:
>> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/arm-poky-linux-gnueabi-gdb:
>> undefined symbol: PyUnicodeUCS4_FromEncodedObject
>>
>> Cheers,
>> Jack.
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> A cheeky ldd of the binary file gives me:
>
> linux-vdso.so.1 =>   (0x00007fff68dff000)
>       libreadline.so.6 =>
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libreadline.so.6
> (0x00007fb5cf3af000)
>       libncursesw.so.5 =>  /lib/libncursesw.so.5 (0x00007fb5cf152000)
>       libz.so.1 =>
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libz.so.1
> (0x00007fb5cef3b000)
>       libm.so.6 =>  /lib/libm.so.6 (0x00007fb5cec47000)
>       libpthread.so.0 =>  /lib/libpthread.so.0 (0x00007fb5cea2a000)
>       libdl.so.2 =>  /lib/libdl.so.2 (0x00007fb5ce826000)
>       libutil.so.1 =>  /lib/libutil.so.1 (0x00007fb5ce623000)
>       libpython2.7.so.1.0 =>
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libpython2.7.so.1.0
> (0x00007fb5ce248000)
>       libexpat.so.1 =>
> /home/jack/yocto/poky-git/beagleInitial/tmp/sysroots/x86_64-linux/usr/bin/armv5te-poky-linux-gnueabi/../../../usr/lib/libexpat.so.1
> (0x00007fb5ce01e000)
>       libc.so.6 =>  /lib/libc.so.6 (0x00007fb5cdc7b000)
>       /lib/ld-linux-x86-64.so.2 (0x00007fb5cf5f1000)
>
> Which seems to indicate that it is using the bitbake built python?
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Jessica,

Thanks for your reply.

I am using the build system derived toolchain. I am using the latest 
poky.git as of 9:22am GMT 9th Jan. I am using the eclipse-plugin master 
branch. I tried again this morning and encountered the same error.

To run the eclipse plugin I am using the method of adding the source 
code to the eclipse project and then right clicking and running as an 
eclipse program. However I believe the issue is either with my Python, 
or with some other incompatibility in the script.

Best Regards,
Jack.

