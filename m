Return-Path: <B29882@freescale.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe004.messaging.microsoft.com [213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0719CE00723
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 08:30:32 -0700 (PDT)
Received: from mail56-am1-R.bigfish.com (10.3.201.238) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.23; Thu, 21 Jun 2012 15:29:04 +0000
Received: from mail56-am1 (localhost [127.0.0.1])	by mail56-am1-R.bigfish.com
	(Postfix) with ESMTP id 9B1094E03F2;
	Thu, 21 Jun 2012 15:29:03 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -25
X-BigFish: VS-25(zzbb2dI98dI9371I936eI1b0bM1443N542M1432I14e3Mzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ahbe9i)
Received: from mail56-am1 (localhost.localdomain [127.0.0.1]) by mail56-am1
	(MessageSwitch) id 1340292540702154_14018;
	Thu, 21 Jun 2012 15:29:00 +0000 (UTC)
Received: from AM1EHSMHS011.bigfish.com (unknown [10.3.201.243])	by
	mail56-am1.bigfish.com (Postfix) with ESMTP id A69954C0047;
	Thu, 21 Jun 2012 15:29:00 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS011.bigfish.com
	(10.3.207.111) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 21 Jun 2012 15:28:59 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.135]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0298.005; Thu, 21 Jun 2012 10:30:24 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: AQHNT8LGF2VJucWpvECRQpQFPHOqeQ==
Date: Thu, 21 Jun 2012 15:30:24 +0000
Message-ID: <CAEsOVNe+DCviBBTw1jSPk6gLesoUg6=jR9ebJ_aBeB1qTqCOug@mail.gmail.com>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CF@EXDCVYMBSTM006.EQ1STM.local>
	<4F9E9DD5.5080601@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D2@EXDCVYMBSTM006.EQ1STM.local>
	<4FA27A40.6080506@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416D3@EXDCVYMBSTM006.EQ1STM.local>
	<4FA66F02.3080107@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D2@EXDCVYMBSTM006.EQ1STM.local>
	<4FBD2998.5060407@intel.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B1897B1D3@EXDCVYMBSTM006.EQ1STM.local>
	<4FE317F5.1000400@mlbassoc.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B18D9EC2E@EXDCVYMBSTM006.EQ1STM.local>
	<4FE32F95.8000801@mlbassoc.com>
In-Reply-To: <4FE32F95.8000801@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jun 2012 15:30:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <96FFE5FADB7DDF41917BA969AC8AFD6F@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Are you spawning a tty on a non-existent serial port?

-M

