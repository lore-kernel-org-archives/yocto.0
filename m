Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5A1AE00B5F; Wed,  8 May 2019 09:19:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41CD0E00ADB
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 09:19:43 -0700 (PDT)
Received: from [IPv6:2001:470:b30d:2:c604:15ff:0:8bf] (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:8bf])
	by kozue.soulik.info (Postfix) with ESMTPSA id 28E261001E5;
	Thu,  9 May 2019 01:20:17 +0900 (JST)
To: Trevor Woerner <twoerner@gmail.com>
References: <20190424145918.26040-1-ayaka@soulik.info>
	<20190424145918.26040-4-ayaka@soulik.info>
	<20190504030638.GB26588@linux-uys3>
	<15a392f0-fbec-cfce-980b-6904bf7e222c@soulik.info>
	<20190506133157.GA14979@linux-uys3>
From: ayaka <ayaka@soulik.info>
Message-ID: <4bfa5df9-dc5a-0ecb-c92f-5714ddaf2d89@soulik.info>
Date: Thu, 9 May 2019 00:19:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190506133157.GA14979@linux-uys3>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 3/3] recipes-bsp/u-boot: update to the latest version
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
X-List-Received-Date: Wed, 08 May 2019 16:19:44 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 5/6/19 9:31 PM, Trevor Woerner wrote:
> On Sat 2019-05-04 @ 06:43:34 PM, ayaka wrote:
>> On 5/4/19 11:06 AM, Trevor Woerner wrote:
>>> On Wed 2019-04-24 @ 10:59:18 PM, Randy 'ayaka' Li wrote:
>>>> From: Randy Li <ayaka@soulik.info>
>>>>
>>>> Signed-off-by: Randy Li <ayaka@soulik.info>
>>>> ---
>>>>    recipes-bsp/u-boot/u-boot-rockchip_git.bb | 18 ++++++++++++++++++
>>>>    1 file changed, 18 insertions(+)
>>>>    create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>>
>>>> diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>> new file mode 100644
>>>> index 0000000..aa4b84d
>>>> --- /dev/null
>>>> +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>>> @@ -0,0 +1,18 @@
>>>> +# Copyright (C) 2019 SUMOMO Computer Assocation
>>>> +# Released under the MIT license (see COPYING.MIT for the terms)
>>>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>>> +
>>>> +include u-boot-rockchip.inc
>>>> +
>>>> +DESCRIPTION = "Rockchip U-Boot"
>>>> +
>>>> +LIC_FILES_CHKSUM = "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
>>>> +
>>>> +SRC_URI = " \
>>>> +	git://github.com/rockchip-linux/u-boot.git;branch=release; \
>>>> +	file://binutils-2.28-ld-fix.patch \
>>>> +	file://gcc7_fixup.patch \
>>>> +	"
>>>> +
>>>> +S = "${WORKDIR}/git"
>>>> +PV = "v2019.01"
>>> This doesn't even get past the fetching stage:
>> I am sorry, I forget that ssh git protocol only work for those users who
>> uploaded their key to the github, I would change it back to https.
>>> 	WARNING: u-boot-rockchip-1_v2019.01-r0 do_fetch: Failed to fetch URL git://github.com/rockchip-linux/u-boot.git;branch=release;, attempting MIRRORS if available
>>> 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure: Unable to find revision 3c99166441bf3ea325af2da83cfe65430b49c066 in branch release even from upstream
>>> 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure for URL: 'git://github.com/rockchip-linux/u-boot.git;branch=release;'. Unable to fetch URL from any source.
>>> 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch:
>>> 	ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Function failed: base_do_fetch
>>> 	ERROR: Task (/opt/oe/configs/z/build-master/meta-rockchip/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.bb:do_fetch) failed with exit code '1'
> The problem is that it's trying to fetch commit 3c9916 which doesn't exist on
> github.com/rockchip-linux/u-boot.git. That revision is on upstream U-Boot.
How comes? I didn't write any commit id there, it is based on the branch 
at all.

