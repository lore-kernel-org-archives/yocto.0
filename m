Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A4E2E00805; Mon, 16 Jan 2017 07:12:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [217.70.183.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net
	[217.70.183.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4987E0078F
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:12:55 -0800 (PST)
Received: from mfilter6-d.gandi.net (mfilter6-d.gandi.net [217.70.178.135])
	by relay3-d.mail.gandi.net (Postfix) with ESMTP id AF133A814B;
	Mon, 16 Jan 2017 16:12:54 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter6-d.gandi.net
Received: from relay3-d.mail.gandi.net ([IPv6:::ffff:217.70.183.195])
	by mfilter6-d.gandi.net (mfilter6-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id aUuLgdkgaaTH; Mon, 16 Jan 2017 16:12:53 +0100 (CET)
X-Originating-IP: 131.231.60.35
Received: from [10.10.10.204] (inno-commagility-ownrouter.lut.ac.uk
	[131.231.60.35]) (Authenticated sender: paul@paulbarker.me.uk)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8199BA80EE;
	Mon, 16 Jan 2017 16:12:52 +0100 (CET)
Date: Mon, 16 Jan 2017 15:12:51 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
	<d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
MIME-Version: 1.0
To: yocto@yoctoproject.org,Gary Thomas <gary@mlbassoc.com>
From: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <E4828DAD-529B-4C43-A13B-67096B6741EE@paulbarker.me.uk>
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
X-List-Received-Date: Mon, 16 Jan 2017 15:12:58 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 16 January 2017 14:51:55 GMT+00:00, Gary Thomas <gary@mlbassoc=2Ecom> wr=
ote:
>On 2017-01-16 15:48, Gary Thomas wrote:
>> On 2017-01-16 08:26, Paul Barker wrote:
>>> As discussed recently on the list, we can just keep LTS versions now
>>> that v4=2E9 is available=2E
>>>
>>> I'm sending these so anyone who still needs v4=2E7 or v4=2E8 can shout
>>> 'stop!' before we remove them=2E
>>>
>>> Paul Barker (2):
>>>   linux-raspberrypi: Drop v4=2E7
>>>   linux-raspberrypi: Drop v4=2E8
>>>
>>>  =2E=2E=2E/0001-fix-dtbo-rules=2Epatch                      | 44
>----------------------
>>>  recipes-kernel/linux/linux-raspberrypi_4=2E7=2Ebb      |  9 -----
>>>  recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb      |  8 ----
>>>  3 files changed, 61 deletions(-)
>>>  delete mode 100644
>recipes-kernel/linux/linux-raspberrypi-4=2E7/0001-fix-dtbo-rules=2Epatch
>>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4=2E7=2Ebb
>>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4=2E8=2Ebb
>>>
>>
>> +1 at least for 4=2E7 given that with today's repo I get this:
>>
>> ERROR: linux-raspberrypi-1_4=2E7=2E7+gitAUTOINC+c2cbd9c611-r0
>do_kernel_version_sanity_check: Package Version
>> (4=2E7=2E7+gitAUTOINC+c2cbd9c611) does not match of kernel being built
>(4=2E7=2E10)=2E Please update the PV variable to match the
>> kernel source=2E
>> ERROR: linux-raspberrypi-1_4=2E7=2E7+gitAUTOINC+c2cbd9c611-r0
>do_kernel_version_sanity_check: Function failed:
>> do_kernel_version_sanity_check (log file is located at
>>
>/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spberrypi/1_4=2E7=2E7+gitAUTOINC+c2cbd9c611-r0/temp/log=2Edo_kernel_version=
_sanity_check=2E27925)
>>
>> ERROR: Logfile of failure stored in:
>>
>/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spberrypi/1_4=2E7=2E7+gitAUTOINC+c2cbd9c611-r0/temp/log=2Edo_kernel_version=
_sanity_check=2E27925
>>
>> ERROR: Task
>>
>(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4=2E7=2Ebb:do_kernel_version_sanity_check)
>> failed with exit code '1'
>>
>
>
>However, there is this error when I tried to switch to 4=2E9:
>ERROR: linux-raspberrypi-1_4=2E9=2E2+gitAUTOINC+4052b0da7d-r0 do_fetch:
>Fetcher failure: Unable to find revision=20
>4052b0da7dbab0df22ca8733cf50b3e573e221e0 in branch rpi-4=2E9=2Ey even fro=
m
>upstream
>ERROR: linux-raspberrypi-1_4=2E9=2E2+gitAUTOINC+4052b0da7d-r0 do_fetch:
>Fetcher failure for URL:=20
>'git://github=2Ecom/raspberrypi/linux=2Egit;protocol=3Dgit;branch=3Drpi-4=
=2E9=2Ey'=2E
>Unable to fetch URL from any source=2E
>ERROR: linux-raspberrypi-1_4=2E9=2E2+gitAUTOINC+4052b0da7d-r0 do_fetch:
>Function failed: base_do_fetch
>ERROR: Logfile of failure stored in:=20
>/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-ra=
spberrypi/1_4=2E9=2E2+gitAUTOINC+4052b0da7d-r0/temp/log=2Edo_fetch=2E13098
>ERROR: Task
>(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-ras=
pberrypi_4=2E9=2Ebb:do_fetch)
>failed=20
>with exit code '1'
>
>Using meta-raspberrypi:e1f69daa805cb02ddd123ae2d4d48035cb5b41d0

I think any upstream branch after 4=2E4=2Ey is still at risk of being reba=
sed at the minute=2E I think the best solution is to still drop 4=2E7=2Ey a=
nd 4=2E8=2Ey, but try to get an update in for 4=2E9=2Ey first=2E


--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E

