Return-Path: <ed.sutter@alcatel-lucent.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A2FBE009C6; Wed, 27 May 2015 13:45:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	TO_NO_BRKTS_PCNT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.245.210.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  2.5 TO_NO_BRKTS_PCNT To: misformatted + percentage
X-Greylist: delayed 625 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 May 2015 13:45:37 PDT
Received: from smtp-fr.alcatel-lucent.com (fr-hpida-esg-02.alcatel-lucent.com
	[135.245.210.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3571AE00956
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 13:45:37 -0700 (PDT)
Received: from us70uusmtp4.zam.alcatel-lucent.com (unknown [135.5.2.66])
	by Websense Email Security Gateway with ESMTPS id 0B2AC8C0835B0
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 20:35:06 +0000 (GMT)
Received: from umail.lucent.com (umail.ndc.lucent.com [135.3.40.61])
	by us70uusmtp4.zam.alcatel-lucent.com (GMO) with ESMTP id
	t4RKZ8Gx030258
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 16:35:09 -0400
Received: from [135.222.138.133] (Ed-PC.mh.lucent.com [135.222.138.133])
	by umail.lucent.com (8.13.8/TPES) with ESMTP id t4RKZ7O4016363
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 15:35:08 -0500 (CDT)
Message-ID: <556629F2.20605@alcatel-lucent.com>
Date: Wed, 27 May 2015 16:32:50 -0400
From: Ed Sutter <ed.sutter@alcatel-lucent.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: getting started...
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
X-List-Received-Date: Wed, 27 May 2015 20:45:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
I'm new to Yocto.  I've used it to build/install linux on the Wandboard, 
and I've installed
host-based cross devlopement environment (bitbake -c populate_sdk ).  
Everything worked, but
basically I just followed some "getting started" steps so, I still don't 
really have a clue...

Last year I finished up a custom iMX6-based project using buildroot for 
rootfs, ftp.denx.de
for uboot and freescale git for the kernel.

These two projects are totally isolated; yet I'm sure >85% of the code 
base is identical.

This year I have two ongoing iMX6 based linux projects, and may need to 
use a beaglebone
or RPi for some other small project.

The point of the above detail is that I'd like to backup a bit and 
attempt to use Yocto to
organize all four of these with one instance of Yocto/Poky.  Is that 
practical?  Seems
to me that is the ideal goal of Yocto, but I don't see many BSPs listed 
under the project
downloads page.  On the other hand, I know wandboard and sabresd and 
many others do have
yocto build environments.

What's the scoop on that?

I'd really like to manage all of these projects under one umbrella if 
possible; but what
if different projects use different versions of poky (for example)?

Thanks in advance for any info...
Ed


