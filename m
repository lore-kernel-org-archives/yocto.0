Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B0DCE0044A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 07:41:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Apr 2012 07:41:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141351643"
Received: from unknown (HELO envy.home) ([10.255.12.99])
	by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2012 07:41:52 -0700
Message-ID: <4F883B0D.1010605@linux.intel.com>
Date: Fri, 13 Apr 2012 07:41:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Bj=F6rn_Stenberg?= <bjst@enea.com>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com> <20120412140802.GA3176@giant>
	<4F86E7E0.4080704@linux.intel.com> <20120413084702.GA9382@giant>
In-Reply-To: <20120413084702.GA9382@giant>
X-Enigmail-Version: 1.4
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
X-List-Received-Date: Fri, 13 Apr 2012 14:41:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit



On 04/13/2012 01:47 AM, Björn Stenberg wrote:
> Darren Hart wrote:
>> One thing that comes to mind is the parallel settings, BB_NUMBER_THREADS
>> and PARALLEL_MAKE. I noticed a negative impact if I increased these
>> beyond 12 and 14 respectively. I tested this with bb-matrix
>> (scripts/contrib/bb-perf/bb-matrix.sh). The script is a bit fickle, but
>> can provide useful results and killer 3D surface plots of build time
>> with BB and PM on the axis.
> 
> Very nice! I ran a batch overnight with permutations of 8,12,16,24,64 cores:
> 
> BB PM %e %S %U %P %c %w %R %F %M %x
> 8 8 2288.96 2611.37 10773.53 584% 810299 18460161 690464859 0 1715456 0
> 8 12 2198.40 2648.57 10846.28 613% 839750 18559413 690563187 0 1982864 0
> 8 16 2157.26 2672.79 10943.59 631% 898599 18487946 690761197 0 1715440 0
> 8 24 2125.15 2916.33 11199.27 664% 800009 18412764 690856116 0 1715440 0
> 8 64 2189.14 7084.14 12906.95 913% 1491503 18646891 699897733 0 1715440 0
> 12 8 2277.66 2625.82 10805.21 589% 691752 18596208 690998433 0 1715440 0
> 12 12 2194.04 2664.01 10934.65 619% 714997 18717017 691199925 0 1715440 0
> 12 16 2183.95 2736.33 11162.30 636% 1090270 18359128 690559327 0 1715440 0
> 12 24 2120.46 2907.63 11229.50 666% 829783 18644293 690729638 0 1715312 0
> 12 64 2171.58 6767.09 12822.86 902% 1524683 18634668 690904549 0 1867456 0
> 16 8 2294.59 2691.74 10813.69 588% 771621 18637582 686712129 0 1715344 0
> 16 12 2201.51 2704.54 11017.23 623% 753662 18590533 699231236 0 1715424 0
> 16 16 2154.54 2692.31 11023.28 636% 809586 18557781 691014487 0 1715440 0
> 16 24 2130.33 2932.18 11259.09 666% 905669 18531776 691082307 0 2030992 0
> 16 64 2184.01 6954.71 12922.39 910% 1467774 18800203 701770099 0 1715440 0
> 24 8 2284.88 2645.88 10854.89 590% 833061 18523938 691067170 0 1715328 0
> 24 12 2203.72 2696.96 11033.10 623% 931443 18457749 691187723 0 2016368 0
> 24 16 2176.02 2727.94 11113.33 636% 940044 18420200 690959670 0 1715440 0
> 24 24 2170.38 2938.80 11643.10 671% 1023328 18641215 686665448 15 1715440 0
> 24 64 2200.02 7188.60 12902.42 913% 1509158 18924772 690615091 66 1715440 0
> 64 8 2309.40 2702.33 10952.18 591% 753168 18687309 690927732 10 1867440 0
> 64 12 2230.80 2765.98 11131.22 622% 875495 18744802 691213524 28 1715216 0
> 64 16 2182.22 2786.22 11180.86 640% 881328 18724987 691020084 109 1768576 0
> 64 24 2136.20 3001.36 11238.81 666% 898320 18646384 691239254 46 1715312 0
> 64 64 2189.73 7154.10 12846.99 913% 1416830 18781801 690890798 41 1715424 0
> 
> What it shows is that BB_NUMBER_THREADS makes no difference at all in this range. As for PARALLEL_MAKE, it shows 24 is better than 16 but 64 is too high, incurring a massive scheduling penalty. I wonder if newer kernel versions have become more efficient. In hindsight, I should have included 32 and 48 cores in the test.
> 
> Unfortunately I was unable to produce plots with bb-matrix-plot.sh. It gave me pretty png files, but missing any plotted data:


Right, gnuplot likes evenly spaced values of BB and PM. So you could
have done: 8,12,16,24,28,32 (anything about that is going to go down
anyway). Unfortunately, the gaps force the plot to generate spikes at
the interpolated points. I'm open to ideas on how to make it compatible
with arbitrary gaps and avoid the spikes.


Perhaps I should rewrite this with python matplotlib and scipy and use
the interpolate module. This is non-trivial, so not something I'll get
to quickly.

> 
> # ../../poky/scripts/contrib/bb-perf/bb-matrix-plot.sh
>          line 0: Number of grid points must be in [2:1000] - not changed!
> 
>   Warning: Single isoline (scan) is not enough for a pm3d plot.
>            Hint: Missing blank lines in the data file? See 'help pm3d' and FAQ.
>   Warning: Single isoline (scan) is not enough for a pm3d plot.
>            Hint: Missing blank lines in the data file? See 'help pm3d' and FAQ.
>   Warning: Single isoline (scan) is not enough for a pm3d plot.
>            Hint: Missing blank lines in the data file? See 'help pm3d' and FAQ.
>   Warning: Single isoline (scan) is not enough for a pm3d plot.
>            Hint: Missing blank lines in the data file? See 'help pm3d' and FAQ.
> 
> Result: http://imgur.com/mfgWb
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

