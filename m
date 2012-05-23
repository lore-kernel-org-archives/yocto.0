Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog107.obsmtp.com (eu1sys200aog107.obsmtp.com
	[207.126.144.123])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A21AE01396
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 05:39:51 -0700 (PDT)
Received: from beta.dmz-eu.st.com ([164.129.1.35]) (using TLSv1) by
	eu1sys200aob107.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT7zakmI+nY3HtJ8Ap3d+yHWC4FEg9e+L@postini.com;
	Wed, 23 May 2012 12:39:52 UTC
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C1BB2151;
	Wed, 23 May 2012 12:39:40 +0000 (GMT)
Received: from relay2.stm.gmessaging.net (unknown [10.230.100.18])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0E7C92907;
	Wed, 23 May 2012 12:39:40 +0000 (GMT)
Received: from exdcvycastm003.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm003", Issuer "exdcvycastm003" (not verified))
	by relay2.stm.gmessaging.net (Postfix) with ESMTPS id 8BD44A8093;
	Wed, 23 May 2012 14:39:34 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm003.EQ1STM.local ([10.230.100.1]) with mapi; Wed, 23 May 2012
	14:39:39 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Wed, 23 May 2012 14:39:39 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac0rhBudgERdjrPLSU6B80qgKnn8fANWQf1T
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D2@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>,
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>,
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CF@EXDCVYMBSTM006.EQ1STM.local>,
	<4F9E9DD5.5080601@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D2@EXDCVYMBSTM006.EQ1STM.local>,
	<4FA27A40.6080506@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D3@EXDCVYMBSTM006.EQ1STM.local>,
	<4FA66F02.3080107@windriver.com>
In-Reply-To: <4FA66F02.3080107@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Richard Purdie <richard.purdie@intel.com>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Wed, 23 May 2012 12:39:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

[ I am using "poky-edison-6.0" ]
I am able to create my rootfs and uImage but when I flashed these on my boa=
rd,
while booting I am getting below Error and console get blocked.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
[    3.575805] EXT3-fs (mmcblk0p1): using internal journal
[    3.581054] EXT3-fs (mmcblk0p1): mounted filesystem with writeback data =
mode
[    3.588165] VFS: Mounted root (ext3 filesystem) on device 179:1.
[    3.594268] Freeing init memory: 312K
INIT: version 2.88 booting

