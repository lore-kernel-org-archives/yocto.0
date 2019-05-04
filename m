Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF089E0097C; Sat,  4 May 2019 03:44:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FFD4E00798
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 03:44:45 -0700 (PDT)
Received: from [IPv6:2001:470:b30d:2:c604:15ff:0:8bf] (unknown
	[IPv6:2001:470:b30d:2:c604:15ff:0:8bf])
	by kozue.soulik.info (Postfix) with ESMTPSA id 03E17100A7D;
	Sat,  4 May 2019 19:45:14 +0900 (JST)
To: Trevor Woerner <twoerner@gmail.com>
References: <20190424145918.26040-1-ayaka@soulik.info>
	<20190424145918.26040-2-ayaka@soulik.info>
	<20190504030217.GA26588@linux-uys3>
From: ayaka <ayaka@soulik.info>
Message-ID: <c9812fc2-d1ff-37c5-d48c-5807bec872db@soulik.info>
Date: Sat, 4 May 2019 18:44:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190504030217.GA26588@linux-uys3>
Cc: yocto@yoctoproject.org, Randy Li <randy.li@rock-chips.com>
Subject: Re: [PATCH 1/3] recipes-bsp/u-boot: fixup build for gcc7
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
X-List-Received-Date: Sat, 04 May 2019 10:44:45 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 5/4/19 11:02 AM, Trevor Woerner wrote:
> On Wed 2019-04-24 @ 10:59:16 PM, Randy 'ayaka' Li wrote:
>> Signed-off-by: Randy Li <randy.li@rock-chips.com>
>> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
>> ---
>>   .../u-boot/u-boot-rockchip/gcc7_fixup.patch   | 38 +++++++++++++++++++
> Why do we care about gcc7 on master? Master only has support for gcc8.

Anyway, the u-boot won't work after gcc6. At that time I make this this, 
yocto still use the gcc7.

If you need, I can change this name.


