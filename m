Return-Path: <kishore.k.bodke@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21853E00303
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2011 17:22:52 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Dec 2011 17:22:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="bb'?scan'208";a="103203504"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 16 Dec 2011 17:22:30 -0800
Received: from orsmsx502.amr.corp.intel.com ([10.22.226.210]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 16 Dec 2011 17:22:30 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
Date: Fri, 16 Dec 2011 17:22:29 -0800
Thread-Topic: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison
	branch.
Thread-Index: Acy8R4+YeOeyMy/5Q2SMTCFOaRMO5AADxUkgAAC5asA=
Message-ID: <4BD43A85686FC34D819098DB1C3999D9019260E569@orsmsx502.amr.corp.intel.com>
References: <4BD43A85686FC34D819098DB1C3999D901900BC33C@orsmsx502.amr.corp.intel.com>
	<4EE7DA4D.4080500@windriver.com> <4EE7DC81.6030609@intel.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC38A@orsmsx502.amr.corp.intel.com>
	<4EE7DEC2.5050803@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC3A3@orsmsx502.amr.corp.intel.com>
	<4EE83092.5000500@windriver.com> <4EE83861.4060607@intel.com>
	<4EE8AD93.8040100@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E255@orsmsx502.amr.corp.intel.com>
	<4EEB9CD5.7060004@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E281@orsmsx502.amr.corp.intel.com>
	<4EEBA792.9030404@intel.com>
	<4BD43A85686FC34D819098DB1C3999D9019260E3BE@orsmsx502.amr.corp.intel.com>
	<4EEBCF40.1050208@intel.com> 
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
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
X-List-Received-Date: Sat, 17 Dec 2011 01:22:52 -0000
X-Groupsio-MsgNum: 3874
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_4BD43A85686FC34D819098DB1C3999D9019260E569orsmsx502amrc_"

--_002_4BD43A85686FC34D819098DB1C3999D9019260E569orsmsx502amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


With the attached Darren's kern-tools-native_git.bb file, build was success=
.
Thanks
Kishore.

-----Original Message-----
From: Bodke, Kishore K
Sent: Friday, December 16, 2011 5:07 PM
To: Hart, Darren
Cc: Bruce Ashfield; yocto@yoctoproject.org
Subject: RE: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison =
branch.

Hi,
I still get the same error below after changing the kern-tools-native_git.b=
b file.

SRCREV ?=3D "364437739c45a5e771d1f7b3ac73c35f1328fd97"
PR =3D r11


ERROR: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1/p=
oky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d0545=
0e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a503=
7f3-r1/temp/log.do_kernel_configme.27942 for further information)
ERROR: Logfile of failure stored in: /usr/local/src/yocto_1_1/poky/build/tm=
p/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7=
137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/=
log.do_kernel_configme.27942
Log data follows:
| [INFO] doing kernel configme
| [INFO] Branch yocto/standard/preempt-rt/base used by common-pc-preempt-rt=
.scc
| [INFO] collecting configs in ./meta/meta-series
| mv: cannot stat `/usr/local/src/yocto_1_1/poky/build/tmp/work/crystalfore=
st-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da=
74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-pre=
empt-rt-build/.tmp.config*': No such file or directory
| creation of pre-processed config data failed
| config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) faile=
d
| ERROR: Function 'do_kernel_configme' failed (see /usr/local/src/yocto_1_1=
/poky/build/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05=
450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5=
037f3-r1/temp/log.do_kernel_configme.27942 for further information)
NOTE: package linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da=
74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1: task do_kernel_configm=
e: Failed
NOTE: package gcc-cross-4.6.1+svnr175454-r10: task do_configure: Started
ERROR: Task 716 (/usr/local/src/yocto_1_1/poky/meta/recipes-kernel/linux/li=
nux-yocto-rt_3.0.bb, do_kernel_configme) failed with exit code '1'

Thanks
Kishore.

-----Original Message-----
From: Hart, Darren
Sent: Friday, December 16, 2011 3:08 PM
To: Bodke, Kishore K
Cc: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison =
branch.

On 12/16/2011 02:12 PM, Bodke, Kishore K wrote:
> I am building core-image-sato.
> I have not changed any boot parameters.
> Everything was default settings.

By image format I mean are you using a live image?
core-image-sato-*.hddimg or are you formatting a disk and copying over
contents of the rootfs? The kernel parameters are specified in
meta-intel and meta-romley.

My guess is something has gone wrong in the kernel config and the kernel
you built is missing things like vfat, ramfs support, etc.

Can you make your .config available as well as the various log.do* from
the linux-yocto temp directory and the meta-series from the linux source
directory?

--
Darren

>
> Thanks
> Kishore.
>
> -----Original Message-----
> From: Hart, Darren
> Sent: Friday, December 16, 2011 12:18 PM
> To: Bodke, Kishore K
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/ediso=
n branch.
>
> On 12/16/2011 11:39 AM, Bodke, Kishore K wrote:
>> I will try out with the Bruce's patch.
>>
>> It stops after these below boot messages.
>>
>> Failed to execute /init
>> Kernel panic - Not syncing: No init found. Try passing init=3Doption to =
kernel
>> Pid: 1 comm: swapper not tainited. 3.0.12-rt30-yocto-standard-prempt-rt+
>
> Sounds like it isn't mounting the root filesystem. What image format are
> you using? What filesystem are you using for your rootfs? What are the
> kernel parameters you pass at boot?
>
> --
> Darren
>
>>
>> Thanks
>> Kishore.
>> -----Original Message-----
>> From: Hart, Darren
>> Sent: Friday, December 16, 2011 11:33 AM
>> To: Bodke, Kishore K
>> Cc: Bruce Ashfield; yocto@yoctoproject.org
>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edis=
on branch.
>>
>> On 12/16/2011 11:27 AM, Bodke, Kishore K wrote:
>>> Hi,
>>> Just wanted to know if this got fixed?
>>
>> Bruce sent a patch to test, it's included in the history below. Did you
>> try this without the cherry-picked patches to see if it works for you?
>> If not, could you please do so and let Bruce know? If it works for you,
>> we can push it into the meta-kernel-dev layer.
>>
>>> Everytime I give the build I have to cerry-pick the patches.
>>> But even after applying the patches, the build went through, but the im=
age does not boot.
>>
>> Can you provide some more details here? Does the bootloader come up?
>> Does the kernel output anything? What is the last thing displayed?
>>
>> --
>> Darren
>>
>>>
>>> Thanks
>>> Kishore.
>>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Wednesday, December 14, 2011 6:07 AM
>>> To: Hart, Darren
>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edi=
son branch.
>>>
>>> On 11-12-14 12:47 AM, Darren Hart wrote:
>>>> On 12/13/2011 09:13 PM, Bruce Ashfield wrote:
>>>>> On 11-12-13 6:26 PM, Bodke, Kishore K wrote:
>>>>>> Yes.
>>>>>> Its with poky Edison with poky-extras/meta-kernel-dev master branch =
I am using for my build.
>>>>>
>>>>> This is likely the problem. I use and test meta-kernel-dev everyday,
>>>>> but that's always against master. I keep them in lockstep, since
>>>>> meta-kernel-dev never really 'releases'.
>>>>>
>>>>> That being said, we can figure out a combination that works. The
>>>>> best thing to do, would be to remove the kern-tools-native bbappend
>>>>> from your meta-kernel-dev layer (for now). You don't want the new
>>>>> tools.
>>>>
>>>> That won't work.  He is using the latest kernel which has needs
>>>> merge_config.sh - as I ran into myself last week. I had Kishore
>>>
>>> There's still a way it will work, merge_config.sh is only ever
>>> called from the kern-tools. There shouldn't be any non kern-tools
>>> calls to merge_config.sh, the error:
>>>
>>>   mv: cannot stat
>>>   `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-
>>> poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96d=
a74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-pr=
eempt-rt-build/.tmp.config*':
>>>   No such file or directory
>>>
>>> Could only come from using the latest configme script from the
>>> kern-tools. So *something* newer than any SRCREV found on the
>>> edison branch is being used there.
>>>
>>>> cherry-pick the last two patches to kern-tools-native from master and
>>>> that got things going for him. So again, the question is: Why didn't t=
he
>>>> kern-tools-native bbappend do that for him?
>>>
>>> Aha. I may know the answer to that. The meta variant of the recipe look=
s
>>> to assign the SRCREV in a way that the bbappend can't change. I did
>>> this change during the day, but completely forgot when sending the
>>> email. Can someone try this to see if it's the fix ?
>>>
>>> index fb66211..bc9a6b9 100644
>>> --- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
>>> +++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
>>> @@ -4,8 +4,8 @@ LIC_FILES_CHKSUM =3D
>>> "file://git/tools/kgit;beginline=3D5;endline=3D9;md5=3De2bf4415f3d8
>>>
>>>   DEPENDS =3D "git-native guilt-native"
>>>
>>> -SRCREV =3D "eb3ed64cea80d23ffb28dfeaeb02cdfe3fb29340"
>>> -PR =3D r12
>>> +SRCREV ?=3D "eb3ed64cea80d23ffb28dfeaeb02cdfe3fb29340"
>>> +PR =3D r13
>>>   PV =3D "0.1+git${SRCPV}"
>>>
>>> .. and Then I'll do a pull request.
>>>
>>> But as to why it's happening, I have no idea, autorev should pick it
>>> up. That's down in the guts of bitbake, and for some reason the old
>>> downloaded variant doesn't seem to be updating.
>>>
>>> Bruce
>>>
>>>>
>>>> --
>>>> Darren
>>>>
>>>>>
>>>>> If that doesn't fix the problem, look for merge_log.txt in your
>>>>> linux/meta/cfg/ directory structure and that will tell us exactly
>>>>> what is going wrong.
>>>>>
>>>>> Bruce
>>>>>
>>>>>>
>>>>>> Thanks
>>>>>> Kishore.
>>>>>>
>>>>>> -----Original Message-----
>>>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>>>> Sent: Tuesday, December 13, 2011 3:25 PM
>>>>>> To: Bodke, Kishore K
>>>>>> Cc: Hart, Darren; yocto@yoctoproject.org
>>>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/=
edison branch.
>>>>>>
>>>>>> On 11-12-13 6:17 PM, Bodke, Kishore K wrote:
>>>>>>> Yeah.  I am using local bare clone for the linux-yocto-3.0 and usin=
g poky-extras/meta-kernel-dev in my bblayers.conf for my build.
>>>>>>> Sorry for not mentioning this before.
>>>>>>
>>>>>> Aha. This is completely different then. As Darren mentioned, the bba=
ppend
>>>>>> should be getting the latest tools, I can look into that.
>>>>>>
>>>>>> But to be clear, is this an edison branch + meta-kernel-dev ? That
>>>>>> will cause problems at some point (and I'm not sure if that is what
>>>>>> is happening here yet), since recipe updates to use the new tools
>>>>>> wouldn't be reflected in that branch while you are fed the new tools=
.
>>>>>>
>>>>>> Cheers,
>>>>>>
>>>>>> Bruce
>>>>>>
>>>>>>>
>>>>>>> Thanks
>>>>>>> Kishore.
>>>>>>>
>>>>>>> -----Original Message-----
>>>>>>> From: Hart, Darren
>>>>>>> Sent: Tuesday, December 13, 2011 3:15 PM
>>>>>>> To: Bruce Ashfield
>>>>>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
>>>>>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky=
/edison branch.
>>>>>>>
>>>>>>> On 12/13/2011 03:05 PM, Bruce Ashfield wrote:
>>>>>>>> On 11-12-13 5:50 PM, Bodke, Kishore K wrote:
>>>>>>>>> Hi,
>>>>>>>>>
>>>>>>>>> I get failure for the linux-yoctort_3.0.bb file for the poky Edis=
on branch.
>>>>>>>>>
>>>>>>>>> Darren told that it was fixed and merged to master.
>>>>>>>>
>>>>>>>> This shouldn't be happening on edison at all. The changes to the
>>>>>>>> kernel recipes/tools to use the merge_config.sh should never have
>>>>>>>> showed up in edison. That's yocto 1.2 development work.
>>>>>>>>
>>>>>>>> So the fix for this is to find out what leaked into edison and
>>>>>>>> revert it. I'll have a look at that later tonight.
>>>>>>>
>>>>>>> No no. Kishore is using meta-kernel-dev. As such he is getting the
>>>>>>> latest linux-yocto repository and SRC_REVs. The question, I think, =
is
>>>>>>> really why isn't the kern-tools-native bbappend from meta-kernel-de=
v
>>>>>>> doing this for him.
>>>>>>>
>>>>>>> --
>>>>>>> Darren
>>>>>>>
>>>>>>>>
>>>>>>>> Bruce
>>>>>>>>
>>>>>>>>>
>>>>>>>>> I wanted to bring to the list about this error message.
>>>>>>>>>
>>>>>>>>> ERROR: Function 'do_kernel_configme' failed (see
>>>>>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalfore=
st-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da=
74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_conf=
igme.18502
>>>>>>>>> for further information)
>>>>>>>>>
>>>>>>>>> ERROR: Logfile of failure stored in:
>>>>>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalfore=
st-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da=
74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_conf=
igme.18502
>>>>>>>>>
>>>>>>>>> Log data follows:
>>>>>>>>>
>>>>>>>>> | [INFO] doing kernel configme
>>>>>>>>>
>>>>>>>>> | [INFO] Branch yocto/standard/preempt-rt/base used by
>>>>>>>>> common-pc-preempt-rt.scc
>>>>>>>>>
>>>>>>>>> | [INFO] collecting configs in ./meta/meta-series
>>>>>>>>>
>>>>>>>>> | mv: cannot stat
>>>>>>>>> `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalfor=
est-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96d=
a74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-pr=
eempt-rt-build/.tmp.config*':
>>>>>>>>> No such file or directory
>>>>>>>>>
>>>>>>>>> | creation of pre-processed config data failed
>>>>>>>>>
>>>>>>>>> | config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.=
scc) failed
>>>>>>>>>
>>>>>>>>> | ERROR: Function 'do_kernel_configme' failed (see
>>>>>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalfore=
st-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da=
74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_conf=
igme.18502
>>>>>>>>> for further information)
>>>>>>>>>
>>>>>>>>> NOTE: package
>>>>>>>>> linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f5=
2_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1:
>>>>>>>>> task do_kernel_configme: Failed
>>>>>>>>>
>>>>>>>>> ERROR: Task 716
>>>>>>>>> (/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/=
linux-yocto-rt_3.0.bb,
>>>>>>>>> do_kernel_configme) failed with exit code '1'
>>>>>>>>>
>>>>>>>>> Waiting for 7 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>>>>>
>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>>>>>
>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>>>>>
>>>>>>>>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
>>>>>>>>>
>>>>>>>>> 4: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>>>>>>>>
>>>>>>>>> 6: opensp-native-1.5-r2 do_configure (pid 20213)
>>>>>>>>>
>>>>>>>>> Waiting for 6 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>>>>>
>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>>>>>
>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>>>>>
>>>>>>>>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
>>>>>>>>>
>>>>>>>>> 4: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>>>>>>>>
>>>>>>>>> NOTE: package opensp-native-1.5-r2: task do_configure: Succeeded
>>>>>>>>>
>>>>>>>>> Waiting for 5 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>>>>>
>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>>>>>
>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>>>>>
>>>>>>>>> 3: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> 4: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>>>>>>>>
>>>>>>>>> NOTE: package font-util-native-1.2.0-r2.1: task do_configure: Suc=
ceeded
>>>>>>>>>
>>>>>>>>> Waiting for 4 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>>>>>
>>>>>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>>>>>
>>>>>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>>>>>
>>>>>>>>> 3: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> NOTE: package dbus-native-1.4.12-r0: task do_configure: Succeeded
>>>>>>>>>
>>>>>>>>> Waiting for 3 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>>>>>
>>>>>>>>> 1: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>>>>>
>>>>>>>>> 2: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> NOTE: package acl-native-2.2.51-r2: task do_configure: Succeeded
>>>>>>>>>
>>>>>>>>> Waiting for 2 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>>>>>
>>>>>>>>> 1: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> NOTE: package kbproto-native-1_1.0.5-r0: task do_configure: Succe=
eded
>>>>>>>>>
>>>>>>>>> Waiting for 1 active tasks to finish:
>>>>>>>>>
>>>>>>>>> 0: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>>>>>
>>>>>>>>> NOTE: package elfutils-native-0.148-r3: task do_install: Succeede=
d
>>>>>>>>>
>>>>>>>>> NOTE: package bison-native-2.5-r1: task do_configure: Succeeded
>>>>>>>>>
>>>>>>>>> ERROR:
>>>>>>>>> '/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/=
linux-yocto-rt_3.0.bb'
>>>>>>>>> failed
>>>>>>>>>
>>>>>>>>> Thanks
>>>>>>>>>
>>>>>>>>> Kishore.
>>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>
>>>>>
>>>>
>>>>
>>
>>
>
>


--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

--_002_4BD43A85686FC34D819098DB1C3999D9019260E569orsmsx502amrc_
Content-Type: application/octet-stream; name="kern-tools-native_git.bb"
Content-Description: kern-tools-native_git.bb
Content-Disposition: attachment; filename="kern-tools-native_git.bb";
	size=536; creation-date="Fri, 16 Dec 2011 17:07:36 GMT";
	modification-date="Fri, 16 Dec 2011 17:07:36 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiU2NyaXB0cyBhbmQgdXRpbGl0aWVzIGZvciBtYW5hZ2luZyBZb2N0byBi
cmFuY2hlZCBrZXJuZWxzLiINCkxJQ0VOU0UgPSAiR1BMIg0KTElDX0ZJTEVTX0NIS1NVTSA9ICJm
aWxlOi8vZ2l0L3Rvb2xzL2tnaXQ7YmVnaW5saW5lPTU7ZW5kbGluZT05O21kNT1lMmJmNDQxNWYz
ZDg0M2Y0M2QyZTIyYjBkOTFhNmZlZSINCg0KREVQRU5EUyA9ICJnaXQtbmF0aXZlIGd1aWx0LW5h
dGl2ZSINCg0KU1JDUkVWID0gImViM2VkNjRjZWE4MGQyM2ZmYjI4ZGZlYWViMDJjZGZlM2ZiMjkz
NDAiDQpQUiA9IHIxMg0KUFYgPSAiMC4xK2dpdCR7U1JDUFZ9Ig0KDQppbmhlcml0IG5hdGl2ZQ0K
DQpTUkNfVVJJID0gImdpdDovL2dpdC55b2N0b3Byb2plY3Qub3JnL3lvY3RvLWtlcm5lbC10b29s
cy5naXQ7cHJvdG9jb2w9Z2l0Ig0KUyA9ICIke1dPUktESVJ9Ig0KDQpkb19jb21waWxlKCkgeyAN
Cgk6DQp9DQoNCmRvX2luc3RhbGwoKSB7DQoJY2QgJHtTfS9naXQNCgltYWtlIERFU1RESVI9JHtE
fSR7YmluZGlyfSBpbnN0YWxsDQp9DQo=

--_002_4BD43A85686FC34D819098DB1C3999D9019260E569orsmsx502amrc_--
