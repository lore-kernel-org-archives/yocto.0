Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1318E00B1B; Mon, 19 Aug 2019 13:05:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E028BE00B1A
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 13:05:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x7JK5QoC029634
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 19 Aug 2019 13:05:26 -0700 (PDT)
Received: from [128.224.56.214] (128.224.56.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Mon, 19 Aug 2019 13:05:25 -0700
To: <jaymin.dabhi@vivaldi.net>
References: <279ea8172bf6d37d284e8d5cb4efb077@vivaldi.net>
	<1997fc5b-2e25-c56a-c423-dd2c62404971@windriver.com>
	<be9ad8cf60e0401975f8b35bd22944de@vivaldi.net>
	<581b32aa-8d6e-d6f6-71fe-a71f55354b33@windriver.com>
	<b59c4408e9bcc0d3d0f9ece1aeda6cd5@vivaldi.net>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <9fe01664-3d35-7b62-4519-2e78f8ba8673@windriver.com>
Date: Mon, 19 Aug 2019 16:05:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <b59c4408e9bcc0d3d0f9ece1aeda6cd5@vivaldi.net>
X-Originating-IP: [128.224.56.214]
Cc: yocto@yoctoproject.org
Subject: Re: Segmentation fault | bitbake machine-image.bb | core dumped
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
X-List-Received-Date: Mon, 19 Aug 2019 20:05:34 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 8/19/19 12:33 AM, jaymin.dabhi@vivaldi.net wrote:
> Hi Randy,
> 
> Thanks for info.
> But, as you can see from previous logs, I was getting core dumped issue 
> at the time of bitbake (while building the image).
> How can I find the cause of this type of core dumped?

Hi Jaymin,

While I'd like to help you with each step, I'm usually not going
to do that (unless you become a Wind River customer. :) )


To save us and anyone who might be reading this thread some time,
it looks like the program you are having trouble with is from a
meta-android layer or elsewhere. On ubuntu it's packaged in
android-sdk-ext4-utils:
    $ make_ext4fs

    Command 'make_ext4fs' not found, but can be installed with:

    sudo apt install android-sdk-ext4-utils  # version 8.1.0+r23-2, or
    sudo apt install android-tools-fsutils   # version 5.1.1.r38-1.1

Please read the rest of this email and let us know if you added
that layer into your conf/bblayers.conf file for reference.


Good luck,
../Randy


So, I wanted to confirm that bitbake wasn't preventing the
core file from being generated, so I used a private machine running
ubuntu-19.04 and replaced the gcc executable with my own program
as shown below. Since you already have an error happening,
you don't have to do this.


Here's my simple program in /tmp/hw.c

#include <stdio.h>
#include <stdlib.h>

void  do_segv() {
   int *psplat = 0;
   int x = -1;
   x = *psplat;
}


int main(int c, char *v[]) {
   printf("Hello world\n");
   do_segv();

   exit(0);
}

Compile it:
gcc -g -o /tmp/hw /tmp/hw.c

Now set the kernel's core_pattern as explained in:
http://www.linuxhowtos.org/Tips%20and%20Tricks/coredump.htm

$ sudo su -
First save the old pattern:
# cat /proc/sys/kernel/core_pattern  > /root/old-core-pattern
# echo "core.%e.%p" > /proc/sys/kernel/core_pattern
# exit

Under your own user id:
$ ulimit -c unlimited

$ Test that we can generate a core dump outside of bitbake:
$ /tmp/hw
Hello world
Segmentation fault (core dumped)
$ file core.hw.20982
core.hw.20982: ELF 64-bit LSB core file, x86-64, version 1 (SYSV), 
SVR4-style, from '/tmp/hw', real uid: ..., execfn: '/tmp/hw', platform: 
'x86_64'

