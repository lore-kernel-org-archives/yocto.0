Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87929E00770; Tue,  6 May 2014 20:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EDC8E006C0
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 20:15:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s473FKCn024448
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 May 2014 20:15:20 -0700 (PDT)
Received: from server.local (128.224.21.100) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 6 May 2014 20:15:20 -0700
Message-ID: <5369A65F.8060006@windriver.com>
Date: Tue, 6 May 2014 23:19:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: <jeremy@rhtech.co.nz>, <yocto@yoctoproject.org>
References: <mailman.16489.1397995243.26702.yocto@yoctoproject.org>	<53684B1B.7030804@rhtech.co.nz>
	<5368EB3B.6080503@windriver.com> <53695DDA.1020204@rhtech.co.nz>
In-Reply-To: <53695DDA.1020204@rhtech.co.nz>
Subject: Re: Anybody managed to get Beagleboard xM to work?
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
X-List-Received-Date: Wed, 07 May 2014 03:15:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-05-06, 6:10 PM, Jeremy Cole-Baker wrote:
> On 7/05/2014 2:01 a.m., Bruce Ashfield wrote:
>
>>> Anything else I am missing? Some configuration I need to set up? I have
>>> no idea where to look! It is frustrating because it seems to be very
>>> close to working.
>>
>> As an alternative to using the Yocto reference BSP (Which I mentioned
>> has moved onto the BBB with a better focus on core functionality), the
>> meta-beagleboard layer has a more complete feature focus and should
>> solve the problem (via a different kernel and configuration).
>>
>
>
> Hi, can you explain how to use the meta-beagleboard layer? My build was
> done using the BSP for "Texas Instruments ARM Cortex-A8 development
> board (Beagleboard)" (10.0.0 Dora). I downloaded it, and I think I built
> it with Hob the first time. I also used 'bitbake' to adjust the
> configuration and build from the command line to try different options.
>
> I just downloaded the latest Yocto project 1.6 (11.0.0 Daisy), and had a
> look around including running Hob. However, I couldn't find a
> meta-beagleboard layer.

If I recall correctly, its this:

    https://github.com/beagleboard/meta-beagleboard

The Yocto reference BSPs themselves are about exercising core
functionality on easily available h/w references (one per major arch).

Those reference BSPs are on the Yocto release kernel (which is now
typically LTSI kernel), and hence have all the Yocto kernel features
(union filesystems, optional preempt-rt support, CVEs, -stable updates,
etc) and configuration meta-data (base policy + configuration fragemnt
support).

We try and make them as functional as possible, but sticking with the
stable and longer term kernels means that development which happens
on the latest mainline, or different community trees is only merged to
the Yocto kernel if we get explicit support and patches ported. That
means that some bleeding edge, or advanced functionality is available
in those feature-full and community supported trees.

The layer I pointed at above, has that mix of extended/enhanced
functionality.

We refreshed the the ARM reference to the beaglebone black in the latest
Yocto release, and thanks to TIs (via DenysD) support .. we have a
mainline supported, and very functional refernece.

That being said, working USB is core functionality and it was tested
green for the 1.5 release .. at least if my memory serves. So it
should be working in your build.

Bruce

>
> I also downloaded and installed binaries for the latest build from:
>
> autobuilder.yoctoproject.org/pub/releases/CURRENT/machines/beagleboard/
>
> These worked but showed the same behaviour (i.e. no USB). Maybe it has
> something to do with the way I set up the boot environment?
>
> Thanks,
> Jeremy


