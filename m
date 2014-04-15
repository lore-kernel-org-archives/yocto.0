Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B815E00BE8
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 16:29:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3FNTb9n022324
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 Apr 2014 16:29:38 -0700 (PDT)
Received: from [147.11.119.175] (147.11.119.175) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 15 Apr 2014 16:29:37 -0700
Message-ID: <534DC0E0.5080209@windriver.com>
Date: Tue, 15 Apr 2014 19:29:36 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: Denys Dmytriyenko <denis@denix.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
References: <534C0415.20701@mlbassoc.com>
	<3130526.9zUpmp9SKQ@peggleto-mobl5.ger.corp.intel.com>
	<20140415162639.GC11339@denix.org>
	<16254891.OyPbf7clBT@peggleto-mobl5.ger.corp.intel.com>
	<20140415171601.GD11339@denix.org>
	<20140415174112.GE11339@denix.org>
	<20140415194307.GG11339@denix.org>
In-Reply-To: <20140415194307.GG11339@denix.org>
Cc: yocto@yoctoproject.org
Subject: Re: BBB doesn't boot
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
X-List-Received-Date: Tue, 15 Apr 2014 23:29:46 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-15 03:43 PM, Denys Dmytriyenko wrote:
> On Tue, Apr 15, 2014 at 01:41:12PM -0400, Denys Dmytriyenko wrote:
>>>>>> Some other things I tried with a "long" TMPDIR path (note that it's the
>>>>>> TMPDIR path that makes the difference - in my tests I've been using
>>>>>> /home/paul/poky/build2/much/longer/path/to/tmp). None of this helped:
>>>>>>
>>>>>> * kernel built with gcc 4.7.2 and binutils 2.23.2
>>>>>> * u-boot built with gcc 4.7.2 and binutils 2.23.2
>>>>>> * u-boot from http://downloads.angstrom-distribution.org/demo/beaglebone/
>>>>>> * earlyprintk and CONFIG_DEBUG_LL - no additional output printed
>>>>>>
>>>>>> I think we're now at the point where we'd benefit from someone with better
>>>>>> knowledge debugging the issue.
>>>>>
>>>>> Ok, should we expand the search area? Since this is supposed to be vanilla
>>>>> 3.14 kernel, can we try other platforms and see if they are similarly
>>>>> affected? I'll try pinging our kernel guys for any ideas...
>>>>
>>>> As far as I know it has only been observed with beaglebone (both white and
>>>> black, if it makes a difference). FWIW, qemuarm images from the autobuilder
>>>> boot just fine, and apparently the same is true of edgerouter (different
>>>> architecture but also uses u-boot).
>>>
>>> But do those other platforms use uImage or zImage?
>
> I don't yet know what is going on, but building in the same directory with
> sources (B = S) makes it work regarless of the path length:
>
> /OE/RAM/poky-111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111/22222222222222222222222222222222222222222222222222222222222222222222/3333333333333333333333333333333333333333333333333333/tmp/work/beaglebone-poky-linux-gnueabi/linux-yocto/3.14+gitAUTOINC+928d7b2dda_0143c6ebb4-r0/linux
>
> So, I just commented out setting kernel-specific B in linux-yocto.inc and any
> kernel now boots with long path:
>
> #B = "${WORKDIR}/linux-${PACKAGE_ARCH}-${LINUX_KERNEL_TYPE}-build"
>
> I'm copying Richard and Bruce directly to see if they may have a quick insight
> and/or accept it as a workaround for the release. I'll keep digging further,

I've never seen this before, and when I'm back in the office Wed/Thursday
I can have a closer look.

As for the BBB using this in the release, I really don't want to have
one board that breaks the build and source separation, since it has
always been in place to keep things clean (and I know of a few random
scripts, etc, that expect it) .. but more importantly, I want to root
cause this, since it is a lurking problem.

Bruce

> but if anyone cares to verify the above workaround works for them, I would
> appreciate. Thanks!
>


