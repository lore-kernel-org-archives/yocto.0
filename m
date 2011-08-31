Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AE1E0076F
	for <yocto@yoctoproject.org>; Wed, 31 Aug 2011 12:33:25 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:31924
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1QyqXL-0002pe-QS; Wed, 31 Aug 2011 20:33:23 +0100
Message-Id: <A03B490E-95AF-4E98-816C-A74154CE950E@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1314727662.5939.388.camel@rex>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 31 Aug 2011 20:33:21 +0100
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
	<1314727662.5939.388.camel@rex>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Wed, 31 Aug 2011 19:33:26 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

On 30 Aug 2011, at 19:07, Richard Purdie wrote:

> On Fri, 2011-08-12 at 00:51 +0100, Chris Tapp wrote:
>> I've got a linux-wrs_git.bbappend file in a layer (under poky laverne
>> 4.0.1) that contains:
>>
>> COMPATIBLE_MACHINE_Vortex86DX = "Vortex86DX"
>> WRMACHINE_Vortex86DX  = "common_pc"
>>
>> FILESEXTRAPATHS := "${THISDIR}/${PN}"
>>
>> SRC_URI += " file://defconfig"
>>
>> Where should the defconfig file be relative to the bbappend?
>>
>> I've tried:
>>
>> MyLayer
>>       +--- recipies
>>                   +--- linux
>>                            +--- linux-wrs_git.bbappend
>>                            +--- linux-wrs_git
>>                                             +--- defconfig
>>
>>
>> However, my defconfig file isn't being picked up during do_unpack:
>>
>> cp: cannot stat `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/
>> recipes-kernel/linux/files/defconfig': No such file or directory
>> NOTE: Unpacking /home/chris/yocto/yocto-downloads/
>> git_git.pokylinux.org.linux-2.6-windriver.git.tar.gz to /home/chris/
>> yocto/mbox-3300-build/tmp/work/Vortex86DX-poky-linux/linux-
>> wrs
>> -2.6.34
>> +
>> git0
>> +
>> b67e060194a38c6331da1532bd06446087a42b3b_0
>> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
>> NOTE: Unpacking /home/chris/yocto/yocto-versions/laverne-4.0.1/meta/
>> recipes-kernel/linux/files/defconfig to /home/chris/yocto/mbox-3300-
>> build/tmp/work/Vortex86DX-poky-linux/linux-
>> wrs
>> -2.6.34
>> +
>> git0
>> +
>> b67e060194a38c6331da1532bd06446087a42b3b_0
>> +0431115c9d720fee5bb105f6a7411efb4f851d26-r12/
>> ERROR: Task failed:
>>
>> Which seems to show that it's not looking in FILESEXTRAPATHS.
>>
>> The .bbappend file seems to be processed, as commenting out the
>> SRC_URI line gets rid of the error.
>>
>> What have I got wrong?
>
> I've just been looking at the open bug related to this
> (http://bugzilla.yoctoproject.org/show_bug.cgi?id=1379) and I can't
> reproduce an issue with layers ending with -numeric causing a
> problem :/.
>
> In the above example,
>
> recipies/linux/linux-wrs/defconfig
>
> is the correct path since PN == "linux-wrs". (you had linux-wrs_git).
> Could you check whether the layer numeric part is a red herring please
> and whether the above path works?

Hi Richard,

Sorry for the delay in looking at this again.

I can't re-create the behaviour here either, though it was repeatable  
before. However, since then I've made quite a few changes to the  
recipe and done a complete re-build.

It was also failing with the correct paths - I was trying all sorts of  
combinations when the correct one wasn't working!

I'll try and do some more testing here (with what I think the recipe  
was at the time) to see if I can get it to show again. I've only got a  
slow build machine, so it may take a while ;-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




