Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9593DE009A7; Sat, 18 Feb 2017 04:32:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D88E00961
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 04:32:24 -0800 (PST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.167.171])
	by regular1.263xmail.com (Postfix) with ESMTP id 34847AD5D
	for <yocto@yoctoproject.org>; Sat, 18 Feb 2017 20:32:16 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from [192.168.10.237] (localhost [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id CC0F3360;
	Sat, 18 Feb 2017 20:32:16 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: eddie.cai@rock-chips.com
X-SENDER-IP: 222.76.57.195
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <6caaa9a6f5a76e0bec02814faa4731e5>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 7
Received: from [192.168.10.237]
	(195.57.76.222.broad.fz.fj.dynamic.163data.com.cn [222.76.57.195])
	by smtp.263.net (Postfix) whith ESMTP id 209419X9YN9;
	Sat, 18 Feb 2017 20:32:17 +0800 (CST)
To: Eddie Cai <eddie.cai.linux@gmail.com>,
	Jacob Chen <jacob2.chen@rock-chips.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
	<33ec9539-bc2b-064f-a5c2-5b761841af00@rock-chips.com>
	<CAJrj+DME6M2NydRpVk3ks5QqsO0m8mKGC6BaT+vnVQXcvgPCDA@mail.gmail.com>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <5257d103-7931-d8f9-1306-27e10baa788e@rock-chips.com>
Date: Sat, 18 Feb 2017 20:32:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJrj+DME6M2NydRpVk3ks5QqsO0m8mKGC6BaT+vnVQXcvgPCDA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Eddie Cai <eddie.cai@rock-chips.com>, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Sat, 18 Feb 2017 12:32:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi all,


Sorry, I found that rk-linux.inc could be moved to distro conf .....

I know why you guys are opposed to it now.

I will remove it from machine conf,  but i'm still confused about 
whether TUNES is machines specific or distro
specific.



Eddie Cai wrote on 2017年02月09日 16:20:
> HI
>
> 2017-02-09 14:49 GMT+08:00 Jacob Chen <jacob2.chen@rock-chips.com>:
>> Hi
>>
>>
>> Trevor Woerner wrote on 2017年01月28日 03:41:
>>
>> On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <romain.perier@gmail.com>
>> wrote:
>>
>> Could you:
>> - Make one patch per new machine file and not one patch for all new added
>> machine
>>
>> Agreed.
>>
>> Are all of these machines actual devices? The evb one doesn't sound real.
>>
>> Are all of these machines released and available for purchase? I've
>> heard of the tinkerboard (although I can't seem to find one I can
>> actually buy) but I haven't heard of the fennec.
>>
>>
>> I think i should only leave tinker board here.
>> We have a lot of boards which are not open to the public,  it's not suitable
>> to push them to the community.
>>
>> - Add a clear @DESCRIPTION for each board, see an example here:
>> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/machine/firefly-rk3288.conf
>> - Write a clear and an understandable commit message for your new patches
>>
>> @Trevor: What do you think about this rk-linux.inc ? I don't like this,
>> either its name and what it contains.
>>
>> First off, I think it's really great to see people contributing to
>> meta-rockchip! :-)
>>
>> This entire set of patches seems to be adding "official" support for
>> the rockchip devices; in other words, these recipes will help you to
>> create builds that use the official rockchip sources. That is great.
>> But I think a good BSP gives a user all the possibilities but then
>> leaves the final decision up to them.
>>
>>
>> : ) That's the reason why we try to push patches to here, we want that
>> "meta-rockchip" can
>> build between vendor old kernel/new kernel/old u-boot/new u-boot and
>> mainline kernel/u-boot
>>   well.  Community people might help develop mainline things.
>>
>> So I agree with Romain, I think the name could use more work. It would
>> be nice if this set of patches included something in the name that let
>> the user know these build from official sources. Then the user could
>> decide whether they want to use the official rockchip sources, or
>> whether they want to build from upstream. So I'm not opposed to the
>> idea of adding recipes for official sources, I'd like like to see them
>> added in a way that leaves the decision with the user.
>>
>>
>>
>> I added rk-linux.inc because i need a place to set up verndor-BSP default
>> settings.
>> I want that the user can choose various combinations by change the include
>> file in machine file.
>> e.g:
>>      rk-linux.inc for linux-rockchip 4.4 + u-boot-rockchip-nex-dev
>>      rk-linux.inc + rk-uboot.inc for linux-rockchip + u-boot-rockchip
>>
>>      rk-linux.inc for linux-mainline + u-boot-mainline
>>
>> BTW, which name you think is better?
> What about follow raspberrypi?
> ├── include
> │   ├── rpi-base.inc
> │   ├── rpi-default-providers.inc
> │   ├── rpi-default-settings.inc
> │   ├── rpi-default-versions.inc
> │   └── tune-arm1176jzf-s.inc
> ├── raspberrypi0.conf
> ├── raspberrypi2.conf
> ├── raspberrypi3.conf
> └── raspberrypi.conf
>
>
>>
>> That's it for now.
>> Thanks for your patches
>>
>> +1 :-)
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>



