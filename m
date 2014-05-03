Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 799C9E009C5; Sat,  3 May 2014 01:44:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848C7E009BA
	for <yocto@yoctoproject.org>; Sat,  3 May 2014 01:44:03 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WgVY5-0001rc-PB
	for yocto@yoctoproject.org; Sat, 03 May 2014 10:43:57 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 03 May 2014 10:43:57 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 03 May 2014 10:43:57 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Sat, 03 May 2014 10:43:39 +0200
Message-ID: <lk2a7r$kan$1@ger.gmane.org>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>	<535E59A1.1080808@windriver.com>	<ljlmib$45t$1@ger.gmane.org>	<53616636.5000509@windriver.com>	<5361CDAE.8050206@windriver.com>	<5361EA76.1080604@gmx.de>	<53628066.7060300@windriver.com>
	<5363D4E2.2080006@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
In-Reply-To: <5363D4E2.2080006@windriver.com>
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
X-List-Received-Date: Sat, 03 May 2014 08:44:07 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

That's great! And just one line to add. Perfect solution!

Thanks a lot!

Michael

Am 02.05.2014 19:24, schrieb Bruce Ashfield:
> On 14-05-01 01:12 PM, Bruce Ashfield wrote:
>> On 14-05-01 02:32 AM, Neuer User wrote:
>>> Hi Bruce
>>>
>>> Here is the error messega, I get after a "bitbake linux-cubox-i -c
>>> cleansstate; bitbake linux-cubox-i" using the recipe you posted:
>>
>> Aha. This is what I was seeing as well, and there's some issues and
>> assumptions
>> that are built into those kernel recipes that are causing the yocto
>> tools to attempt a patch (which is already on the branch) and hence
>> the failure (the recipes should really be tweaked .. but I digress).
>>
>> I'm prepping a small patch that will have this particular recipe and
>> use case working out of the box.
> 
> ... and I managed to get this working without a patch. You just
> need the following as your bbappend:
> 
> ----------------
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> 
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
> 
> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
> 
> SRC_URI += "file://videoin.cfg"
> 
> SRCREV_machine = "${SRCREV}"
> ----------------
> 
> The key is the addition of SRCREV_machine. It deals with the issue
> that I mentioned with the kernel recipes. They have a series of patches
> that are already on the branch being built. But yet the SRCREV backs
> the branch off and allows the patches to apply (something I wouldn't
> do .. but that's not the point).
> 
> The linux-yocto validation can do a similar back off, but it currently
> triggers on SRCREV_machine, which wasn't set .. this is already fixed
> in my current series that will go out for Yocto 1.7.
> 
> After this:
> 
> ]> pwd
> /home/bruce/poky/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0
> 
> yow-bashfiel-d3 [/home/bruc.../3.0.35-r0]> grep CONFIG_VIDEO_ADV7180
> linux-cubox_i-standard-build/.config
> CONFIG_VIDEO_ADV7180=y
> 
> Note, the fragment you were working with needs this:
> 
>> cat videoin.cfg
> CONFIG_VIDEO_CAPTURE_DRIVERS=y
> CONFIG_VIDEO_ADV7180=y
> 
> Or you'll be missing a dependency and have the config dropped from
> the final .config.
> 
> Bruce
> 