On Thu, Jun 21, 2012 at 9:28 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-06-21 08:16, Om Prakash PAL wrote:
>>
>> ----Original Message-----
>> From: yocto-bounces@yoctoproject.org
>> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Gary Thomas
>> Sent: Thursday, June 21, 2012 6:18 PM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 2012-06-21 06:27, Om Prakash PAL wrote:
>>>
>>> ________________________________________
>>> From: Darren Hart [darren.hart@intel.com]
>>> Sent: Wednesday, May 23, 2012 11:46 PM
>>> To: Om Prakash PAL
>>> Cc: Bruce Ashfield; yocto@yoctoproject.org; Richard Purdie
>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>
>>> On 05/23/2012 05:39 AM, Om Prakash PAL wrote:
>>>>
>>>> Hi Bruce,
>>>>
>>>> [ I am using "poky-edison-6.0" ]
>>>> I am able to create my rootfs and uImage but when I flashed these on m=
y
>>>> board,
>>>> while booting I am getting below Error and console get blocked.
>>>>
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>> [ =A0 =A03.575805] EXT3-fs (mmcblk0p1): using internal journal
>>>> [ =A0 =A03.581054] EXT3-fs (mmcblk0p1): mounted filesystem with writeb=
ack
>>>> data mode
>>>> [ =A0 =A03.588165] VFS: Mounted root (ext3 filesystem) on device 179:1=
.
>>>> [ =A0 =A03.594268] Freeing init memory: 312K
>>>> INIT: version 2.88 booting
>>>>
>>>> Please wait: booting...
>>>> Starting udev
>>>> Starting Bootlog daemon: bootlogd: cannot deduce real console device
>>>> bootlogd.
>>>> Configuring network interfaces... ifconfig: SIOCGIFFLAGS: No such devi=
ce
>>>> done.
>>>> Fri May 11 11:29:00 UTC 2012
>>>> Running postinst /etc/rpm-postinsts/*.sh...
>>>> ERROR: postinst /etc/rpm-postinsts/*.sh failed.
>>>
>>>
>>> Does this error repeat if you reboot?
>>> Yes, every time.
>>
>>
>>> What image is being used? =A0I've seen this with core-image-minimal, bu=
t it
>>> goes away when the image is more complex, e.g. core-image-sato. =A0I
>>> believe
>>> the init script is always present even if there are no postinst scripts
>>> to run.
>>
>>
>> I am also building core-image-minimal.
>> Is there any problem with this?.
>
>
> No. =A0I think the error message is noise in this case.
>
>> Should I build core-image-sato?.
>
>
> Only if you want/need to - core-image-sato brings in a complete X desktop
> environment, maybe not what you're after.
>
>
>>
>>>
>>>> INIT: Entering runlevel: 5
>>>> Starting syslogd/klogd: done
>>>> Stopping Bootlog daemon: bootlogd.
>>>> [ =A0 =A09.737091] av8100_hdmi av8100_hdmi.3: HDMI display probed
>>>>
>>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>> and after that it got stuck, I am not getting console.
>>>
>>>
>>> How long do you let it sit?
>>>
>>> after some time(around 10mins) got this msg;
>>> INIT: Id "1" respawning too fast: disabled for 5 minutes
>>> INIT: no more processes left in this runlevel
>>>
>>> and then console got =A0stuck.
>>
>>
>>> What do you have SERIAL_CONSOLE set to in your configuration?
>>
>>
>> I have set SERIAL_CONSOLE=3D"115200 ttyAMA2". As we are using ttyAMA2 fo=
r
>> console.
>
>
> What is your target device? =A0Do you really have /dev/ttyAMA2 serial por=
t??
>
>
>>>>
>>>> I am building rootfs/uImage with default toolchain used in yocto.
>>>> Is it problem of toolchain?.
>>>> Should I build with our toolchain( we use CodeSourcery)?.
>>>
>>>
>>> Nothing above suggests a toolchain problem. You have an error running
>>> the postinst scripts from the various rpm packages. Some instrumentatio=
n
>>> in those scripts (and the parent script) would help narrow down where i=
t
>>> is failing.
>>>
>>> --
>>> Darren
>>>
>>>>
>>>> Best Regards,
>>>> Om Prakash Pal
>>>> ________________________________________
>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>> Sent: Sunday, May 06, 2012 6:00 PM
>>>> To: Om Prakash PAL
>>>> Cc: Bruce Ashfield; yocto@yoctoproject.org; Richard Purdie
>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>
>>>> On 12-05-06 5:43 AM, Om Prakash PAL wrote:
>>>>>
>>>>> Hi Bruce,
>>>>> I am getting some problem in do_install:
>>>>>
>>>>> NOTE: Running task 1535 of 1710 (ID: 517,
>>>>> /home/apallan/yocto/poky-edison-6.0/meta-u8500/recipes-kernel/linux/l=
inux-u8500.bb,
>>>>> do_install)
>>>>> NOTE: package
>>>>> linux-u8500-3.2+git1+0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383-r10: ta=
sk
>>>>> do_install: Started
>>>>>
>>>>> and I waited for ~15hr to complete task do_install: but not completed
>>>>> and i am not getting any Errors/warnings.
>>>>> Is there any problem?.
>>>>> I have checked that my vmlinux/uImage/zImage has been created
>>>>> successfully but rootfs has not been created till now.
>>>>>
>>>>> here is my .bb file that is building my local_kernel.
>>>>>
>>>>> inherit kernel
>>>>> require recipes-kernel/linux/linux-yocto.inc
>>>>>
>>>>> KMACHINE =3D "dev"
>>>>> YOCTO_KERNEL_EXTERNAL_BRANCH ?=3D "dev"
>>>>>
>>>>> KBRANCH =3D "${KMACHINE}"
>>>>> KMETA =3D "meta"
>>>>>
>>>>> KSRC_linux_yocto ?=3D "/home/apallan/yocto/kernel/"
>>>>>
>>>>> SRC_URI =3D "git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1=
"
>>>>> SRC_URI +=3D"file://defconfig"
>>>>>
>>>>> SRCREV=3D"${AUTOREV}"
>>>>> SRCREV_pn-linux-u8500 =3D"0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383"
>>>>>
>>>>> LINUX_VERSION ?=3D "3.2"
>>>>> LINUX_VERSION_EXTENSION =3D "-yoctized-${LINUX_KERNEL_TYPE}"
>>>>> PR =3D "r10"
>>>>> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>>>>>
>>>>> COMPATIBLE_MACHINE =3D "(u8500|qemuarm)"
>>>>>
>>>>> # Functionality flags
>>>>> KERNEL_REVISION_CHECKING=3D""
>>>>> YOCTO_KERNEL_META_DATA=3D""
>>>>>
>>>>> require recipes-kernel/linux/linux-tools.inc
>>>>>
>>>>> what should be the problem?.
>>>>
>>>>
>>>> Anything using linux-yocto has exactly the same packaging semantics as
>>>> other kernels, since they all inherit kernel.bbclass.
>>>>
>>>> Maybe your description sounds familiar to others, and others that migh=
t
>>>> have better ideas about what's happening in the packaging backend ?
>>>>
>>>> You don't have any special partitions configured ? You are building
>>>> on a local filesystem ? Is rpm or ipkg being used ? .. these are all
>>>> things that could impact performance (but not really 15 hours worth of
>>>> issues).
>>>>
>>>> Are there any hints in the host system logs, or in the kernels
>>>> do_install
>>>> log ?
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> Best Regards,
>>>>> Om Prakash Pal
>>>>> ________________________________________
>>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>>> Sent: Thursday, May 03, 2012 5:59 PM
>>>>> To: Om Prakash PAL
>>>>> Cc: Bruce Ashfield; yocto@yoctoproject.org
>>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>>
>>>>> On 12-05-03 05:24 AM, Om Prakash PAL wrote:
>>>>>>
>>>>>> Hi Bruce,
>>>>>> Thanks a lot for your help.
>>>>>> Now I am able to build the local kernel.
>>>>>
>>>>>
>>>>> Great!
>>>>>
>>>>>> I have one doublt:
>>>>>> when I do
>>>>>> bitbake -c mencuconfig virtual/kernel
>>>>>>
>>>>>> then from which location it will take the config file?.
>>>>>> and if I want to buiild my own specific defconfig file then How can =
do
>>>>>> it?.
>>>>>
>>>>>
>>>>> It will use the .config in the build directory ${B}, which if you
>>>>> are using a linux-yocto recipe would be your
>>>>> linux-$MACHINE-$KERNELTYPE-build
>>>>> directory.
>>>>>
>>>>> The dependencies of menuconfig will ensure that the kernel has been
>>>>> fetched,
>>>>> unpacked and configured before it runs. Which means a defconfig will
>>>>> have already been used (if specified) to construct the .config.
>>>>>
>>>>> Any changes you make will be saved in the .config, and you'll need to
>>>>> preserve that for future builds.
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>>>
>>>>>>
>>>>>> Best Regards,
>>>>>> Om Prakash Pal
>>>>>> ________________________________________
>>>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>>>> Sent: Monday, April 30, 2012 7:42 PM
>>>>>> To: Om Prakash PAL
>>>>>> Cc: Bruce Ashfield; yocto@yoctoproject.org
>>>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>>>
>>>>>> On 12-04-30 6:34 AM, Om Prakash PAL wrote:
>>>>>>>>
>>>>>>>> On 12-04-29 5:58 AM, Om Prakash PAL wrote:
>>>>>>>
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0> =A0 =A0 =A0Hi Bruce,
>>>>>>> =A0 =A0 =A0 =A0 >for porting of our local kernel,we have created an=
 BSP layer
>>>>>>> and to change the the
>>>>>>> =A0 =A0 =A0 =A0 >kernel, =A0we have created an linux-yocto_3.0.bbap=
pend file
>>>>>>> inside
>>>>>>> =A0 =A0 =A0 =A0 >meta<BSP>/recipes-kernel/linux/
>>>>>>> =A0 =A0 =A0 =A0 >like this:-
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 >FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0> =A0 =A0 =A0COMPATIBLE_MACHINE_<BSP_name> =A0 =A0 =
=A0 =3D "BSP_name"
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 ># KMACHINE is the branch to build
>>>>>>> =A0 =A0 =A0 =A0 >KMACHINE_<BSP_name> =A0 =A0 =A0 =3D "local_branch"
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0> =A0 =A0 =A0SRCREV_machine_pn_linux-yocto_<BSP_name=
> =A0 =A0 =A0 ?=3D
>>>>>>> "XXXXXXXX" (here we have assign
>>>>>>> =A0 =A0 =A0 =A0 >top commit ID of our local kernel)
>>>>>>>
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 ># KSRC_linux_yocto to point to your local clone as
>>>>>>> appropriate.
>>>>>>> =A0 =A0 =A0 =A0 >KSRC_linux_yocto ?=3D "/path/to/local/kernel"
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 >SRC_URI =3D
>>>>>>>
>>>>>>> >"git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;branch=
=3D${KBRANCH};name=3Dmachine
>>>>>>> =A0 =A0 =A0 =A0 =A0>\
>>>>>>> =A0 =A0 =A0 =A0 =A0 =A0> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file:/=
/defconfig"
>>>>>>>
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 >KERNEL_REVISION_CHECKING=3D""
>>>>>>> =A0 =A0 =A0 =A0 >SRCREV=3D"${AUTOREV}"
>>>>>>> =A0 =A0 =A0 =A0 >#BB_LOCALCOUNT_OVERRIDE =3D "1"
>>>>>>> =A0 =A0 =A0 =A0 >LOCALCOUNT =3D "0"
>>>>>>>
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 >while building we are getting following Error:
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 >NOTE: Executing RunQueue Tasks
>>>>>>> =A0 =A0 =A0 =A0 >NOTE: Running task 1341 of 1710 (ID: 513,
>>>>>>>
>>>>>>> >/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linu=
x-yocto_3.0.bb,
>>>>>>> =A0 =A0 =A0 =A0 =A0>do_validate_branches)
>>>>>>> =A0 =A0 =A0 =A0 >NOTE: package
>>>>>>>
>>>>>>> >linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2=
: task
>>>>>>> =A0 =A0 =A0 =A0 >do_validate_branches: Started
>>>>>>> =A0 =A0 =A0 =A0 >ERROR: Function 'do_validate_branches' failed (see
>>>>>>>
>>>>>>> >/home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/=
linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2/temp/log=
.do_validate_branches.16792
>>>>>>> =A0 =A0 =A0 =A0 =A0>for further information)
>>>>>>>
>>>>>>>
>>>>>>> =A0 =A0 =A0 =A0 >please tell me what we have done wrong?.
>>>>>>> =A0 =A0 =A0 =A0 >is there anything else we need to modify in .bbapp=
end file
>>>>>>> or some other
>>>>>>> =A0 =A0 =A0 =A0 >variable?.
>>>>>>>
>>>>>>>> Which release are you using again ?
>>>>>>>
>>>>>>> =A0 =A0 =A0 I am using 6.0.0 Edision
>>>>>>>
>>>>>>>> The diagnostics out of validate branches are about to get better i=
n
>>>>>>>> master,
>>>>>>>> but they are coupled with some other tools changes that couldn't g=
o
>>>>>>>> into yocto 1.2.
>>>>>>>
>>>>>>>
>>>>>>>> Is there anything extra in the log file, or just what you saw on t=
he
>>>>>>>> build log ?.
>>>>>>>
>>>>>>> actually I have set YOCTO_KERNEL_EXTERNAL_BRANCH =3D"dev";(dev is m=
y
>>>>>>> local brach)
>>>>>>> Now this Error has gone and now I am getting
>>>>>>>
>>>>>>> ERROR: Function 'do_patch' failed (see
>>>>>>> /home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/l=
inux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383-r3/temp/log.=
do_patch.22008
>>>>>>> for further information)
>>>>>>> ERROR: Logfile of failure stored in:
>>>>>>> /home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/l=
inux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383-r3/temp/log.=
do_patch.22008
>>>>>>> Log data follows:
>>>>>>> | ERROR. meta data not found, check upstream repo for tags and
>>>>>>> branches
>>>>>>> | ERROR: Function 'do_patch' failed (see
>>>>>>> /home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/l=
inux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383-r3/temp/log.=
do_patch.22008
>>>>>>> for further information)
>>>>>>> NOTE: package
>>>>>>> linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a448383-r3:=
 task
>>>>>>> do_patch: Failed
>>>>>>> ERROR: Task 516
>>>>>>> (/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linu=
x-yocto_3.0.bb,
>>>>>>> do_patch) failed with exit code '1'
>>>>>>> ERROR:
>>>>>>> '/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linu=
x-yocto_3.0.bb'
>>>>>>> failed
>>>>>>>
>>>>>>
>>>>>> This is what I was saying a few weeks ago. If you aren't using
>>>>>> the linux-yocto kernel repository (and hence linux-yocto branches/me=
ta
>>>>>> data) as your base, then building directly via the linux-yocto recip=
e
>>>>>> probably isn't what you want. It is a recipe that leverages the tool=
s
>>>>>> and infrastructure on top of the linux-yocto repository.
>>>>>>
>>>>>> That same infrastructure can build other repositories, but needs som=
e
>>>>>> extra variables set. The meta-kernel-dev layer, in poky-extras has
>>>>>> examples of this for building korg (or any repo) with the tools.
>>>>>>
>>>>>> What you re being told in this particular error is that you don't ha=
ve
>>>>>> a meta branch in the tree, or not one that the tools can recognize.
>>>>>> You can prevent this by setting YOCTO_KERNEL_META_DATA=3D"" in your
>>>>>> recipe (see the korg recipe as an example). (and FYI: this will no
>>>>>> longer be required in 1.3, but it is for any previous release.
>>>>>>>
>>>>>>>
>>>>>>>> Validate branches fails like this when you've provided a bad branc=
h
>>>>>>>> or
>>>>>>>> SRCREV (vs a SRCREV that is simply not the tip of the branch .. it
>>>>>>>> fixes
>>>>>>>> hat scenario) and the fetcher or another git command aborts.
>>>>>>>
>>>>>>>
>>>>>>>> You've output some example text from the bbappend, but what were t=
he
>>>>>>>> real
>>>>>>>> values in your situation ? i.e. what are KMACHINE/KBRANCH set to ?=
.
>>>>>>>
>>>>>>>
>>>>>>> I have not set the value of KBRANCH?. what it should be ?.
>>>>>>
>>>>>>
>>>>>> It needs to be a valid branch in the repository. The 1.2 recipes
>>>>>> set it to be KMACHINE if it hasn't been explicitly set. But it
>>>>>> sounds like you are past this, and have set your branch to something
>>>>>> that actually exists in the tree.
>>>>>>
>>>>>> Cheers,
>>>>>>
>>>>>> Bruce
>>>>>>
>>>>>>>
>>>>>>>> There are some flags you can set to exit the branch validation
>>>>>>>> early, but
>>>>>>>> I don't think setting them is the right course of action yet, sinc=
e
>>>>>>>> the
>>>>>>>> error you are seeing is likely hiding some other mis configuration=
.
>>>>>>>
>>>>>>>
>>>>>>>> Cheers,
>>>>>>>
>>>>>>>
>>>>>>>> Bruce
>>>>>>>
>>>>>>>
>>>>>>> Best Regards,
>>>>>>> Om Prakash Pal
>>>>>>> ________________________________________
>>>>>>> From: Om Prakash PAL
>>>>>>> Sent: Sunday, April 29, 2012 3:28 PM
>>>>>>> To: Bruce Ashfield
>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>> Subject: RE: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>>>>
>>>>>>> Hi Bruce,
>>>>>>> for porting of our local kernel,we have created an BSP layer and to
>>>>>>> change the the kernel, =A0we have created an linux-yocto_3.0.bbappe=
nd file
>>>>>>> inside meta<BSP>/recipes-kernel/linux/
>>>>>>> like this:-
>>>>>>>
>>>>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>>>>>
>>>>>>> COMPATIBLE_MACHINE_<BSP_name> =A0 =A0 =A0=3D "BSP_name"
>>>>>>>
>>>>>>> # KMACHINE is the branch to build
>>>>>>> KMACHINE_<BSP_name> =A0 =A0 =A0=3D "local_branch"
>>>>>>>
>>>>>>> SRCREV_machine_pn_linux-yocto_<BSP_name> =A0 =A0 =A0?=3D "XXXXXXXX"=
 (here we
>>>>>>> have assign top commit ID of our local kernel)
>>>>>>>
>>>>>>>
>>>>>>> # KSRC_linux_yocto to point to your local clone as appropriate.
>>>>>>> KSRC_linux_yocto ?=3D "/path/to/local/kernel"
>>>>>>>
>>>>>>> SRC_URI =3D
>>>>>>> "git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;branch=3D=
${KBRANCH};name=3Dmachine
>>>>>>> \
>>>>>>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 file://defconfig"
>>>>>>>
>>>>>>>
>>>>>>> KERNEL_REVISION_CHECKING=3D""
>>>>>>> SRCREV=3D"${AUTOREV}"
>>>>>>> #BB_LOCALCOUNT_OVERRIDE =3D "1"
>>>>>>> LOCALCOUNT =3D "0"
>>>>>>>
>>>>>>>
>>>>>>> while building we are getting following Error:
>>>>>>>
>>>>>>> NOTE: Executing RunQueue Tasks
>>>>>>> NOTE: Running task 1341 of 1710 (ID: 513,
>>>>>>> /home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux=
-yocto_3.0.bb,
>>>>>>> do_validate_branches)
>>>>>>> NOTE: package
>>>>>>> linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2:=
 task
>>>>>>> do_validate_branches: Started
>>>>>>> ERROR: Function 'do_validate_branches' failed (see
>>>>>>> /home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/l=
inux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2/temp/log.=
do_validate_branches.16792
>>>>>>> for further information)
>>>>>>>
>>>>>>>
>>>>>>> please tell me what we have done wrong?.
>>>>>>> is there anything else we need to modify in .bbappend file or some
>>>>>>> other variable?.
>>>>>>>
>>>>>>> Best Regards,
>>>>>>> Om Prakash Pal
>>>>>>> ________________________________________
>>>>>>> From: Bruce Ashfield [bruce.ashfield@gmail.com]
>>>>>>> Sent: Monday, April 09, 2012 11:04 PM
>>>>>>> To: Om Prakash PAL
>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>>>>
>>>>>>> On Mon, Apr 9, 2012 at 12:31 PM, Om Prakash PAL
>>>>>>> <omprakash.pal@stericsson.com> =A0 =A0 =A0wrote:
>>>>>>>>
>>>>>>>> Hi Bruce,
>>>>>>>> Thanks for you help.
>>>>>>>> As you have mentioned, its working properly.
>>>>>>>> I want to know that is there any better way of doing same thing fo=
r
>>>>>>>> my scenario ?:
>>>>>>>> here is my scenario:
>>>>>>>> We have development branch where we write/modify our kernel/driver
>>>>>>>> code i.e. thats our local kernel repository(git rep)
>>>>>>>> and lots of driver/files being modified everyday-->so I have to ta=
ke
>>>>>>>> the same effect into yocto kernel also----> =A0 =A0 =A0so except =
=A0creating patches
>>>>>>>> for all modified drivers and creating .bbappend files, is there an=
y better
>>>>>>>> way of doing same thing .
>>>>>>>
>>>>>>>
>>>>>>> Aha. Missed that.
>>>>>>>
>>>>>>> Just create a simple recipe that points at your git repository in t=
he
>>>>>>> SRC_URI.
>>>>>>> If all the changes are in the tree, and you have a defconfig and yo=
u
>>>>>>> are building
>>>>>>> the master branch. Then pretty much everything you need can be
>>>>>>> specified in
>>>>>>> the SRC_URI .. and that's the entire recipe.
>>>>>>>
>>>>>>> If you look in oe-classic, meta-ti or any one of a number of other
>>>>>>> layers, you'll
>>>>>>> find recipes that do just that.
>>>>>>>
>>>>>>> The meta-kernel-dev (in the poky extras) layer has an example of
>>>>>>> using the
>>>>>>> kernel.org tree with the yocto kern tools, and once yocto 1.3 opens
>>>>>>> up for
>>>>>>> submissions, I have a set of changes prep'd that make it relatively
>>>>>>> simple to
>>>>>>> use the yocto kern tools against different types of repository.
>>>>>>>
>>>>>>> So the summary is: Depending on the type of tooling you need, and
>>>>>>> what baseline
>>>>>>> you need for your work .. there are a number of ways to do things.
>>>>>>>
>>>>>>>>
>>>>>>>> Is there anyway that =A0instead of using yocto-kernel tree, =A0can=
 we
>>>>>>>> use our local kernel-tree for building images?. (should =A0I creat=
e separate
>>>>>>>> BSP ?)
>>>>>>>
>>>>>>>
>>>>>>> You should definitely create a BSP, that way you can tune the syste=
m
>>>>>>> specific
>>>>>>> to your board,
>>>>>>>
>>>>>>> Cheers,
>>>>>>>
>>>>>>> Bruce
>>>>>>>
>>>>>>>>
>>>>>>>> Thanks in advance.
>>>>>>>> Best Regards,
>>>>>>>> Om Prakash Pal
>>>>>>>> ________________________________________
>>>>>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>>>>>> Sent: Monday, April 09, 2012 9:32 AM
>>>>>>>> To: Om Prakash PAL
>>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>>>>>>
>>>>>>>> On 12-04-08 10:04 AM, Om Prakash PAL wrote:
>>>>>>>>>
>>>>>>>>> Hi Bruce,
>>>>>>>>> Thanks for your reply.
>>>>>>>>> I am totally new to Yocto.
>>>>>>>>> I have gone through the section BSP/Linux kernel configuration an=
d
>>>>>>>>> if I am not wrong then it explains how can we configure the kerne=
l, not the
>>>>>>>>> how we can add/replace a =A0component(driver etc).
>>>>>>>>> lets take the example of UART driver, I want to add my own UART
>>>>>>>>> driver code.
>>>>>>>>> Should I write a separate recipe file (.bb) for UART Driver?.
>>>>>>>>> if yes then I have to write the recipe files for all my drivers
>>>>>>>>> that will be very time consuming.
>>>>>>>>> Is there any other way that I can port all my desired drivers int=
o
>>>>>>>>> Yocto kernel?.
>>>>>>>>
>>>>>>>>
>>>>>>>> No recipes are required per-driver, unless you are building them a=
ll
>>>>>>>> as out of tree modules.
>>>>>>>>
>>>>>>>> The typical way this is done is to simply work in the extracted
>>>>>>>> linux
>>>>>>>> src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux),
>>>>>>>> manually
>>>>>>>> patch, or copy your drivers into the tree. At this point, you'll
>>>>>>>> port
>>>>>>>> the drivers, doing test builds (bitbake -f -c compile linux-yocto)
>>>>>>>> to
>>>>>>>> ensure that your port is working. When you've completed the build
>>>>>>>> phase,
>>>>>>>> boot tests would be in order. (Do not do a 'clean' or you'll lose =
in
>>>>>>>> progress changes).
>>>>>>>>
>>>>>>>> When you are happy with the changes, the directory where you were
>>>>>>>> working
>>>>>>>> is with the kernel git repository. So you can simply commit your
>>>>>>>> changes, and generate patches.
>>>>>>>>
>>>>>>>> =A0 =A0 =A0 =A0git format-patch -o<your directory> =A0 =A0 =A0HEAD=
^ (or however
>>>>>>>> many commits
>>>>>>>> you have)
>>>>>>>>
>>>>>>>> Take those patches, create a layer with a bbappend and add them li=
ke
>>>>>>>> any other patch to any package. They'll be applied to subsequent
>>>>>>>> builds
>>>>>>>> of the kernel.
>>>>>>>>
>>>>>>>> I'm skipping a lot of detail there, but it is all found in the
>>>>>>>> various
>>>>>>>> manuals, and I don't want to repeat it here.
>>>>>>>>
>>>>>>>> Cheers,
>>>>>>>>
>>>>>>>> Bruce
>>>>>>>>
>>>>>>>>> Please help me.
>>>>>>>>> Thanks a lot in advance.
>>>>>>>>>
>>>>>>>>> Best Regards,
>>>>>>>>> Om Prakash Pal
>>>>>>>>> ________________________________________
>>>>>>>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>>>>>>>> Sent: Wednesday, April 04, 2012 6:17 PM
>>>>>>>>> To: Om Prakash PAL
>>>>>>>>> Cc: yocto@yoctoproject.org
>>>>>>>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto=
.
>>>>>>>>>
>>>>>>>>> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>>>>>>>>>>
>>>>>>>>>> Hi,
>>>>>>>>>> I want to build my local kernel/Driver code, not the default one=
.
>>>>>>>>>> please help how can i do it ?.
>>>>>>>>>> any wiki/docs on this?.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> The BSP developer guides show how to extend the yocto kernels, an=
d
>>>>>>>>> also have sections on custom/different kernel versions. Have you
>>>>>>>>> seen that doc yet ? Or have you seen it, and have specific
>>>>>>>>> questions ?
>>>>>>>>>
>>>>>>>>> Bruce
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Best Regards,
>>>>>>>>>> Om Prakash Pal
>>>>>>>>>> _______________________________________________
>>>>>>>>>> yocto mailing list
>>>>>>>>>> yocto@yoctoproject.org
>>>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> yocto mailing list
>>>>>>>> yocto@yoctoproject.org
>>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> "Thou shalt not follow the NULL pointer, for chaos and madness awai=
t
>>>>>>> thee at its end"
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>>
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
>>> Darren Hart
>>> Intel Open Source Technology Center
>>> Yocto Project - Linux Kernel
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
>>> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
>>> ------------------------------------------------------------
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>> Best Regards,
>> Om Prakash Pal
>
>
> --
> ------------------------------------------------------------
> Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the
> MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


