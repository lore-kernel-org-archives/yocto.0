Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73A74E013A6
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 19:27:17 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q3U2RCJG014110
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 29 Apr 2012 19:27:12 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.23.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 29 Apr 2012 19:27:12 -0700
Message-ID: <4F9DF87E.7090803@windriver.com>
Date: Sun, 29 Apr 2012 22:27:10 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Om Prakash PAL <omprakash.pal@stericsson.com>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
	<4F825F65.4040706@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B69@EXDCVYMBSTM006.EQ1STM.local>,
	<CADkTA4PnNWTbtpzVu=Qhegg87Ai=XNXgH5VD6c7mCK=BYj3dgg@mail.gmail.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35B042416CC@EXDCVYMBSTM006.EQ1STM.local>
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
X-List-Received-Date: Mon, 30 Apr 2012 02:27:17 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-29 5:58 AM, Om Prakash PAL wrote:
> Hi Bruce,
> for porting of our local kernel,we have created an BSP layer and to change the the kernel,  we have created an linux-yocto_3.0.bbappend file inside meta<BSP>/recipes-kernel/linux/
> like this:-
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
> COMPATIBLE_MACHINE_<BSP_name>  = "BSP_name"
>
> # KMACHINE is the branch to build
> KMACHINE_<BSP_name>  = "local_branch"
>
> SRCREV_machine_pn_linux-yocto_<BSP_name>  ?= "XXXXXXXX" (here we have assign top commit ID of our local kernel)
>
>
> # KSRC_linux_yocto to point to your local clone as appropriate.
> KSRC_linux_yocto ?= "/path/to/local/kernel"
>
> SRC_URI = "git://${KSRC_linux_yocto};protocol=file;nocheckout=1;branch=${KBRANCH};name=machine \
>                  file://defconfig"
>
>
> KERNEL_REVISION_CHECKING=""
> SRCREV="${AUTOREV}"
> #BB_LOCALCOUNT_OVERRIDE = "1"
> LOCALCOUNT = "0"
>
>
> while building we are getting following Error:
>
> NOTE: Executing RunQueue Tasks
> NOTE: Running task 1341 of 1710 (ID: 513, /home/apallan/yocto/poky-edison-6.0/meta/recipes-kernel/linux/linux-yocto_3.0.bb, do_validate_branches)
> NOTE: package linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2: task do_validate_branches: Started
> ERROR: Function 'do_validate_branches' failed (see /home/apallan/yocto/hello_build/tmp/work/u8500-poky-linux-gnueabi/linux-yocto-3.0.4+git1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r2/temp/log.do_validate_branches.16792 for further information)
>
>
> please tell me what we have done wrong?.
> is there anything else we need to modify in .bbappend file or some other variable?.

Which release are you using again ?

The diagnostics out of validate branches are about to get better in master,
but they are coupled with some other tools changes that couldn't go
into yocto 1.2.

Is there anything extra in the log file, or just what you saw on the
build log ?

Validate branches fails like this when you've provided a bad branch or
SRCREV (vs a SRCREV that is simply not the tip of the branch .. it fixes
that scenario) and the fetcher or another git command aborts.

You've output some example text from the bbappend, but what were the real
values in your situation ? i.e. what are KMACHINE/KBRANCH set to ?

There are some flags you can set to exit the branch validation early, but
I don't think setting them is the right course of action yet, since the
error you are seeing is likely hiding some other mis configuration.

Cheers,

Bruce


