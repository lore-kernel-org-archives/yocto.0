Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A485E009AD; Wed,  8 Feb 2017 04:09:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFEA5E007AD
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 04:09:08 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id EF33C68A01C; Wed,  8 Feb 2017 12:09:07 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 5BE6368A019;
	Wed,  8 Feb 2017 12:09:07 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 0F41067400D4;
	Wed,  8 Feb 2017 13:09:07 +0100 (CET)
To: yocto@yoctoproject.org
References: <CANxWOTYfkUDguyFogHHA2HH77McT06-4+z96S7pJupfRKHhm+g@mail.gmail.com>
	<a1f5e2a1-62cc-9141-0f4e-9aeec971453e@gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <a8fd94f0-0fa5-95bf-67b8-637e8c6413ca@mlbassoc.com>
Date: Wed, 8 Feb 2017 13:09:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <a1f5e2a1-62cc-9141-0f4e-9aeec971453e@gmail.com>
Subject: Re: meta-raspberrypi issue
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
X-List-Received-Date: Wed, 08 Feb 2017 12:09:09 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-01 18:24, Khem Raj wrote:
>
>
> On 2/1/17 8:08 AM, Usman Haider wrote:
>> Hi,
>>
>> I am new to yocto and just started working on it. I am having issue
>> with meta-raspberrypi. I did inside poky
>>
>> $ git checkout -b work_branch -t origin/daisy
>>
>> $ git clone git://git.yoctoproject.org/meta-raspberrypi
>> <http://git.yoctoproject.org/meta-raspberrypi>
>>
>
> you need to checkout daisy branch of meta-raspberrypi as well.

That said, daisy is REALLY OLD.  You'd probably be much better off with
something recent, e.g. morty.

>
>> $ source oe-init-build-env rpi-build
>>
>> updated the local.conf and bblayer.conf files inside rpi-build
>>
>> In local.conf
>>
>> BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"
>> PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"
>> MACHINE ?= "raspberrypi"
>>
>> In bblayer.conf
>> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>> # changes incompatibly
>> LCONF_VERSION = "6"
>>
>> BBPATH = "${TOPDIR}"
>> BBFILES ?= ""
>>
>> BBLAYERS ?= " \
>>   /home/vm/poky/meta \
>>   /home/vm/poky/meta-yocto \
>>   /home/vm/poky/meta-yocto-bsp \
>>   /home/vm/poky/meta-raspberrypi \
>>   "
>> BBLAYERS_NON_REMOVABLE ?= " \
>>   /home/vm/poky/meta \
>>   /home/vm/poky/meta-yocto \
>>   "
>>
>> When I run bitbake rpi-basic-image, I get following
>>
>>
>> *********************************
>>
>> vm@sdr-vm:~/poky/rpi-build$ bitbake rpi-basic-image
>> WARNING: Host distribution "Ubuntu-16.04" has not been validated with
>> this version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>> Parsing recipes: 100% |#########################################| Time:
>> 00:02:37
>> Parsing of 882 .bb files complete (0 cached, 882 parsed). 1241 targets,
>> 63 skipped, 0 masked, 0 errors.
>> ERROR: No recipes available for:
>>
>> /home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
>>
>> /home/vm/poky/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
>> ERROR: Command execution failed: Exited with 1
>>
>> *************************************
>>
>> What could be the issue?
>>
>> --
>> Usman
>>
>>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

