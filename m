Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E83CE00B74; Wed, 24 May 2017 07:46:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C99F0E00B67
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:46:24 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id 4294C260B1B
To: Trevor Woerner <twoerner@gmail.com>
References: <20170522151716.4792-1-romain.perier@collabora.com>
	<CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
Date: Wed, 24 May 2017 16:46:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Wed, 24 May 2017 14:46:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello,


Le 22/05/2017 à 18:08, Trevor Woerner a écrit :
> u-boot 2017.05 was released May 10. Wouldn't it be better to update
> oe-core's u-boot to 2017.05 then just add any differences in
> meta-rockchip?

Good idea yes. I will bump u-boot-common_${PV} and u-boot_2017.01 to
v2017.05 in poky (and then propose changes in meta-rockchip)
Regards,
Romain

>
> On Mon, May 22, 2017 at 11:17 AM, Romain Perier
> <romain.perier@collabora.com> wrote:
>> This set of patches add a new u-boot-common file for 2017.05, so
>> it can be shared between u-boot-rockchip and a u-boot recipe for
>> mainline. Then, it add a bbappend to bump u-boot to the last
>> v2017.05.
>>
>> Romain Perier (3):
>>   u-boot: Add u-boot-common_2017.05.inc
>>   u-boot-rockchip: Use u-boot-common_2017.05.inc
>>   u-boot: Add bbappend for u-boot mainline
>>
>>  recipes-bsp/u-boot/u-boot-common_2017.05.inc | 14 ++++++++++++++
>>  recipes-bsp/u-boot/u-boot-rockchip_git.bb    |  2 +-
>>  recipes-bsp/u-boot/u-boot_%.bbappend         |  5 +++++
>>  3 files changed, 20 insertions(+), 1 deletion(-)
>>  create mode 100644 recipes-bsp/u-boot/u-boot-common_2017.05.inc
>>  create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend
>>
>> --
>> 1.8.3.1
>>


