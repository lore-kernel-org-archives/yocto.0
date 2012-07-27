Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38D3DE00282
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 07:13:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6REDOft013092
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 Jul 2012 07:13:24 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 27 Jul 2012 07:13:24 -0700
Message-ID: <5012A1EF.80806@windriver.com>
Date: Fri, 27 Jul 2012 10:13:03 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C490032EE8F0@FMSMSX151.amr.corp.intel.com>
	<50119037.4000406@windriver.com>
	<63ECFF2A2302B44093D7CE9E9962C490032EE91A@FMSMSX151.amr.corp.intel.com>
	<50119578.9050702@windriver.com>
	<63ECFF2A2302B44093D7CE9E9962C490032EE9AE@FMSMSX151.amr.corp.intel.com>
	<CADkTA4PMC9XjM3zznmcOn72QKj2HTwnZ0tJ6UNqdt-=M=3bzZg@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C490032EEA2C@FMSMSX151.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C490032EEA2C@FMSMSX151.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3)
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
X-List-Received-Date: Fri, 27 Jul 2012 14:13:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-27 12:51 AM, Saxena, Rahul wrote:
>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Thursday, July 26, 2012 6:53 PM
> To: Saxena, Rahul
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62 to 3)
>
> On Thu, Jul 26, 2012 at 6:48 PM, Saxena, Rahul<rahul.saxena@intel.com>  wrote:
>> Hi Bruce,
>>
>> I think you are right. I do get following warning message:
>>
>> WARNING: Looked at meta/cfg/standard/rangeley/hdw_frags.txt and
>> meta/cfg/standard/Rangeley/required_frags.txt in
>> Directory: meta/cfg/standard.rangeley
>>
>> However I do find my kernel configuration .cfg and .scc files to be
>> pulled into the build area in tmp/work/rangeley-poky-linux/
>> linux-yocto-3.4.4+git2+cxxx.../linux/meta/cfg/kernel-cache/bsp/rangley
>> dir
>>
>> Hence I am not sure why exactly is the above WARNING occurring..
>
> It may not be finding the new BSP definition, and an automatic one was generated, which means you built a defconfig .. which was 32 bit.
>
> If you cat linux-yocto-3.4.4+git2+cxxx.../linux/meta/top_tgt .. what do you see ?
>
> Bruce
>
> top_tgt has following:
>
> meta/cfg/scratch/obj/rangeley-standard.scc

And if it is found in scratch/obj, that does mean that the system generated
that on your behalf.

If this is a new BSP, have you already defined your own board 
description (rangeley-standard.scc) with the matching KMACHINE,
KARCH, KTYPE as you are trying to build ?

Cheers,

Bruce

