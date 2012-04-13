Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11812E0059A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 00:24:37 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3VTVqR4HWJz4KMYZ;
	Fri, 13 Apr 2012 09:24:35 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3VTVqR3PHvz4KK4P;
	Fri, 13 Apr 2012 09:24:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024)
	with ESMTP id XT4MW7BAGz-y; Fri, 13 Apr 2012 09:24:34 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Fri, 13 Apr 2012 09:24:33 +0200 (CEST)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id B13661A291D;
	Fri, 13 Apr 2012 09:24:33 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 884DA200238;
	Fri, 13 Apr 2012 09:24:33 +0200 (CEST)
To: Darren Hart <dvhart@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4F87C2D3.8020805@linux.intel.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
	<20120412080021.GA3661@jama.jama.net>
	<4F86E2E8.2030607@linux.intel.com>
	<CAPhnLPCc1+uV5rM48k45JxbSwHpPqG9x7ci=uN_5TA8j1XmpJg@mail.gmail.com>
	<20120413055150.GA3652@jama.jama.net>
	<4F87C2D3.8020805@linux.intel.com>
Comments: In-reply-to Darren Hart <dvhart@linux.intel.com>
	message dated "Thu, 12 Apr 2012 23:08:19 -0700."
Date: Fri, 13 Apr 2012 09:24:33 +0200
Message-Id: <20120413072433.884DA200238@gemini.denx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build time data
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Apr 2012 07:24:38 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Darren Hart,

In message <4F87C2D3.8020805@linux.intel.com> you wrote:
>
> > Phenom II X4 965, 4GB RAM, RAID0 (3 SATA2 disks) for WORKDIR, RAID5
> > (the same 3 SATA2 disks) BUILDDIR (raid as mdraid), now I have
> > Bulldozer AMD FX(tm)-8120, 16GB RAM, still the same RAID0 but 
> > different motherboard..
> 
> Why RAID5 for BUILDDIR? The write overhead of RAID5 is very high. The
> savings RAID5 alots you is more significant with more disks, but with
> 3 disks it's only 1 disk better than RAID10, with a lot more overhead.

Indeed, RAID5 with just 3 devices makes little sense - especially
when running on the same drives as the RAID0 workdir.

> I spent some time outlining all this a while back:
> http://www.dvhart.com/2011/03/qnap_ts419p_configuration_raid_levels_and_throughput/

Well, such data from a 4 spindle array are nor teling much. When you
are asking for I/O performance on RAID arrays, you want to distibute
load over _many_ spindles. Do your comparisons on a 8 or 16 (or more)
spindle setup, and the results will be much different. Also, your
test of copying huge files is just one usage mode: strictly
sequential access. But what we see with OE / Yocto builds is
completely different. Here you will see a huge number of small and
even tiny data transfers.

"Classical" recommendations for performance optimization od RAID
arrays (which are usually tuning for such big, sequentuial accesses
only) like using big stripe sizes and huge read-ahead etc. turn out
to be counter-productive here.  But it makes no sense to have for
example a stripe size of 256 kB or more when 95% or more of your disk
accesses write less than 4 kB only.

> Here's the relevant bit:
> 
> "RAID 5 distributes parity across all the drives in the array, this
> parity calculation is both compute intensive and IO intensive. Every
> write requires the parity calculation, and data must be written to
> every drive."

But did you look at a real system?  I never found the CPU load of the
parity calculations to be a bottleneck.  I rather have the CPU spend
cycles on computing parity, instead of running it with all cores idle
because it's waitong for I/O to complete.  I found that for the work
loads we have (software builds like Yocto etc.) a multi-spindle
software RAID array outperforms all other solutions (and especially
the h/w RAID controllers I had access to so far - these don't even
closely reach the same number of IOPS).

OH - and BTW: if you care about reliability, then don't use RAID5.
Go for RAID6.  Yes, it's more expensive, but it's also much less
painful when you have to rebuild the array in case of a disk failure.
I've seen too many cases where a second disk would fail during the
rebuild to ever go with RAID5 for big systems again - restoring
several TB of data from tape ain't no fun.

See also the RAID wiki for specific performance optizations on such
RAID arrays.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Never put off until tomorrow what you can put off indefinitely.

