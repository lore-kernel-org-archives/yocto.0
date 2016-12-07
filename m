Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C337E00D19; Wed,  7 Dec 2016 02:41:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50703E00D0A
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 02:41:30 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 135A568A01C; Wed,  7 Dec 2016 10:41:30 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 8A96268A019;
	Wed,  7 Dec 2016 10:41:29 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 29E1A67400AA;
	Wed,  7 Dec 2016 11:41:29 +0100 (CET)
To: yocto@yoctoproject.org
References: <566212531.1559919.1480508909186.JavaMail.zimbra@ciright.com>
	<6A92E7CF-F574-4DA6-A84F-C65CA2F1E40E@gmail.com>
	<1042006133.1610572.1480567719431.JavaMail.zimbra@ciright.com>
	<1069025273.1664073.1480654660169.JavaMail.zimbra@ciright.com>
	<2107513184.2068825.1480924816241.JavaMail.zimbra@ciright.com>
	<138346419.2363700.1481105704623.JavaMail.zimbra@ciright.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <938f008f-007c-e463-bb62-0f0345a2ba5c@mlbassoc.com>
Date: Wed, 7 Dec 2016 11:41:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <138346419.2363700.1481105704623.JavaMail.zimbra@ciright.com>
Subject: Re: yocto project in raspberry pi 3
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
X-List-Received-Date: Wed, 07 Dec 2016 10:41:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-12-07 11:15, Rushin Thakkar wrote:
>     hello there i am trying to do yocto project on raspberry pi 3.
>     when i run bitbake rpi-basic-image.
>
>
>     this task 0: bcm2835-bootfiles-20151021-r3 do_fetch (pid 4922) is taking too much time. after that
>
>
> You should use latest master where we have switched to tarball fetch
> especially
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=716b6a9cd7f24a8bacd539bb40519d185e3f963a
>
>     i am getting message like
>
>
>
>
>     ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
>     Cloning into bare repository '/home/rushin/yoctopi/poky/build/downloads/git2/github.com.raspberrypi.firmware.git'...
>     fatal: The remote end hung up unexpectedly
>     fatal: early EOF
>     fatal: index-pack failed
>
>     ERROR: Function failed: Fetcher failure for URL:
>     'git://github.com/raspberrypi/firmware.git;protocol=git;branch=master'. Unable to fetch URL from any source.
>     ERROR: Logfile of failure stored in:
>     /home/rushin/yoctopi/poky/build/tmp/work/raspberrypi2-poky-linux-gnueabi/bcm2835-bootfiles/20151021-r3/temp/log.do_fetch.3385
>     ERROR: Task 207 (/home/rushin/yoctopi/poky/meta-raspberrypi/recipes-bsp/bootfiles/bcm2835-bootfiles.bb, do_fetch)
>     failed with exit code '1'
>
>     can you tell me how to download this file manually??

Doing it manually will take just as long and end up downloading 6GB+ of [mostly useless] data.

You really need to update to the latest version of this recipe which no longer
uses GIT to fetch the files (replaced by much smaller TAR files)

>
>     like in download folder there is file called
>     wpa_supplicant-2.4.tar.gz . i can download this file. but how to get these files like
>     wpa_supplicant-2.4.tar.gz.done,wpa_supplicant.sh.done??
>
>
>
>
>
>
>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

