Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7988E004EB; Wed, 30 Apr 2014 03:25:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E25DE003C7
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 03:25:02 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WfRhD-0003Ql-Vf
	for yocto@yoctoproject.org; Wed, 30 Apr 2014 12:24:59 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 12:24:59 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 12:24:59 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Wed, 30 Apr 2014 12:24:43 +0200
Message-ID: <5360CF6B.1020007@gmx.de>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>
	<535E59A1.1080808@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <535E59A1.1080808@windriver.com>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Wed, 30 Apr 2014 10:25:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Bruce

Have you got any further?

I currently use a "defconfig" replacement, but honestly, it feels very
dumb. Fragments seem to be much smarter to combine and test different
configurations.

Cheers

Michael

Am 28.04.2014 15:37, schrieb Bruce Ashfield:
> On 14-04-28 09:35 AM, Neuer User wrote:
>> Am 28.04.2014 15:16, schrieb Bruce Ashfield:
>>> It all depends on how adventurous you are today :) Using a defconfig
>>> will work, and you can generate one without much trouble. Using
>>> fragments will allow you to keep your changes separate from the
>>> baseline configuration, but you'll need to tweak the recipe .. which
>>> always carries a risk of some unexpected side effects.
>>>
>>> I'm around to help regardless of which way you chose.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>
>> Well, I looked at the linux-yocto file and tried a couple of
>> combinations in my bbappend. All of them geenrated lots of different
>> errors.
> 
> If you send me pointers to your bblayers and local.conf settings, I'll
> run a build to see what happens here as well.
> 
> I'm always interested in tracking these down regardless.
> 
> Bruce
> 
>>
>> e.g. I used:
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
>>
>> SRC_URI += "file://videoin.cfg"
>>
>> addtask kernel_configme before do_configure after do_patch
>>
>> # Pick up shared functions
>> inherit kernel
>> inherit kernel-yocto
>> #require linux-dtb.inc
>>
>> # extra tasks
>> addtask kernel_configcheck after do_configure before do_compile
>>
>>
>> The error messages are too long to include here :-/
>>
>> Guess, it is probably best to go the defconfig way.
>>
> 



