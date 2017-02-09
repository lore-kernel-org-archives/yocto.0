Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A957E009EA; Thu,  9 Feb 2017 01:18:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.138 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.138])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60202E006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 01:18:44 -0800 (PST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.165.252])
	by regular1.263xmail.com (Postfix) with ESMTP id 75E047A43;
	Thu,  9 Feb 2017 17:18:36 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from smtp.263.net (sg-smtp01.263.net [54.255.195.220])
	by smtp.263.net (Postfix) with ESMTP id 4EF023CF;
	Thu,  9 Feb 2017 17:18:36 +0800 (CST)
Received: from [172.20.10.10] (localhost.localdomain [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id 54779DF202;
	Thu,  9 Feb 2017 17:18:25 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: eddie.cai@rock-chips.com
X-SENDER-IP: 202.68.200.147
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <05b3cee225578f58dac12c6864ce5f51>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.20.10.10] (unknown [202.68.200.147])
	by smtp.263.net (Postfix) whith ESMTP id 15121498HZ0;
	Thu, 09 Feb 2017 17:18:28 +0800 (CST)
To: Eddie Cai <eddie.cai.linux@gmail.com>,
	Jacob Chen <jacob2.chen@rock-chips.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
	<33ec9539-bc2b-064f-a5c2-5b761841af00@rock-chips.com>
	<CAJrj+DME6M2NydRpVk3ks5QqsO0m8mKGC6BaT+vnVQXcvgPCDA@mail.gmail.com>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <26d9dd9e-8276-d414-f892-bbd91e134b5e@rock-chips.com>
Date: Thu, 9 Feb 2017 17:18:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJrj+DME6M2NydRpVk3ks5QqsO0m8mKGC6BaT+vnVQXcvgPCDA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Eddie Cai <eddie.cai@rock-chips.com>
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
X-List-Received-Date: Thu, 09 Feb 2017 09:18:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


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
I send the wrong draft due to the poor network... Please ignore the e.g...

What i think it's that the users should always get image with  all 
features enabled  with default settings.
I will be killed if i let them to set each settings one by one in 
local.conf to enable features....
ok to change name and split file, but i think the things it contianed is 
needed.

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

split rk-linux.inc into
rk-base.inc
rk-vendor-providers.inc
rk-vendor-settings.inc
rk-vendor-versions.inc
rk-community-providers.inc
rk-community-settings.inc
rk-community-versions.inc

?

Hmmm, it look more clearly than rk-linux.inc.

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