Please wait: booting...
Starting udev
Starting Bootlog daemon: bootlogd: cannot deduce real console device
bootlogd.
Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
done.
Fri May 11 11:29:00 UTC 2012
Running postinst /etc/rpm-postinsts/*.sh...
ERROR: postinst /etc/rpm-postinsts/*.sh failed.
INIT: Entering runlevel: 5
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.
[    9.737091] av8100_hdmi av8100_hdmi.3: HDMI display probed

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
and after that it got stuck, I am not getting console.

I am building rootfs/uImage with default toolchain used in yocto.
Is it problem of toolchain?.
Should I build with our toolchain( we use CodeSourcery)?.

Best Regards,
Om Prakash Pal
________________________________________
From: Bruce Ashfield [bruce.ashfield@windriver.com]
Sent: Sunday, May 06, 2012 6:00 PM
To: Om Prakash PAL
Cc: Bruce Ashfield; yocto@yoctoproject.org; Richard Purdie
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On 12-05-06 5:43 AM, Om Prakash PAL wrote:
> Hi Bruce,
> I am getting some problem in do_install:
>
> NOTE: Running task 1535 of 1710 (ID: 517, /home/apallan/yocto/poky-edison=
-6.0/meta-u8500/recipes-kernel/linux/linux-u8500.bb, do_install)
> NOTE: package linux-u8500-3.2+git1+0a81a5eaa7a5c1216cbd087bec5ec7cd8a4483=
83-r10: task do_install: Started
>
> and I waited for ~15hr to complete task do_install: but not completed and=
 i am not getting any Errors/warnings.
> Is there any problem?.
> I have checked that my vmlinux/uImage/zImage has been created successfull=
y but rootfs has not been created till now.
>
> here is my .bb file that is building my local_kernel.
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> KMACHINE =3D "dev"
> YOCTO_KERNEL_EXTERNAL_BRANCH ?=3D "dev"
>
> KBRANCH =3D "${KMACHINE}"
> KMETA =3D "meta"
>
> KSRC_linux_yocto ?=3D "/home/apallan/yocto/kernel/"
>
> SRC_URI =3D "git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1"
> SRC_URI +=3D"file://defconfig"
>
> SRCREV=3D"${AUTOREV}"
> SRCREV_pn-linux-u8500 =3D"0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383"
>
> LINUX_VERSION ?=3D "3.2"
> LINUX_VERSION_EXTENSION =3D "-yoctized-${LINUX_KERNEL_TYPE}"
> PR =3D "r10"
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE =3D "(u8500|qemuarm)"
>
> # Functionality flags
> KERNEL_REVISION_CHECKING=3D""
> YOCTO_KERNEL_META_DATA=3D""
>
> require recipes-kernel/linux/linux-tools.inc
>
> what should be the problem?.

Anything using linux-yocto has exactly the same packaging semantics as
other kernels, since they all inherit kernel.bbclass.

Maybe your description sounds familiar to others, and others that might
have better ideas about what's happening in the packaging backend ?

You don't have any special partitions configured ? You are building
on a local filesystem ? Is rpm or ipkg being used ? .. these are all
things that could impact performance (but not really 15 hours worth of
issues).

Are there any hints in the host system logs, or in the kernels do_install
log ?

Bruce

>
> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@windriver.com]
> Sent: Thursday, May 03, 2012 5:59 PM
> To: Om Prakash PAL
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On 12-05-03 05:24 AM, Om Prakash PAL wrote:
>> Hi Bruce,
>> Thanks a lot for your help.
>> Now I am able to build the local kernel.
>
> Great!
>
>> I have one doublt:
>> when I do
>> bitbake -c mencuconfig virtual/kernel
>>
>> then from which location it will take the config file?.
>> and if I want to buiild my own specific defconfig file then How can do i=
t?.
>
> It will use the .config in the build directory ${B}, which if you
> are using a linux-yocto recipe would be your
> linux-$MACHINE-$KERNELTYPE-build
> directory.
>
> The dependencies of menuconfig will ensure that the kernel has been fetch=
ed,
> unpacked and configured before it runs. Which means a defconfig will
> have already been used (if specified) to construct the .config.
>
> Any changes you make will be saved in the .config, and you'll need to
> preserve that for future builds.
>
> Cheers,
>
> Bruce
>
>>
>> Best Regards,
>> Om Prakash Pal
>> ________________________________________
>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>> Sent: Monday, April 30, 2012 7:42 PM
>> To: Om Prakash PAL
>> Cc: Bruce Ashfield; yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 12-04-30 6:34 AM, Om Prakash PAL wrote:
>>>> On 12-04-29 5:58 AM, Om Prakash PAL wrote:
>>>
>>>       >    Hi Bruce,
>>>        >for porting of our local kernel,we have created an BSP layer an=
d to change the the
>>>        >kernel,  we have created an linux-yocto_3.0.bbappend file insid=
e
>>>        >meta<BSP>/recipes-kernel/linux/
>>>        >like this:-
>>>
>>>        >FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>
>>>       >    COMPATIBLE_MACHINE_<BSP_name>     =3D "BSP_name"
>>>
>>>        ># KMACHINE is the branch to build
>>>        >KMACHINE_<BSP_name>     =3D "local_branch"
>>>
>>>       >    SRCREV_machine_pn_linux-yocto_<BSP_name>     ?=3D "XXXXXXXX"=
 (here we have assign
>>>        >top commit ID of our local kernel)
>>>
>>>
>>>        ># KSRC_linux_yocto to point to your local clone as appropriate.
>>>        >KSRC_linux_yocto ?=3D "/path/to/local/kernel"
>>>
>>>        >SRC_URI =3D
>>>        >"git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;branc=
h=3D${KBRANCH};name=3Dmachine
>>>         >\
>>>           >                 file://defconfig"
>>>
>>>
>>>        >KERNEL_REVISION_CHECKING=3D""
>>>        >SRCREV=3D"${AUTOREV}"
>>>        >#BB_LOCALCOUNT_OVERRIDE =3D "1"
>>>        >LOCALCOUNT =3D "0"
>>>
>>>
>>>        >while building we are getting following Error:
>>>
>>>        >NOTE: Executing RunQueue Tasks
>>>        >NOTE: Running task 1341 of 1710 (ID: 513,
>>>        >/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/l=
inux-yocto_3.0.bb,
>>>         >do_validate_branches)
>>>        >NOTE: package
>>>        >linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e=
-r2: task
>>>        >do_validate_branches: Started
>>>        >ERROR: Function 'do_validate_branches' failed (see
>>>        >/home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnuea=
bi/linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2/temp/=
log.do_validate_branches.16792
>>>         >for further information)
>>>
>>>
>>>        >please tell me what we have done wrong?.
>>>        >is there anything else we need to modify in .bbappend file or s=
ome other
>>>        >variable?.
>>>
>>>> Which release are you using again ?
>>>      I am using 6.0.0 Edision
>>>
>>>> The diagnostics out of validate branches are about to get better in ma=
ster,
>>>> but they are coupled with some other tools changes that couldn't go
>>>> into yocto 1.2.
>>>
>>>> Is there anything extra in the log file, or just what you saw on the
>>>> build log ?.
>>> actually I have set YOCTO_KERNEL_EXTERNAL_BRANCH =3D"dev";(dev is my lo=
cal brach)
>>> Now this Error has gone and now I am getting
>>>
>>> ERROR: Function 'do_patch' failed (see /home/apallan/yocto/hello_build/=
tmp/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216c=
bd087bec5ec7cd8a448383-r3/temp/log.do_patch.22008 for further information)
>>> ERROR: Logfile of failure stored in: /home/apallan/yocto/hello_build/tm=
p/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd=
087bec5ec7cd8a448383-r3/temp/log.do_patch.22008
>>> Log data follows:
>>> | ERROR. meta data not found, check upstream repo for tags and branches
>>> | ERROR: Function 'do_patch' failed (see /home/apallan/yocto/hello_buil=
d/tmp/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c121=
6cbd087bec5ec7cd8a448383-r3/temp/log.do_patch.22008 for further information=
)
>>> NOTE: package linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a=
448383-r3: task do_patch: Failed
>>> ERROR: Task 516 (/home/apallan/yocto/poky-edison-6.0/meta/recipes-kerne=
l/linux/linux-yocto_3.0.bb, do_patch) failed with exit code '1'
>>> ERROR: '/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/l=
inux-yocto_3.0.bb' failed
>>>
>>
>> This is what I was saying a few weeks ago. If you aren't using
>> the linux-yocto kernel repository (and hence linux-yocto branches/meta
>> data) as your base, then building directly via the linux-yocto recipe
>> probably isn't what you want. It is a recipe that leverages the tools
>> and infrastructure on top of the linux-yocto repository.
>>
>> That same infrastructure can build other repositories, but needs some
>> extra variables set. The meta-kernel-dev layer, in poky-extras has
>> examples of this for building korg (or any repo) with the tools.
>>
>> What you re being told in this particular error is that you don't have
>> a meta branch in the tree, or not one that the tools can recognize.
>> You can prevent this by setting YOCTO_KERNEL_META_DATA=3D"" in your
>> recipe (see the korg recipe as an example). (and FYI: this will no
>> longer be required in 1.3, but it is for any previous release.
>>>
>>>> Validate branches fails like this when you've provided a bad branch or
>>>> SRCREV (vs a SRCREV that is simply not the tip of the branch .. it fix=
es
>>>> hat scenario) and the fetcher or another git command aborts.
>>>
>>>> You've output some example text from the bbappend, but what were the r=
eal
>>>> values in your situation ? i.e. what are KMACHINE/KBRANCH set to ?.
>>>
>>> I have not set the value of KBRANCH?. what it should be ?.
>>
>> It needs to be a valid branch in the repository. The 1.2 recipes
>> set it to be KMACHINE if it hasn't been explicitly set. But it
>> sounds like you are past this, and have set your branch to something
>> that actually exists in the tree.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>> There are some flags you can set to exit the branch validation early, =
but
>>>> I don't think setting them is the right course of action yet, since th=
e
>>>> error you are seeing is likely hiding some other mis configuration.
>>>
>>>> Cheers,
>>>
>>>> Bruce
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>> ________________________________________
>>> From: Om Prakash PAL
>>> Sent: Sunday, April 29, 2012 3:28 PM
>>> To: Bruce Ashfield
>>> Cc: yocto@yoctoproject.org
>>> Subject: RE: [yocto] Porting of specific Kernel/Driver into yocto.
>>>
>>> Hi Bruce,
>>> for porting of our local kernel,we have created an BSP layer and to cha=
nge the the kernel,  we have created an linux-yocto_3.0.bbappend file insid=
e meta<BSP>/recipes-kernel/linux/
>>> like this:-
>>>
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>
>>> COMPATIBLE_MACHINE_<BSP_name>    =3D "BSP_name"
>>>
>>> # KMACHINE is the branch to build
>>> KMACHINE_<BSP_name>    =3D "local_branch"
>>>
>>> SRCREV_machine_pn_linux-yocto_<BSP_name>    ?=3D "XXXXXXXX" (here we ha=
ve assign top commit ID of our local kernel)
>>>
>>>
>>> # KSRC_linux_yocto to point to your local clone as appropriate.
>>> KSRC_linux_yocto ?=3D "/path/to/local/kernel"
>>>
>>> SRC_URI =3D "git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;b=
ranch=3D${KBRANCH};name=3Dmachine \
>>>                    file://defconfig"
>>>
>>>
>>> KERNEL_REVISION_CHECKING=3D""
>>> SRCREV=3D"${AUTOREV}"
>>> #BB_LOCALCOUNT_OVERRIDE =3D "1"
>>> LOCALCOUNT =3D "0"
>>>
>>>
>>> while building we are getting following Error:
>>>
>>> NOTE: Executing RunQueue Tasks
>>> NOTE: Running task 1341 of 1710 (ID: 513, /home/apallan/yocto/poky-edis=
on-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_validate_branches)
>>> NOTE: package linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887=
afe28e-r2: task do_validate_branches: Started
>>> ERROR: Function 'do_validate_branches' failed (see /home/apallan/yocto/=
hello_build/tmp/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git1+6b2c7d=
65b844e686eae7d5cccb9b638887afe28e-r2/temp/log.do_validate_branches.16792 f=
or further information)
>>>
>>>
>>> please tell me what we have done wrong?.
>>> is there anything else we need to modify in .bbappend file or some othe=
r variable?.
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>> ________________________________________
>>> From: Bruce Ashfield [bruce.ashfield@gmail.com]
>>> Sent: Monday, April 09, 2012 11:04 PM
>>> To: Om Prakash PAL
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>
>>> On Mon, Apr 9, 2012 at 12:31 PM, Om Prakash PAL
>>> <omprakash.pal@stericsson.com>    wrote:
>>>> Hi Bruce,
>>>> Thanks for you help.
>>>> As you have mentioned, its working properly.
>>>> I want to know that is there any better way of doing same thing for my=
 scenario ?:
>>>> here is my scenario:
>>>> We have development branch where we write/modify our kernel/driver cod=
e i.e. thats our local kernel repository(git rep)
>>>> and lots of driver/files being modified everyday-->so I have to take t=
he same effect into yocto kernel also---->    so except  creating patches f=
or all modified drivers and creating .bbappend files, is there any better w=
ay of doing same thing .
>>>
>>> Aha. Missed that.
>>>
>>> Just create a simple recipe that points at your git repository in the S=
RC_URI.
>>> If all the changes are in the tree, and you have a defconfig and you
>>> are building
>>> the master branch. Then pretty much everything you need can be specifie=
d in
>>> the SRC_URI .. and that's the entire recipe.
>>>
>>> If you look in oe-classic, meta-ti or any one of a number of other
>>> layers, you'll
>>> find recipes that do just that.
>>>
>>> The meta-kernel-dev (in the poky extras) layer has an example of using =
the
>>> kernel.org tree with the yocto kern tools, and once yocto 1.3 opens up =
for
>>> submissions, I have a set of changes prep'd that make it relatively sim=
ple to
>>> use the yocto kern tools against different types of repository.
>>>
>>> So the summary is: Depending on the type of tooling you need, and what =
baseline
>>> you need for your work .. there are a number of ways to do things.
>>>
>>>>
>>>> Is there anyway that  instead of using yocto-kernel tree,  can we use =
our local kernel-tree for building images?. (should  I create separate BSP =
?)
>>>
>>> You should definitely create a BSP, that way you can tune the system sp=
ecific
>>> to your board,
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> Thanks in advance.
>>>> Best Regards,
>>>> Om Prakash Pal
>>>> ________________________________________
>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>> Sent: Monday, April 09, 2012 9:32 AM
>>>> To: Om Prakash PAL
>>>> Cc: yocto@yoctoproject.org
>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>
>>>> On 12-04-08 10:04 AM, Om Prakash PAL wrote:
>>>>> Hi Bruce,
>>>>> Thanks for your reply.
>>>>> I am totally new to Yocto.
>>>>> I have gone through the section BSP/Linux kernel configuration and if=
 I am not wrong then it explains how can we configure the kernel, not the h=
ow we can add/replace a  component(driver etc).
>>>>> lets take the example of UART driver, I want to add my own UART drive=
r code.
>>>>> Should I write a separate recipe file (.bb) for UART Driver?.
>>>>> if yes then I have to write the recipe files for all my drivers that =
will be very time consuming.
>>>>> Is there any other way that I can port all my desired drivers into Yo=
cto kernel?.
>>>>
>>>> No recipes are required per-driver, unless you are building them all
>>>> as out of tree modules.
>>>>
>>>> The typical way this is done is to simply work in the extracted linux
>>>> src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux), man=
ually
>>>> patch, or copy your drivers into the tree. At this point, you'll port
>>>> the drivers, doing test builds (bitbake -f -c compile linux-yocto) to
>>>> ensure that your port is working. When you've completed the build phas=
e,
>>>> boot tests would be in order. (Do not do a 'clean' or you'll lose in
>>>> progress changes).
>>>>
>>>> When you are happy with the changes, the directory where you were work=
ing
>>>> is with the kernel git repository. So you can simply commit your
>>>> changes, and generate patches.
>>>>
>>>>       git format-patch -o<your directory>    HEAD^ (or however many co=
mmits
>>>> you have)
>>>>
>>>> Take those patches, create a layer with a bbappend and add them like
>>>> any other patch to any package. They'll be applied to subsequent build=
s
>>>> of the kernel.
>>>>
>>>> I'm skipping a lot of detail there, but it is all found in the various
>>>> manuals, and I don't want to repeat it here.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>> Please help me.
>>>>> Thanks a lot in advance.
>>>>>
>>>>> Best Regards,
>>>>> Om Prakash Pal
>>>>> ________________________________________
>>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>>> Sent: Wednesday, April 04, 2012 6:17 PM
>>>>> To: Om Prakash PAL
>>>>> Cc: yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>>
>>>>> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>>>>>> Hi,
>>>>>> I want to build my local kernel/Driver code, not the default one.
>>>>>> please help how can i do it ?.
>>>>>> any wiki/docs on this?.
>>>>>
>>>>> The BSP developer guides show how to extend the yocto kernels, and
>>>>> also have sections on custom/different kernel versions. Have you
>>>>> seen that doc yet ? Or have you seen it, and have specific questions =
?
>>>>>
>>>>> Bruce
>>>>>
>>>>>>
>>>>>> Best Regards,
>>>>>> Om Prakash Pal
>>>>>> _______________________________________________
>>>>>> yocto mailing list
>>>>>> yocto@yoctoproject.org
>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>> --
>>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>>> thee at its end"
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>