$ gdb /tmp/hw core.hw*
...
<snip startup text>
...
Reading symbols from /tmp/hw...
[New LWP 20982]
Core was generated by `/tmp/hw'.
Program terminated with signal SIGSEGV, Segmentation fault.
#0  0x000055af3c18617a in do_segv () at /tmp/hw.c:12
12	  x = *psplat;
(gdb) bt
#0  0x000055af3c18617a in do_segv () at /tmp/hw.c:12
#1  0x000055af3c1861a7 in main (c=1, v=0x7ffc801bfc38) at /tmp/hw.c:20
(gdb)



So, now I want to use this as a test to confirm that I can generate
a core file when running bitbake to simulate your problem. In your
case, everything is setup so that you should be able to start debugging 
'make_ext4fs' but running bitbake, getting a core file, then running:
$ gdb make_ext4fs /path/to/core.pattern


I know that the OS doesn't depend on having a functioning compiler all
the time so I'm going to *save*, then over-write the compiler. You call
'gcc' to compile a program but it's actually a series of links on my
Ubuntu distro:

$ ls -l /usr/bin/gcc
lrwxrwxrwx 1 root root 5 Apr  4 00:23 /usr/bin/gcc -> gcc-8
$ ls -l /usr/bin/gcc-8
lrwxrwxrwx 1 root root 22 Apr  6 11:04 /usr/bin/gcc-8 -> 
x86_64-linux-gnu-gcc-8
$ ls -l /usr/bin/x86_64-linux-gnu-gcc-8
-rwxr-xr-x 1 root root 19336 Aug 19 14:53 /usr/bin/x86_64-linux-gnu-gcc-8


Copy the simple test program over the compiler executable BUT ...

SAVE IT FIRST!!!


# WARNING: only do this on a system that other people are not using:
$ sudo mv /usr/bin/x86_64-linux-gnu-gcc-8 \
           /usr/bin/x86_64-linux-gnu-gcc-8.orig
$ sudo cp /tmp/hw /usr/bin/x86_64-linux-gnu-gcc-8

Now, I know that m4-native is one of the first programs that use gcc
so I can run:
$ bitbake -c configure m4-native

...


| checking whether the C compiler works... no
| configure: error: in 
`/home/rmacleod/tmp/yp/b/test-ulimit/tmp-glibc/work/x86_64-linux/m4-native/1.4.18-r0/build':
| configure: error: C compiler cannot create executables
| See `config.log' for more details
| WARNING: exit code 1 from a shell command.
|
ERROR: Task 
(/home/rmacleod/tmp/yp/oe-core.git/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_configure) 
failed with exit code '1'
NOTE: Tasks Summary: Attempted 29 tasks of which 28 didn't need to be 
rerun and 1 failed.

Summary: 1 task failed:
 
/home/rmacleod/tmp/yp/oe-core.git/meta/recipes-devtools/m4/m4-native_1.4.18.bb:do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

$ find * -name "core*"
tmp-glibc/work/x86_64-linux/m4-native/1.4.18-r0/build/core.gcc.21823
...
tmp-glibc/work/x86_64-linux/m4-native/1.4.18-r0/build/core.gcc.21808


So core files are being generated.

Now to restore the distro:
$ sudo su -
# rm /usr/bin/x86_64-linux-gnu-gcc-8
# mv /usr/bin/x86_64-linux-gnu-gcc-8.orig /usr/bin/x86_64-linux-gnu-gcc-8

# cat /root/old-core-pattern
|/usr/share/apport/apport %p %s %c %d %P
# echo "| /usr/share/apport/apport %p %s %c %d %P" > 
/proc/sys/kernel/core_pattern

# rm /root/old-core-pattern
# exit


Other useful info:
Core file generation:
https://stackoverflow.com/questions/2065912/core-dumped-but-core-file-is-not-in-the-current-directory


I hope that helps.

If you can reproduce the issue on a supported YP branch
, then you should
open a defect in:
   https://bugzilla.yoctoproject.org/
with the exact steps you use to assemble you layers, and build a 
project. If the bug is not in oe-core or bitbake, then you should
consult the toplevel README for whatever layer is involved and follow-up
in that way.

If you'd like additional support for the older release, consultants
are available to hire:
    https://www.yoctoproject.org/community/consultants/
and certain YP members (such as Wind River) provide YP-based
Linux distros that are supported for years and years. See:
   https://www.yoctoproject.org/ecosystem/members/

../Randy

> 
> 
> On 16-08-2019 07:11 PM, Randy MacLeod wrote:
>> On 8/16/19 12:40 AM, jaymin.dabhi@vivaldi.net wrote:
>>> Hi Randy,
>>>
>>> Thanks for your information regarding Yocto Jethro branch.
>>>
>>> Yes, this core dumped issue is reproducible.
>>> When I add python3-pip package in local.conf file and build complete 
>>> image, this core dumped is happening.
>>>
>>> Randy, it would be much helpful if you explain me how to adjust core 
>>> file limits using ulimit, and how get the backtrace?
>>
>> Via google:
>> https://jvns.ca/blog/2018/04/28/debugging-a-segfault-on-linux/
>>
>> ../Randy
>>
>>>
>>> I have added python3-pip package in local.conf file, this is the one 
>>> change only I did in local.conf.
>>> Yes, I am able to generate the image successfully after reverting 
>>> this one change.
>>>
>>> Please let me know if more information require.
>>>
>>> On 15-08-2019 07:30 AM, Randy MacLeod wrote:
>>>> On 8/12/19 10:42 AM, jaymin.dabhi@vivaldi.net wrote:
>>>>> Hello All,
>>>>>
>>>>> Facing segmentation fault (core dumped) while doing bitbake.
>>>>> I am using Yocto Jethro branch.
>>>>
>>>> Jethro isn't officially supported by the Yocto Project.
>>>> The support cycle is ~ 1 year.
>>>>
>>>> https://wiki.yoctoproject.org/wiki/Releases
>>>>
>>>> Can you reproduce the issue on master or a newer supported branch?
>>>> If so you could file a bug in:
>>>>    https://wiki.yoctoproject.org/wiki/Releases
>>>>
>>>> Also, see below for some tips.
>>>>
>>>>>
>>>>> When I added python3-pip recipe (in local.conf) and started 
>>>>> building image, segmentation fault occurred.
>>>>> Although, I am able to bitbake python3-pip individually (i.e. 
>>>>> bitbake python3-pip).
>>>>> As per log my assumption is, core dumped is occurring at 
>>>>> make_ext4fs execution.
>>>>>
>>>>> Following are the error logs:
>>>>>
>>>>> ERROR: Function failed: do_makesystem (log file is located at 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059) 
>>>>> ERROR: Logfile of failure stored in: 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059 
>>>>> Log data follows:
>>>>> | DEBUG: Executing shell function do_makesystem
>>>>> | 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059: 
>>>>> line 105: 15073 Segmentation fault      (core dumped) make_ext4fs 
>>>>> -J -b 1024 -s -a / -S
>>>>
>>>> Odd, I've never see that happen before.
>>>> Is it reproducible?
>>>>
>>>> Can you adjust the core file limits using 'ulimit',
>>>> generate a core file and get a backtrace?
>>>>
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
>>>>> -l 768000000 
>>>>> poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
>>>>> | WARNING: 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/run.do_makesystem.15059:1 
>>>>> exit 139 from
>>>>> |   make_ext4fs -J -b 1024 -s -a / -S 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs/etc/selinux/mls/contexts/files/file_contexts 
>>>>> -l 768000000 
>>>>> poky/build/tmp-glibc/deploy/images/apq8053-perf/apq8053-sysfs.ext4 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/rootfs
>>>>> | ERROR: Function failed: do_makesystem (log file is located at 
>>>>> poky/build/tmp-glibc/work/apq8053-oe-linux/machine-image/1.0-r0/temp/log.do_makesystem.15059) 
>>>>> ERROR: Task 11 ( 
>>>>> poky/meta-qti-bsp/recipes-products/images/machine-image.bb, 
>>>>> do_makesystem) failed with exit code '1'
>>>>>
>>>>>
>>>>> Whether python3-pip recipe is creating an issue or something else? 
>>>>> (attached the python3-pip recipe file)
>>>>
>>>> What did you change in your conf/local.conf file?
>>>> If you revert that change, then you are able to generate the image
>>>> again?
>>>>
>>>> ../Randy
>>>>
>>>>> Please let me know.
>>>>> Any suggestions are welcome.
>>>>>
>>>>> Regards,
>>>>> Jaymin
>>>>>
>>>>
>>>>
>>>> -- # Randy MacLeod
>>>> # Wind River Linux
>>
>>
>> -- 
>> # Randy MacLeod
>> # Wind River Linux


-- 
# Randy MacLeod
# Wind River Linux

