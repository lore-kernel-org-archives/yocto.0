Return-Path: <jeremy@rhtech.co.nz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97817E00A44; Tue,  6 May 2014 15:10:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [119.47.118.13 listed in list.dnswl.org]
Received: from linuxplesk9.openhost.net.nz (linuxplesk9.openhost.net.nz
	[119.47.118.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC3B5E00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 15:10:32 -0700 (PDT)
Received: (qmail 10226 invoked from network); 7 May 2014 10:10:30 +1200
Received: from 122-61-40-229.jetstream.xtra.co.nz (HELO ?192.168.1.98?)
	(122.61.40.229)
	by linuxplesk9.openhost.net.nz with (DHE-RSA-AES128-SHA encrypted) SMTP;
	7 May 2014 10:10:30 +1200
Message-ID: <53695DDA.1020204@rhtech.co.nz>
Date: Wed, 07 May 2014 10:10:34 +1200
From: Jeremy Cole-Baker <jeremy@rhtech.co.nz>
Organization: Riverhead Technology
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <mailman.16489.1397995243.26702.yocto@yoctoproject.org>
	<53684B1B.7030804@rhtech.co.nz> <5368EB3B.6080503@windriver.com>
In-Reply-To: <5368EB3B.6080503@windriver.com>
Subject: Re: Anybody managed to get Beagleboard xM to work?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jeremy@rhtech.co.nz
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 May 2014 22:10:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 7/05/2014 2:01 a.m., Bruce Ashfield wrote:

>> Anything else I am missing? Some configuration I need to set up? I have
>> no idea where to look! It is frustrating because it seems to be very
>> close to working.
>
> As an alternative to using the Yocto reference BSP (Which I mentioned
> has moved onto the BBB with a better focus on core functionality), the
> meta-beagleboard layer has a more complete feature focus and should
> solve the problem (via a different kernel and configuration).
>


Hi, can you explain how to use the meta-beagleboard layer? My build was 
done using the BSP for "Texas Instruments ARM Cortex-A8 development 
board (Beagleboard)" (10.0.0 Dora). I downloaded it, and I think I built 
it with Hob the first time. I also used 'bitbake' to adjust the 
configuration and build from the command line to try different options.

I just downloaded the latest Yocto project 1.6 (11.0.0 Daisy), and had a 
look around including running Hob. However, I couldn't find a 
meta-beagleboard layer.

I also downloaded and installed binaries for the latest build from:

autobuilder.yoctoproject.org/pub/releases/CURRENT/machines/beagleboard/

These worked but showed the same behaviour (i.e. no USB). Maybe it has 
something to do with the way I set up the boot environment?

Thanks,
Jeremy

