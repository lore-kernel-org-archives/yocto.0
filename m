Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33DB4E00CC0; Mon,  5 Sep 2016 19:07:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92A16E00CB4
	for <yocto@yoctoproject.org>; Mon,  5 Sep 2016 19:07:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u8627f6Q011074
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 5 Sep 2016 19:07:46 -0700 (PDT)
Received: from server.local (147.11.117.90) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Mon, 5 Sep 2016 19:07:41 -0700
To: Mircea Gliga <mircea.gliga@vitheia.com>, <yocto@yoctoproject.org>
References: <a32fef25-dfed-2e61-1a38-e79063078062@vitheia.com>
	<704c1142-0ba3-f5df-2801-c6d31ee19574@windriver.com>
	<e59e7316-2027-85f0-26a4-c9bbabd504a9@vitheia.com>
	<706ab63f-2747-a14f-1ce6-dab3c1accbfc@windriver.com>
	<1b067ad8-be70-c4ff-1e85-96967cb578a8@vitheia.com>
	<3876aba6-a0ec-b575-0b68-2d76193f1e42@windriver.com>
	<83171542-fd07-a930-b61c-59b6fbcda184@windriver.com>
	<bf568d3b-bfb2-6f98-2e83-0b14fb6583d0@vitheia.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <b527f705-608e-9225-d589-68de1583b5f3@windriver.com>
Date: Mon, 5 Sep 2016 22:07:40 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <bf568d3b-bfb2-6f98-2e83-0b14fb6583d0@vitheia.com>
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
X-List-Received-Date: Tue, 06 Sep 2016 02:07:56 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-09-05 6:06 AM, Mircea Gliga wrote:
> Thanks Bruce for your help!
>
> It works now, with the defconfig from 4.8.

Great news!

Bruce

>
> Have a nice day !
> Mircea
>
> On 09/02/2016 06:26 PM, Bruce Ashfield wrote:
>> On 2016-09-02 09:58 AM, Bruce Ashfield wrote:
>>> On 2016-09-02 03:51 AM, Mircea Gliga wrote:
>>>> Hi Bruce,
>>>>
>>>> Do you have any new input in regards with qemuarm booting with kernel
>>>> 4.7.2 LTS ?
>>>> Have you managed to test this ?
>>>> I wander if this can be reproduce elsewhere and what's the solution
>>>> for it.
>>>
>>> I was tied up with the introduction of the 4.8 kernel, but I *think*
>>> the coast is clear on that front (for the moment).
>>>
>>> I can try and spin up a korg based 4.7.x build and see how it goes.
>>
>> The issue is in your defconfig.
>>
>> qemuarm login: root
>> root@qemuarm:~# uname -a
>> Linux qemuarm 4.7.2-yocto-standard #1 PREEMPT Fri Sep 2 11:15:30 EDT
>> 2016 armv5tejl GNU/Linux
>> root@qemuarm:~#
>>
>> I created a similar recipe:
>>
>> --------
>> inherit kernel
>>
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-stable:"
>>
>> KBRANCH ?= "linux-4.7.y"
>>
>> SRCREV ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>>
>> KBRANCH ?= "linux-4.7.y"
>> SRCREV_machine_qemuarm ?= "84fae3f89282ce86a0c0da30e35fe66dbcadda6f"
>>
>> KERNEL_DEVICETREE_qemuarm = "versatile-pb.dtb"
>>
>> KBRANCH_qemuarm ?= "linux-4.7.y"
>>
>> SRC_URI =
>> "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;bareclone=1;branch=${KBRANCH}"
>>
>>
>> SRC_URI += "file://defconfig"
>>
>> LINUX_VERSION = "4.7.2"
>> PV = "${LINUX_VERSION}+git${SRCPV}"
>>
>> COMPATIBLE_MACHINE = "qemuarm"
>>
>> ----------
>>
>> And I took the "defconfig" from the -stable tree (the
>> defconfig_versatile).
>>
>> When I built and booted that, I had no output.
>>
>> So I grabbed the .config from my 4.8 build, copied it into my layer
>> as the 'defconfig', rebuilt .. and was able to log in with the prompt
>> you see above.
>>
>> So the 4.7 defconfig is missing something, I didn't iterate to find
>> it.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>>
>>> Bruce
>>>
>>>>
>>>> Thanks
>>>> Mircea
>>>>
>>>> On 08/30/2016 06:09 PM, Bruce Ashfield wrote:
>>>>>
>>>>> I'm finishing up 4.8 today, but without doing a boot test, I can't say
>>>>> for sure. I'll see if I can cycle in some korg 4.7.x testing
>>>>> tomorrow to
>>>>> see if I can get a clean boot.
>>>>
>>>
>>
>


