Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6A5E009A5; Tue, 17 Jan 2017 22:09:31 -0800 (PST)
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
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56648E00998
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 22:09:29 -0800 (PST)
Received: from nbhjo (36-225-57-150.dynamic-ip.hinet.net [36.225.57.150])
	by msfrf2631.sfr.fr (SMTP Server) with ESMTP id D1CC71C00080C;
	Wed, 18 Jan 2017 07:03:07 +0100 (CET)
Received: from nbhjo (36-225-57-150.dynamic-ip.hinet.net
	[36.225.57.150])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2631.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 Jan 2017 07:03:06 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
In-Reply-To: <8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
Date: Wed, 18 Jan 2017 07:03:00 +0100
Message-ID: <008701d27150$89457a80$9bd06f80$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJpWXsoUxsVhFTZU8kgXCHaq7RT6AGxX+FhoAJhf0A=
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
X-List-Received-Date: Wed, 18 Jan 2017 06:09:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Language: fr

Hi Gary,

You get this because the patch to the latest 4.7 version have not been
merged...
4.7 has been stable for some time now, unlike 4.8 - and 4.9 will probably
have some similar issues, basically the downstream is heavily rebasing, so
revisions numbers are not reliable anymore.

I'm OK to remove 4.7, since I've branched it - and mine is working fine :)
I have no problem removing 4.8, since I moved from 4.7 to 4.9.

But I believe we might also want to remove 4.1, because it's really very
old, and select the next non-LTS version instead.
That would make it 4.4, 4.9 and next-kernel.

Cheers,
Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gary Thomas
Sent: lundi 16 janvier 2017 15:48
To: yocto@yoctoproject.org
Subject: Re: [yocto] [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7
and 4.8

On 2017-01-16 08:26, Paul Barker wrote:
> As discussed recently on the list, we can just keep LTS versions now 
> that v4.9 is available.
>
> I'm sending these so anyone who still needs v4.7 or v4.8 can shout 
> 'stop!' before we remove them.
>
> Paul Barker (2):
>   linux-raspberrypi: Drop v4.7
>   linux-raspberrypi: Drop v4.8
>
>  .../0001-fix-dtbo-rules.patch                      | 44
----------------------
>  recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      |  8 ----
>  3 files changed, 61 deletions(-)
>  delete mode 100644 
> recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb
>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>

+1 at least for 4.7 given that with today's repo I get this:

ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
do_kernel_version_sanity_check: Package Version
(4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built (4.7.10).
Please update the PV variable to match the kernel source.
ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
do_kernel_version_sanity_check: Function failed: 
do_kernel_version_sanity_check (log file is located at
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspb
errypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_ch
eck.27925)
ERROR: Logfile of failure stored in: 
/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspb
errypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_ch
eck.27925
ERROR: Task
(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspbe
rrypi_4.7.bb:do_kernel_version_sanity_check)
failed with exit code '1'


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