>
> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@gmail.com]
> Sent: Monday, April 09, 2012 11:04 PM
> To: Om Prakash PAL
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On Mon, Apr 9, 2012 at 12:31 PM, Om Prakash PAL
> <omprakash.pal@stericsson.com>  wrote:
>> Hi Bruce,
>> Thanks for you help.
>> As you have mentioned, its working properly.
>> I want to know that is there any better way of doing same thing for my scenario ?:
>> here is my scenario:
>> We have development branch where we write/modify our kernel/driver code i.e. thats our local kernel repository(git rep)
>> and lots of driver/files being modified everyday-->so I have to take the same effect into yocto kernel also---->  so except  creating patches for all modified drivers and creating .bbappend files, is there any better way of doing same thing .
>
> Aha. Missed that.
>
> Just create a simple recipe that points at your git repository in the SRC_URI.
> If all the changes are in the tree, and you have a defconfig and you
> are building
> the master branch. Then pretty much everything you need can be specified in
> the SRC_URI .. and that's the entire recipe.
>
> If you look in oe-classic, meta-ti or any one of a number of other
> layers, you'll
> find recipes that do just that.
>
> The meta-kernel-dev (in the poky extras) layer has an example of using the
> kernel.org tree with the yocto kern tools, and once yocto 1.3 opens up for
> submissions, I have a set of changes prep'd that make it relatively simple to
> use the yocto kern tools against different types of repository.
>
> So the summary is: Depending on the type of tooling you need, and what baseline
> you need for your work .. there are a number of ways to do things.
>
>>
>> Is there anyway that  instead of using yocto-kernel tree,  can we use our local kernel-tree for building images?. (should  I create separate BSP ?)
>
> You should definitely create a BSP, that way you can tune the system specific
> to your board,
>
> Cheers,
>
> Bruce
>
>>
>> Thanks in advance.
>> Best Regards,
>> Om Prakash Pal
>> ________________________________________
>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>> Sent: Monday, April 09, 2012 9:32 AM
>> To: Om Prakash PAL
>> Cc: yocto@yoctoproject.org
>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>
>> On 12-04-08 10:04 AM, Om Prakash PAL wrote:
>>> Hi Bruce,
>>> Thanks for your reply.
>>> I am totally new to Yocto.
>>> I have gone through the section BSP/Linux kernel configuration and if I am not wrong then it explains how can we configure the kernel, not the how we can add/replace a  component(driver etc).
>>> lets take the example of UART driver, I want to add my own UART driver code.
>>> Should I write a separate recipe file (.bb) for UART Driver?.
>>> if yes then I have to write the recipe files for all my drivers that will be very time consuming.
>>> Is there any other way that I can port all my desired drivers into Yocto kernel?.
>>
>> No recipes are required per-driver, unless you are building them all
>> as out of tree modules.
>>
>> The typical way this is done is to simply work in the extracted linux
>> src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux), manually
>> patch, or copy your drivers into the tree. At this point, you'll port
>> the drivers, doing test builds (bitbake -f -c compile linux-yocto) to
>> ensure that your port is working. When you've completed the build phase,
>> boot tests would be in order. (Do not do a 'clean' or you'll lose in
>> progress changes).
>>
>> When you are happy with the changes, the directory where you were working
>> is with the kernel git repository. So you can simply commit your
>> changes, and generate patches.
>>
>>     git format-patch -o<your directory>  HEAD^ (or however many commits
>> you have)
>>
>> Take those patches, create a layer with a bbappend and add them like
>> any other patch to any package. They'll be applied to subsequent builds
>> of the kernel.
>>
>> I'm skipping a lot of detail there, but it is all found in the various
>> manuals, and I don't want to repeat it here.
>>
>> Cheers,
>>
>> Bruce
>>
>>> Please help me.
>>> Thanks a lot in advance.
>>>
>>> Best Regards,
>>> Om Prakash Pal
>>> ________________________________________
>>> From: Bruce Ashfield [bruce.ashfield@windriver.com]
>>> Sent: Wednesday, April 04, 2012 6:17 PM
>>> To: Om Prakash PAL
>>> Cc: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>>>
>>> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>>>> Hi,
>>>> I want to build my local kernel/Driver code, not the default one.
>>>> please help how can i do it ?.
>>>> any wiki/docs on this?.
>>>
>>> The BSP developer guides show how to extend the yocto kernels, and
>>> also have sections on custom/different kernel versions. Have you
>>> seen that doc yet ? Or have you seen it, and have specific questions ?
>>>
>>> Bruce
>>>
>>>>
>>>> Best Regards,
>>>> Om Prakash Pal
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
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


