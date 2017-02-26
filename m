Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F79BE009BC; Sat, 25 Feb 2017 22:19:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60BB9E0095F
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 22:19:17 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B43F968A01C; Sun, 26 Feb 2017 06:19:15 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 50D5768A019;
	Sun, 26 Feb 2017 06:19:13 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B660F6740222;
	Sun, 26 Feb 2017 07:19:12 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: yocto@yoctoproject.org
References: <20170225000359.29173-1-raj.khem@gmail.com>
	<20170225091103.5ebe6324@lap0>
	<CAMKF1srVyEa8_0BoS750zPoyNuhmVA6VEue4m--11petEqNj9g@mail.gmail.com>
	<20170226015948.GA9477@carbonA>
Message-ID: <f2ea7384-8305-73f2-2852-d4f7c3ec0613@mlbassoc.com>
Date: Sun, 26 Feb 2017 07:19:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170226015948.GA9477@carbonA>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.9.bb: Update to 4.9.12
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
X-List-Received-Date: Sun, 26 Feb 2017 06:19:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-26 03:00, Andrei Gherzan wrote:
> On Sat, Feb 25, 2017 at 10:16:24AM -0800, Khem Raj wrote:
>> On Sat, Feb 25, 2017 at 1:11 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>> On Fri, 24 Feb 2017 16:03:59 -0800
>>> Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>>> ---
>>>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
>>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
>>>> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb index
>>>> dcca369..b41a8ef 100644 ---
>>>> a/recipes-kernel/linux/linux-raspberrypi_4.9.bb +++
>>>> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb @@ -1,8 +1,8 @@
>>>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>>>
>>>> -LINUX_VERSION ?= "4.9.10"
>>>> +LINUX_VERSION ?= "4.9.12"
>>>>
>>>> -SRCREV = "095c4480e1f623bdc8a221a171ef13b2223706b1"
>>>> +SRCREV = "c1271995832a090a94eb3b1c1678cb51b84ef1ca"
>>>>  SRC_URI =
>>>> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y
>>>> \
>>>> file://0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch
>>>> \ "
>>>
>>> rpi-4.9.y is now the default branch upstream and they've started
>>> merging in new stable releases instead of rebasing. So how soon do we
>>> want to make 4.9.y the default in meta-raspberrypi?
>>>
>>> I've already tested a 4.9 series kernel with u-boot on an rpi and an
>>> rpi3 so I'm happy that it all looks good.
>>>
>>> I'm away this weekend so I can't send the patch right now myself. If
>>> no-one else jumps on it I'll send a patch towards the end of the week
>>> to change the default.
>>
>> Lets apply this patch so we get away from this rebasing business quickly.
>> however I would like to wait for us to make it default may be a week or so
>> I have some issues bringing up wlan0 with 4.9 and would like to see why I get
>>
>> ifup wlan0
>> Successfully initialized wpa_supplicant
>> rfkill: WLAN soft blocked
>> Could not set interface wlan0 flags (UP): Operation not possible due to RF-kill
>
> That is interesting. I've seen it on old kernel versions too. Everytime
> disappeared by itself.

Khem,

Exactly which version (kernel rev / SRCREV) do you have this with and which
RaspberryPi?  I've had my rpi3 running continuously for more than a week with
no such problems, running 4.9.10/095c4480e1

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