>
>
> Rahul
>
>>
>>   I am using the master branch.
>>
>> Rahul
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Thursday, July 26, 2012 12:08 PM
>> To: Saxena, Rahul
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62
>> to 3)
>>
>> On 12-07-26 02:58 PM, Saxena, Rahul wrote:
>>> Hmm OK..but not sure what I did wrong.
>>>
>>> I  just started a new BSP (meta-rangley) by copying over
>>> meta-sugarbay (this is a 64-bit bsp) to new layer meta-rangley, renamed all files and variables etc from "sugarbay" to "rangley".
>>> Created  new machine standard/common-pc-64 branch in my local clone  of linux-yocto-3.4 and also new meta branch in it.
>>>
>>> In short I have just copied over all sugarbay stuff to start a new rangley bsp without making any real changes yet.
>>> So it seems surprising to get this error message.
>>
>> If something was dropped from your kernel config when you were working on the BSP, it may have build a default 32 bit, and that could cause the QA error.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>
>>> Rahul
>>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Thursday, July 26, 2012 11:45 AM
>>> To: Saxena, Rahul
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62
>>> to 3)
>>>
>>> On 12-07-26 02:37 PM, Saxena, Rahul wrote:
>>>> I get the following error:
>>>>
>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on
>>>> /work/rangeley-poky-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29f
>>>> 1
>>>> 4
>>>> 83ff4e5a2034dc8edd5_1+6297e4c1d57e1063bfce297c2e12392348598559-r4.0/
>>>> p a ckages-split/kernel-vmlinux/boot/vmlinux-3.4.4-yocto-standard
>>>>
>>>> What does it mean ?
>>>
>>> You've ended up with a mix of 64 bit and 32 bit objects in a build.
>>> So you've got a 64 bit kernel in a 32 bit userspace, or vise versa.
>>>
>>> Only the x32 kernel has an exception in the QA checker for this.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> I have copied the failure logfile below:
>>>>
>>>> DEBUG: Executing python function sstate_task_prefunc
>>>> DEBUG: Python function sstate_task_prefunc finished
>>>> DEBUG: Executing python function do_package
>>>> DEBUG: Executing python function package_get_auto_pr
>>>> DEBUG: Python function package_get_auto_pr finished
>>>> DEBUG: Executing python function perform_packagecopy
>>>> DEBUG: Python function perform_packagecopy finished
>>>> DEBUG: Executing python function package_do_split_locales
>>>> DEBUG: No locale files in this package
>>>> DEBUG: Python function package_do_split_locales finished
>>>> DEBUG: Executing python function split_and_strip_files
>>>> DEBUG: Python function split_and_strip_files finished
>>>> DEBUG: Executing python function fixup_perms
>>>> DEBUG: Python function fixup_perms finished
>>>> DEBUG: Executing python function populate_packages
>>>> ERROR: could not open directory
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/work/rangeley-poky-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+6297e4c1d57e1063bfce297c2e12392348598559-r4.0/package/lib/modules/3.4.4-yocto-standard:
>>>> No such file or directory
>>>> FATAL: could not search modules: No such file or directory
>>>> DEBUG: Executing python function package_name_hook
>>>> DEBUG: Executing python function debian_package_name_hook
>>>> DEBUG: LIBNAMES: pkg kernel-vmlinux libs 0 bins 0 sonames []
>>>> DEBUG: LIBNAMES: pkg kernel-modules libs 0 bins 0 sonames []
>>>> DEBUG: LIBNAMES: pkg kernel-image libs 0 bins 0 sonames []
>>>> DEBUG: LIBNAMES: pkg kernel-dev libs 1 bins 1 sonames []
>>>> DEBUG: LIBNAMES: pkg kernel-base libs 0 bins 0 sonames []
>>>> DEBUG: LIBNAMES: pkg kernel libs 0 bins 0 sonames []
>>>> DEBUG: Python function debian_package_name_hook finished
>>>> DEBUG: Python function package_name_hook finished
>>>> DEBUG: kernel-dev contains dangling link /usr/src/kernel/vmlinux
>>>> NOTE: kernel-dev contains dangling symlink to
>>>> /usr/src/kernel/vmlinux
>>>> DEBUG: Python function populate_packages finished
>>>> DEBUG: Executing python function package_do_filedeps
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/rpm/pythoneggs.py:
>>>> No such file or directory
>>>> DEBUG: Python function package_do_filedeps finished
>>>> DEBUG: Executing python function package_do_shlibs
>>>> DEBUG: calculating shlib provides for kernel
>>>> DEBUG: calculating shlib provides for kernel-base
>>>> DEBUG: calculating shlib provides for kernel-vmlinux
>>>> DEBUG: calculating shlib provides for kernel-image
>>>> DEBUG: calculating shlib provides for kernel-dev
>>>> DEBUG: calculating shlib provides for kernel-modules
>>>> DEBUG: calculating shlib requirements for kernel
>>>> DEBUG: calculating shlib requirements for kernel-base
>>>> DEBUG: calculating shlib requirements for kernel-vmlinux
>>>> DEBUG: calculating shlib requirements for kernel-image
>>>> DEBUG: calculating shlib requirements for kernel-dev
>>>> DEBUG: calculating shlib requirements for kernel-modules
>>>> DEBUG: Python function package_do_shlibs finished
>>>> DEBUG: Executing python function package_do_pkgconfig
>>>> DEBUG: Python function package_do_pkgconfig finished
>>>> DEBUG: Executing python function read_shlibdeps
>>>> DEBUG: Python function read_shlibdeps finished
>>>> DEBUG: Executing python function package_depchains
>>>> DEBUG: Python function package_depchains finished
>>>> DEBUG: Executing python function emit_pkgdata
>>>> DEBUG: Python function emit_pkgdata finished
>>>> DEBUG: Executing python function do_package_qa
>>>> NOTE: DO PACKAGE QA
>>>> NOTE: Checking Package: kernel
>>>> NOTE: Checking Package: kernel-base
>>>> NOTE: Checking Package: kernel-vmlinux
>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on
>>>> /work/rangeley-poky-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29f
>>>> 1
>>>> 4
>>>> 83ff4e5a2034dc8edd5_1+6297e4c1d57e1063bfce297c2e12392348598559-r4.0/
>>>> p a ckages-split/kernel-vmlinux/boot/vmlinux-3.4.4-yocto-standard
>>>> NOTE: Checking Package: kernel-image
>>>> NOTE: Checking Package: kernel-dev
>>>> NOTE: Checking Package: kernel-modules
>>>> ERROR: QA run found fatal errors. Please consider fixing them.
>>>> DEBUG: Python function do_package_qa finished
>>>> DEBUG: Python function do_package finished
>>>> ERROR: Function failed: do_package_qa
>>>>
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


