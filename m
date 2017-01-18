Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE59AE00992; Tue, 17 Jan 2017 22:06:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 196 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Jan 2017 22:06:26 PST
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 926F7E0098A
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 22:06:26 -0800 (PST)
Received: from nbhjo (36-225-57-150.dynamic-ip.hinet.net [36.225.57.150])
	by msfrf2631.sfr.fr (SMTP Server) with ESMTP id EBA011C000813;
	Wed, 18 Jan 2017 07:06:25 +0100 (CET)
Received: from nbhjo (36-225-57-150.dynamic-ip.hinet.net
	[36.225.57.150])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2631.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 Jan 2017 07:06:23 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
	<d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
In-Reply-To: <d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
Date: Wed, 18 Jan 2017 07:06:20 +0100
Message-ID: <008801d27150$ff027840$fd0768c0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJpWXsoUxsVhFTZU8kgXCHaq7RT6AGxX+FhAa9GclSf9OjycA==
X-sfr-mailing: LEGIT
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
X-List-Received-Date: Wed, 18 Jan 2017 06:06:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Gary,

I believe that we will see for 4.9 the same issues we had with 4.8, heavy
rebasing from the downstream.
I'm currently working with the upstream - plus patches - and I plan to have
a yocto build that would take the upstream source and add some patches,
instead of taking the downstream as a reference.
Is this an approach that could be interesting to people using yocto and
RaspberryPi? Any thoughts on that? Or another solution to remove the
dependency to the downstream and its constant rebasing?

Cheers,
Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gary Thomas
Sent: lundi 16 janvier 2017 15:52
To: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7
and 4.8

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
>>  .../0001-fix-dtbo-rules.patch                      | 44
----------------------
>>  recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
>>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      |  8 ----
>>  3 files changed, 61 deletions(-)
>>  delete mode 100644 
>> recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb
>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>
>
> +1 at least for 4.7 given that with today's repo I get this:
>
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0 
> do_kernel_version_sanity_check: Package Version
> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built 
> (4.7.10). Please update the PV variable to match the kernel source.
> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
do_kernel_version_sanity_check: Function failed:
> do_kernel_version_sanity_check (log file is located at
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux
> -raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_versi
> on_sanity_check.27925)
>
> ERROR: Logfile of failure stored in:
> /build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux
> -raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_versi
> on_sanity_check.27925
>
> ERROR: Task
> (/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-
> raspberrypi_4.7.bb:do_kernel_version_sanity_check)
> failed with exit code '1'
>


However, there is this error when I tried to switch to 4.9:
ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch: Fetcher
failure: Unable to find revision
4052b0da7dbab0df22ca8733cf50b3e573e221e0 in branch rpi-4.9.y even from
upstream
ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch: Fetcher
failure for URL: 
'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y'.
Unable to fetch URL from any source.
ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch: Function
failed: base_do_fetch
ERROR: Logfile of failure stored in: 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspb
errypi/1_4.9.2+gitAUTOINC+4052b0da7d-r0/temp/log.do_fetch.13098
ERROR: Task
(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspbe
rrypi_4.9.bb:do_fetch) failed with exit code '1'

Using meta-raspberrypi:e1f69daa805cb02ddd123ae2d4d48035cb5b41d0

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


