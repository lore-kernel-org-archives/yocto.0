Return-Path: <jacob2.chen@rock-chips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65075E009CD; Wed,  8 Feb 2017 23:24:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [211.150.99.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 2045 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Feb 2017 23:24:08 PST
Received: from regular1.263xmail.com (regular1.263xmail.com [211.150.99.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71627E00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 23:24:08 -0800 (PST)
Received: from jacob2.chen?rock-chips.com (unknown [192.168.165.252])
	by regular1.263xmail.com (Postfix) with ESMTP id 76F9F4A89;
	Thu,  9 Feb 2017 15:24:03 +0800 (CST)
X-263anti-spam: KSV:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ABS-CHECKED: 4
Received: from smtp.263.net (va-smtp01.263.net [54.88.144.211])
	by smtp.263.net (Postfix) with ESMTP id EDB653E0;
	Thu,  9 Feb 2017 15:24:02 +0800 (CST)
Received: from [172.20.10.10] (localhost.localdomain [127.0.0.1])
	by smtp.263.net (Postfix) with ESMTP id 015C79F603;
	Thu,  9 Feb 2017 15:23:45 +0800 (CST)
X-RL-SENDER: jacob2.chen@rock-chips.com
X-FST-TO: eddie.cai@rock-chips.com
X-SENDER-IP: 202.68.200.147
X-LOGIN-NAME: jacob2.chen@rock-chips.com
X-UNIQUE-TAG: <44b2c99573d053309b90a766a473b970>
X-ATTACHMENT-NUM: 0
X-SENDER: jacob2.chen@rock-chips.com
X-DNS-TYPE: 0
Received: from [172.20.10.10] (unknown [202.68.200.147])
	by smtp.263.net (Postfix) whith ESMTP id 28983WTOLRS;
	Thu, 09 Feb 2017 15:23:48 +0800 (CST)
To: Trevor Woerner <twoerner@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-5-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDoLt2RbidD-3L93UkjLuaXn_eoB08=HqLaHsD9=8nLpqmQ@mail.gmail.com>
	<CAHUNapRxFr0kj_ZGv7GW10WySyOgU3g7Zr5B+1UTjULCxtd=cw@mail.gmail.com>
From: Jacob Chen <jacob2.chen@rock-chips.com>
Message-ID: <2aa1072c-b51f-9e04-fd95-64e9a6330f63@rock-chips.com>
Date: Thu, 9 Feb 2017 15:23:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAHUNapRxFr0kj_ZGv7GW10WySyOgU3g7Zr5B+1UTjULCxtd=cw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Jacob Chen <jacob-chen@iotwrt.com>, Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 4/7] recipes-graphics: Add support for mali-userspace
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
X-List-Received-Date: Thu, 09 Feb 2017 07:24:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,


Trevor Woerner wrote on 2017年01月28日 09:44:
> On Fri, Jan 27, 2017 at 9:41 AM, Romain Perier <romain.perier@gmail.com> wrote:
>> Hi all,
>>
>> Correct me if I am wrong, but these are generic mali userpace binaries ?
>> meta-rockchip is a bsp meta layer, it should only contains files and recipes
>> to make rockchip board working or things specific to the rockchip board. For
>> me these recipes are completly generic and might be re-used for another
>> platform with another SoC.
>>
>> I don't want this in meta-rockchip. There is no a layer called meta-mali or
>> something ?
>>
>> @Trevor: Feel free to comment, the point of view of the second maintainer is
>> always welcome
> :-)
>
>
> I was just about to point out that there is no meta-mali, and that
> most BSP layers do include their own recipes for mali (meta-sunxi,
> meta-96boards, meta-xilinx) but, googling around, there is in fact a
> meta-mali provided my ARM itself:
> https://github.com/ARM-software/meta-mali . So I guess we could go
> either way. Although I haven't looked at what's specifically provided
> in meta-mali to know if it would be useful or not.
>

I think GPU is a part of SOC. Other bsp meta layer also contain gpu 
userpace binaries.
And, mali userpace binaries are not very generic, there are different in 
hardware versions, software versions and backends.
e.g:
     rk3288's GPU is T76x-r0p0 but rk3288w's GPU is T76x-r1p0, so they 
have to use different binaries.




