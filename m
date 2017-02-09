Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 900FCE009CD; Wed,  8 Feb 2017 20:24:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1795EE00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 20:23:58 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id C2CEA68A01C; Thu,  9 Feb 2017 04:23:56 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 4A0D768A019;
	Thu,  9 Feb 2017 04:23:56 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B3D4867402A6;
	Thu,  9 Feb 2017 05:23:55 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
References: <39e27fc1-7ad6-9411-5cd1-96628e962f75@mlbassoc.com>
	<89ae4442-5ec2-7d25-1245-dc4e9af683b9@mlbassoc.com>
	<15650683.oLyvIqKQ2l@peggleto-mobl.ger.corp.intel.com>
Message-ID: <31b81d5d-a30a-3a1a-bdcd-9a91b03d7b85@mlbassoc.com>
Date: Thu, 9 Feb 2017 05:23:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <15650683.oLyvIqKQ2l@peggleto-mobl.ger.corp.intel.com>
Subject: Re: sysroot question
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
X-List-Received-Date: Thu, 09 Feb 2017 04:24:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-08 20:36, Paul Eggleton wrote:
> Hi Gary,
>
> On Wednesday, 8 February 2017 12:12:25 PM NZDT Gary Thomas wrote:
>> On 2017-02-08 11:42, Gary Thomas wrote:
>>> I had a recipe that used to work and now fails after the change
>>> to the split sysroots.  I'm building an out-of-tree kernel module
>>> and patterned my recipe after the meta-skeleton example. My recipe
>>> has this setup:
>>>
>>> inherit module-base kernel-module-split
>>>
>>> do_compile() {
>>>
>>>     unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>>>     oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
>>>
>>>            KERNEL_VERSION=${KERNEL_VERSION}    \
>>>            CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
>>>            AR="${KERNEL_AR}" \
>>>
>>>                O=${STAGING_KERNEL_BUILDDIR} \
>>>
>>>            install
>>>
>>> }
>>>
>>> The problem is that ${CC} (arm-amltd-linux-gnueabi-gcc) can no longer be
>>> found.  I know it's available, just not sure what needs to change to be
>>> able to find it.
>>>
>>> $ find tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/ -name "arm*gcc"
>>> tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-r0/recipe-sysr
>>> oot-native/usr/libexec/arm-amltd-linux-gnueabi/gcc/arm-amltd-linux-gnueabi
>>> /5.4.0/arm-amltd-linux-gnueabi-gcc
>>>
>>> tmp/work/teton_p7618-amltd-linux-gnueabi/my-module/5.2.2-r2-r0/recipe-sysr
>>> oot-native/usr/bin/arm-amltd-linux-gnueabi/arm-amltd-linux-gnueabi-gcc
>>
>> It looks like the failure is actually happening in a class method
>> (make_scripts) My recipe also contains this
>>    addtask make_scripts after do_patch before do_compile
>> which doesn't seem to be setting the ${PATH} correctly anymore.
>>
>> Any ideas what might be missing?
>>
>> Note: just moving the call to do_make_scripts to the top of do_compile
>> instead of running it as a separate task fixes the problem.
>
> I think the problem is that the task that prepares the sysroot
> (do_prepare_recipe_sysroot) isn't a dependency of your task. module.bbclass
> uses this:
>
> addtask make_scripts after do_prepare_recipe_sysroot before do_compile
>
> BTW you say you patterned your recipe after the skeleton example, except
> hello-mod at least currently inherits module rather than module-base + kernel-
> module-split - is there a compelling reason not to inherit module?

I may have been mistaken about the original source - it looks like I
used a similar module strategy from meta-freescale.  I did [just now]
try using "inherit module" and the build dies a horrible death with
this error
| make: *** No rule to make target 'modules_install'.  Stop.

I changed my [task] dependencies to match what you've quoted and everything
works as before.  !Thanks!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

