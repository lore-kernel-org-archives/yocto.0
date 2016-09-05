Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C9E2E00A30; Mon,  5 Sep 2016 03:06:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F03BE009F8
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 03:06:08 -0700 (PDT)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.13.8/8.13.8) with ESMTP id u85A65LH014276
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NO)
	for <yocto@yoctoproject.org>; Mon, 5 Sep 2016 13:06:05 +0300
To: yocto@yoctoproject.org
References: <a32fef25-dfed-2e61-1a38-e79063078062@vitheia.com>
	<704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com>
	<e59e7316-2027-85f0-26a4-c9bbabd504a9@vitheia.com>
	<706ab63f-2747-a14f-1ce6-dab3c1accbfc@windriver.com>
	<1b067ad8-be70-c4ff-1e85-96967cb578a8@vitheia.com>
	<3876aba6-a0ec-b575-0b68-2d76193f1e42@windriver.com>
	<83171542-fd07-a930-b61c-59b6fbcda184@windriver.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <bf568d3b-bfb2-6f98-2e83-0b14fb6583d0@vitheia.com>
Date: Mon, 5 Sep 2016 13:06:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.2.0
MIME-Version: 1.0
In-Reply-To: <83171542-fd07-a930-b61c-59b6fbcda184@windriver.com>
Subject: Re: custom linux kernel recipe
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
X-List-Received-Date: Mon, 05 Sep 2016 10:06:14 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Thanks Bruce for your help!

It works now, with the defconfig from 4.8.

Have a nice day !
Mircea

On 09/02/2016 06:26 PM, Bruce Ashfield wrote:
> On 2016-09-02 09:58 AM, Bruce Ashfield wrote:
>> On 2016-09-02 03:51 AM, Mircea Gliga wrote:
>>> Hi Bruce,
>>>
>>> Do you have any new input in regards with qemuarm booting with kernel
>>> 4.7.2 LTS ?
>>> Have you managed to test this ?
>>> I wander if this can be reproduce elsewhere and what's the solution
>>> for it.
>>
>> I was tied up with the introduction of the 4.8 kernel, but I *think*
>> the coast is clear on that front (for the moment).
>>
>> I can try and spin up a korg based 4.7.x build and see how it goes.
>
> The issue is in your defconfig.
>
> qemuarm login: root
> root@qemuarm:~# uname -a
> Linux qemuarm 4.7.2-yocto-standard #1 PREEMPT Fri Sep 2 11:15:30 EDT 
> 2016 armv5tejl GNU/Linux
> root@qemuarm:~#
>
> I created a similar recipe:
>
> --------
> inherit kernel
>
> require recipes-kernel/linux/linux-yocto.inc
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-stable:"
>
> KBRANCH ?= "linux-4.7.y"
>
> SRCREV ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>
> KBRANCH ?= "linux-4.7.y"
> SRCREV_machine_qemuarm ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>
> KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb"
>
> KBRANCH_qemuarm ?= "linux-4.7.y"
>
> SRC_URI = 
> "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;bareclone=1;branch=${KBRANCH}"
>
> SRC_URI += "file://defconfig"
>
> LINUX_VERSION = "4.7.2"
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE = "qemuarm"
>
> ----------
>
> And I took the "defconfig" from the -stable tree (the 
> defconfig_versatile).
>
> When I built and booted that, I had no output.
>
> So I grabbed the .config from my 4.8 build, copied it into my layer
> as the 'defconfig', rebuilt .. and was able to log in with the prompt
> you see above.
>
> So the 4.7 defconfig is missing something, I didn't iterate to find
> it.
>
> Cheers,
>
> Bruce
>
>
>>
>> Bruce
>>
>>>
>>> Thanks
>>> Mircea
>>>
>>> On 08/30/2016 06:09 PM, Bruce Ashfield wrote:
>>>>
>>>> I'm finishing up 4.8 today, but without doing a boot test, I can't say
>>>> for sure. I'll see if I can cycle in some korg 4.7.x testing 
>>>> tomorrow to
>>>> see if I can get a clean boot.
>>>
>>
>


