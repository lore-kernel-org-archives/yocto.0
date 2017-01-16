Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30A2DE00805; Mon, 16 Jan 2017 06:52:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 300FCE0078F
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 06:51:58 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 2EE5368A019; Mon, 16 Jan 2017 14:51:58 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 9C46668A019;
	Mon, 16 Jan 2017 14:51:55 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4DA37674044B;
	Mon, 16 Jan 2017 15:51:55 +0100 (CET)
To: yocto@yoctoproject.org
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
Date: Mon, 16 Jan 2017 15:51:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Mon, 16 Jan 2017 14:52:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-16 15:48, Gary Thomas wrote:
> On 2017-01-16 08:26, Paul Barker wrote:
>> As discussed recently on the list, we can just keep LTS versions now
>> that v4.9 is available.
>>
>> I'm sending these so anyone who still needs v4.7 or v4.8 can shout
>> 'stop!' before we remove them.
>>
>> Paul Barker (2):
>>   linux-raspberrypi: Drop v4.7
>>   linux-raspberrypi: Drop v4.8
>>
>>  .../0001-fix-dtbo-rules.patch                      | 44 ----------------------
>>  recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
>>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      |  8 ----
>>  3 files changed, 61 deletions(-)
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>
>
> +1 at least for 4.7 given that with today's repo I get this:
>
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0 do_kernel_version_sanity_check: Package Version
> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built (4.7.10). Please update the PV variable to match the
> kernel source.
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0 do_kernel_version_sanity_check: Function failed:
> do_kernel_version_sanity_check (log file is located at
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.27925)
>
> ERROR: Logfile of failure stored in:
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.27925
>
> ERROR: Task
> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_kernel_version_sanity_check)
> failed with exit code '1'
>


However, there is this error when I tried to switch to 4.9:
ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch: Fetcher failure: Unable to find revision 
4052b0da7dbab0df22ca8733cf50b3e573e221e0 in branch rpi-4.9.y even from upstream
ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch: Fetcher failure for URL: 
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y'. Unable to fetch URL from any source.
ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch: Function failed: base_do_fetch
ERROR: Logfile of failure stored in: 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.9.2+gitAUTOINC+4052b0da7d-r0/temp/log.do_fetch.13098
ERROR: Task (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:do_fetch) failed 
with exit code '1'

Using meta-raspberrypi:e1f69daa805cb02ddd123ae2d4d48035cb5b41d0

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

