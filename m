Return-Path: <omprakash.pal@stericsson.com>
Received: from eu1sys200aog109.obsmtp.com (eu1sys200aog109.obsmtp.com
	[207.126.144.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F538E013A6
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 03:34:28 -0700 (PDT)
Received: from beta.dmz-eu.st.com ([164.129.1.35]) (using TLSv1) by
	eu1sys200aob109.postini.com ([207.126.147.11]) with SMTP
	ID DSNKT55qs1mILWk8+j/SmJgBdi4+o1Z7xXbI@postini.com;
	Mon, 30 Apr 2012 10:34:29 UTC
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0EDFE132;
	Mon, 30 Apr 2012 10:34:26 +0000 (GMT)
Received: from relay1.stm.gmessaging.net (unknown [10.230.100.17])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 8E06E27D8;
	Mon, 30 Apr 2012 10:34:26 +0000 (GMT)
Received: from exdcvycastm003.EQ1STM.local (alteon-source-exch [10.230.100.61])
	(using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(Client CN "exdcvycastm003", Issuer "exdcvycastm003" (not verified))
	by relay1.stm.gmessaging.net (Postfix) with ESMTPS id 7B79724C080;
	Mon, 30 Apr 2012 12:34:20 +0200 (CEST)
Received: from EXDCVYMBSTM006.EQ1STM.local ([10.230.100.3]) by
	exdcvycastm003.EQ1STM.local ([10.230.100.1]) with mapi; Mon, 30 Apr 2012
	12:34:25 +0200
From: Om Prakash PAL <omprakash.pal@stericsson.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 30 Apr 2012 12:34:24 +0200
Thread-Topic: [yocto] Porting of specific Kernel/Driver into yocto.
Thread-Index: Ac0Wdvt69Ner9ukASX2oljhpkOyjbwPdhd5OADO5004=
Message-ID: <3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CF@EXDCVYMBSTM006.EQ1STM.local>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>,
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>,
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 30 Apr 2012 10:34:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>On 12-04-29 5:58 AM, Om Prakash PAL wrote:

   > Hi Bruce,
    >for porting of our local kernel,we have created an BSP layer and to ch=
ange the the=20
    >kernel,  we have created an linux-yocto_3.0.bbappend file inside=20
    >meta<BSP>/recipes-kernel/linux/
    >like this:-

    >FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

   > COMPATIBLE_MACHINE_<BSP_name>  =3D "BSP_name"

    ># KMACHINE is the branch to build
    >KMACHINE_<BSP_name>  =3D "local_branch"

   > SRCREV_machine_pn_linux-yocto_<BSP_name>  ?=3D "XXXXXXXX" (here we hav=
e assign=20
    >top commit ID of our local kernel)


    ># KSRC_linux_yocto to point to your local clone as appropriate.
    >KSRC_linux_yocto ?=3D "/path/to/local/kernel"

    >SRC_URI =3D=20
    >"git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;branch=3D${K=
BRANCH};name=3Dmachine
     >\
       >              file://defconfig"


    >KERNEL_REVISION_CHECKING=3D""
    >SRCREV=3D"${AUTOREV}"
    >#BB_LOCALCOUNT_OVERRIDE =3D "1"
    >LOCALCOUNT =3D "0"


    >while building we are getting following Error:

    >NOTE: Executing RunQueue Tasks
    >NOTE: Running task 1341 of 1710 (ID: 513,=20
    >/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yo=
cto_3.0.bb,
     >do_validate_branches)
    >NOTE: package=20
    >linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2: ta=
sk=20
    >do_validate_branches: Started
    >ERROR: Function 'do_validate_branches' failed (see=20
    >/home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/linu=
x-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2/temp/log.do_=
validate_branches.16792
     >for further information)


    >please tell me what we have done wrong?.
    >is there anything else we need to modify in .bbappend file or some oth=
er=20
    >variable?.

>Which release are you using again ?
  I am using 6.0.0 Edision

>The diagnostics out of validate branches are about to get better in master=
,
>but they are coupled with some other tools changes that couldn't go
>into yocto 1.2.

>Is there anything extra in the log file, or just what you saw on the
>build log ?.
actually I have set YOCTO_KERNEL_EXTERNAL_BRANCH =3D"dev";(dev is my local =
brach)
Now this Error has gone and now I am getting=20

ERROR: Function 'do_patch' failed (see /home/apallan/yocto/hello_build/tmp/=
work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd08=
7bec5ec7cd8a448383-r3/temp/log.do_patch.22008 for further information)
ERROR: Logfile of failure stored in: /home/apallan/yocto/hello_build/tmp/wo=
rk/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087b=
ec5ec7cd8a448383-r3/temp/log.do_patch.22008
Log data follows:
| ERROR. meta data not found, check upstream repo for tags and branches
| ERROR: Function 'do_patch' failed (see /home/apallan/yocto/hello_build/tm=
p/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd=
087bec5ec7cd8a448383-r3/temp/log.do_patch.22008 for further information)
NOTE: package linux-yocto-3.0.4+git2+0a81a5eaa7a5c1216cbd087bec5ec7cd8a4483=
83-r3: task do_patch: Failed
ERROR: Task 516 (/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/li=
nux/linux-yocto_3.0.bb, do_patch) failed with exit code '1'
ERROR: '/home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux=
-yocto_3.0.bb' failed


>Validate branches fails like this when you've provided a bad branch or
>SRCREV (vs a SRCREV that is simply not the tip of the branch .. it fixes
>hat scenario) and the fetcher or another git command aborts.

>You've output some example text from the bbappend, but what were the real
>values in your situation ? i.e. what are KMACHINE/KBRANCH set to ?.

I have not set the value of KBRANCH?. what it should be ?.

>There are some flags you can set to exit the branch validation early, but
>I don't think setting them is the right course of action yet, since the
>error you are seeing is likely hiding some other mis configuration.

>Cheers,

>Bruce

Best Regards,
Om Prakash Pal
________________________________________
From: Om Prakash PAL
Sent: Sunday, April 29, 2012 3:28 PM
To: Bruce Ashfield
Cc: yocto@yoctoproject.org
Subject: RE: [yocto] Porting of specific Kernel/Driver into yocto.

Hi Bruce,
for porting of our local kernel,we have created an BSP layer and to change =
the the kernel,  we have created an linux-yocto_3.0.bbappend file inside me=
ta<BSP>/recipes-kernel/linux/
like this:-

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_<BSP_name> =3D "BSP_name"

# KMACHINE is the branch to build
KMACHINE_<BSP_name> =3D "local_branch"

SRCREV_machine_pn_linux-yocto_<BSP_name> ?=3D "XXXXXXXX" (here we have assi=
gn top commit ID of our local kernel)


# KSRC_linux_yocto to point to your local clone as appropriate.
KSRC_linux_yocto ?=3D "/path/to/local/kernel"

SRC_URI =3D "git://${KSRC_linux_yocto};protocol=3Dfile;nocheckout=3D1;branc=
h=3D${KBRANCH};name=3Dmachine \
                file://defconfig"


KERNEL_REVISION_CHECKING=3D""
SRCREV=3D"${AUTOREV}"
#BB_LOCALCOUNT_OVERRIDE =3D "1"
LOCALCOUNT =3D "0"


while building we are getting following Error:

NOTE: Executing RunQueue Tasks
NOTE: Running task 1341 of 1710 (ID: 513, /home/apallan/yocto/poky-edison-6=
.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_validate_branches)
NOTE: package linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe2=
8e-r2: task do_validate_branches: Started
ERROR: Function 'do_validate_branches' failed (see /home/apallan/yocto/hell=
o_build/tmp/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git1+6b2c7d65b8=
44e686eae7d5cccb9b638887afe28e-r2/temp/log.do_validate_branches.16792 for f=
urther information)


please tell me what we have done wrong?.
is there anything else we need to modify in .bbappend file or some other va=
riable?.

Best Regards,
Om Prakash Pal
________________________________________
From: Bruce Ashfield [bruce.ashfield@gmail.com]
Sent: Monday, April 09, 2012 11:04 PM
To: Om Prakash PAL
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.

On Mon, Apr 9, 2012 at 12:31 PM, Om Prakash PAL
<omprakash.pal@stericsson.com> wrote:
> Hi Bruce,
> Thanks for you help.
> As you have mentioned, its working properly.
> I want to know that is there any better way of doing same thing for my sc=
enario ?:
> here is my scenario:
> We have development branch where we write/modify our kernel/driver code i=
.e. thats our local kernel repository(git rep)
> and lots of driver/files being modified everyday-->so I have to take the =
same effect into yocto kernel also----> so except  creating patches for all=
 modified drivers and creating .bbappend files, is there any better way of =
doing same thing .

Aha. Missed that.

Just create a simple recipe that points at your git repository in the SRC_U=
RI.
If all the changes are in the tree, and you have a defconfig and you
are building
the master branch. Then pretty much everything you need can be specified in
the SRC_URI .. and that's the entire recipe.

If you look in oe-classic, meta-ti or any one of a number of other
layers, you'll
find recipes that do just that.

The meta-kernel-dev (in the poky extras) layer has an example of using the
kernel.org tree with the yocto kern tools, and once yocto 1.3 opens up for
submissions, I have a set of changes prep'd that make it relatively simple =
to
use the yocto kern tools against different types of repository.

So the summary is: Depending on the type of tooling you need, and what base=
line
you need for your work .. there are a number of ways to do things.

>
> Is there anyway that  instead of using yocto-kernel tree,  can we use our=
 local kernel-tree for building images?. (should  I create separate BSP ?)

You should definitely create a BSP, that way you can tune the system specif=
ic
to your board,

Cheers,

Bruce

>
> Thanks in advance.
> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@windriver.com]
> Sent: Monday, April 09, 2012 9:32 AM
> To: Om Prakash PAL
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On 12-04-08 10:04 AM, Om Prakash PAL wrote:
>> Hi Bruce,
>> Thanks for your reply.
>> I am totally new to Yocto.
>> I have gone through the section BSP/Linux kernel configuration and if I =
am not wrong then it explains how can we configure the kernel, not the how =
we can add/replace a  component(driver etc).
>> lets take the example of UART driver, I want to add my own UART driver c=
ode.
>> Should I write a separate recipe file (.bb) for UART Driver?.
>> if yes then I have to write the recipe files for all my drivers that wil=
l be very time consuming.
>> Is there any other way that I can port all my desired drivers into Yocto=
 kernel?.
>
> No recipes are required per-driver, unless you are building them all
> as out of tree modules.
>
> The typical way this is done is to simply work in the extracted linux
> src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux), manual=
ly
> patch, or copy your drivers into the tree. At this point, you'll port
> the drivers, doing test builds (bitbake -f -c compile linux-yocto) to
> ensure that your port is working. When you've completed the build phase,
> boot tests would be in order. (Do not do a 'clean' or you'll lose in
> progress changes).
>
> When you are happy with the changes, the directory where you were working
> is with the kernel git repository. So you can simply commit your
> changes, and generate patches.
>
>    git format-patch -o <your directory> HEAD^ (or however many commits
> you have)
>
> Take those patches, create a layer with a bbappend and add them like
> any other patch to any package. They'll be applied to subsequent builds
> of the kernel.
>
> I'm skipping a lot of detail there, but it is all found in the various
> manuals, and I don't want to repeat it here.
>
> Cheers,
>
> Bruce
>
>> Please help me.
>> Thanks a lot in advance.
>>
>> Best Regards,
>> Om Prakash Pal
>> ________________________________________
>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>> Sent: Wednesday, April 04, 2012 6:17 PM
>> To: Om Prakash PAL
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>>> Hi,
>>> I want to build my local kernel/Driver code, not the default one.
>>> please help how can i do it ?.
>>> any wiki/docs on this?.
>>
>> The BSP developer guides show how to extend the yocto kernels, and
>> also have sections on custom/different kernel versions. Have you
>> seen that doc yet ? Or have you seen it, and have specific questions ?
>>
>> Bruce
>>
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

