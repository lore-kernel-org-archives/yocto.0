Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B30E5E002AA
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 17:22:45 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 27 Jul 2012 17:22:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127775187"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Jul 2012 17:22:44 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 27 Jul 2012 17:22:44 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.113]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.187]) with mapi id
	14.01.0355.002; Fri, 27 Jul 2012 17:22:43 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] ERROR: QA Issue: Architecture did not match (62 to 3)
Thread-Index: AQHNa17h2u/xezPCBkuBvGQtbIQdiZc75yYAgAB7SgD//8Y94IAAqueA//+8EkCAARLTgIAANDqg
Date: Sat, 28 Jul 2012 00:22:43 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C490032F44E5@ORSMSX103.amr.corp.intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C490032EE8F0@FMSMSX151.amr.corp.intel.com>
	<50119037.4000406@windriver.com>
	<63ECFF2A2302B44093D7CE9E9962C490032EE91A@FMSMSX151.amr.corp.intel.com>
	<50119578.9050702@windriver.com>
	<63ECFF2A2302B44093D7CE9E9962C490032EE9AE@FMSMSX151.amr.corp.intel.com>
	<CADkTA4PMC9XjM3zznmcOn72QKj2HTwnZ0tJ6UNqdt-=M=3bzZg@mail.gmail.com>
	<63ECFF2A2302B44093D7CE9E9962C490032EEA2C@FMSMSX151.amr.corp.intel.com>
	<5012A1EF.80806@windriver.com>
In-Reply-To: <5012A1EF.80806@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
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
X-List-Received-Date: Sat, 28 Jul 2012 00:22:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Friday, July 27, 2012 7:13 AM
To: Saxena, Rahul
Cc: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62 to 3)

On 12-07-27 12:51 AM, Saxena, Rahul wrote:
>
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@gmail.com]
> Sent: Thursday, July 26, 2012 6:53 PM
> To: Saxena, Rahul
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62=20
> to 3)
>
> On Thu, Jul 26, 2012 at 6:48 PM, Saxena, Rahul<rahul.saxena@intel.com>  w=
rote:
>> Hi Bruce,
>>
>> I think you are right. I do get following warning message:
>>
>> WARNING: Looked at meta/cfg/standard/rangeley/hdw_frags.txt and=20
>> meta/cfg/standard/Rangeley/required_frags.txt in
>> Directory: meta/cfg/standard.rangeley
>>
>> However I do find my kernel configuration .cfg and .scc files to be=20
>> pulled into the build area in tmp/work/rangeley-poky-linux/=20
>> linux-yocto-3.4.4+git2+cxxx.../linux/meta/cfg/kernel-cache/bsp/rangle
>> y
>> dir
>>
>> Hence I am not sure why exactly is the above WARNING occurring..
>
> It may not be finding the new BSP definition, and an automatic one was ge=
nerated, which means you built a defconfig .. which was 32 bit.
>
> If you cat linux-yocto-3.4.4+git2+cxxx.../linux/meta/top_tgt .. what do y=
ou see ?
>
> Bruce
>
> top_tgt has following:
>
> meta/cfg/scratch/obj/rangeley-standard.scc

And if it is found in scratch/obj, that does mean that the system generated=
 that on your behalf.

If this is a new BSP, have you already defined your own board description (=
rangeley-standard.scc) with the matching KMACHINE, KARCH, KTYPE as you are =
trying to build ?

Cheers,

Bruce


=20
Yes, my KYTPYE had a mistake.  Fixed it and it seems to be working now. Tha=
nks for your help !

Rahul


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
>> Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62=20
>> to 3)
>>
>> On 12-07-26 02:58 PM, Saxena, Rahul wrote:
>>> Hmm OK..but not sure what I did wrong.
>>>
>>> I  just started a new BSP (meta-rangley) by copying over=20
>>> meta-sugarbay (this is a 64-bit bsp) to new layer meta-rangley, renamed=
 all files and variables etc from "sugarbay" to "rangley".
>>> Created  new machine standard/common-pc-64 branch in my local clone  of=
 linux-yocto-3.4 and also new meta branch in it.
>>>
>>> In short I have just copied over all sugarbay stuff to start a new rang=
ley bsp without making any real changes yet.
>>> So it seems surprising to get this error message.
>>
>> If something was dropped from your kernel config when you were working o=
n the BSP, it may have build a default 32 bit, and that could cause the QA =
error.
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
>>> Subject: Re: [yocto] ERROR: QA Issue: Architecture did not match (62=20
>>> to 3)
>>>
>>> On 12-07-26 02:37 PM, Saxena, Rahul wrote:
>>>> I get the following error:
>>>>
>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on=20
>>>> /work/rangeley-poky-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29
>>>> f
>>>> 1
>>>> 4
>>>> 83ff4e5a2034dc8edd5_1+6297e4c1d57e1063bfce297c2e12392348598559-r4.0
>>>> / p a ckages-split/kernel-vmlinux/boot/vmlinux-3.4.4-yocto-standard
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
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/work/rangeley-poky-linux/linux-=
yocto-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+6297e4c1d57e106=
3bfce297c2e12392348598559-r4.0/package/lib/modules/3.4.4-yocto-standard:
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
>>>> NOTE: kernel-dev contains dangling symlink to=20
>>>> /usr/src/kernel/vmlinux
>>>> DEBUG: Python function populate_packages finished
>>>> DEBUG: Executing python function package_do_filedeps
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
>>>> No such file or directory
>>>> error: Couldn't exec
>>>> /home/rsaxena/YoctoWork2/rangeley1/tmp/sysroots/x86_64-linux/usr/lib/r=
pm/pythoneggs.py:
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
>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on=20
>>>> /work/rangeley-poky-linux/linux-yocto-3.4.4+git1+a8cf77018b0faa0d29
>>>> f
>>>> 1
>>>> 4
>>>> 83ff4e5a2034dc8edd5_1+6297e4c1d57e1063bfce297c2e12392348598559-r4.0
>>>> / p a ckages-split/kernel-vmlinux/boot/vmlinux-3.4.4-yocto-standard
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
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


