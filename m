Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01FB1E0155E
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 07:47:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 13 Sep 2013 07:47:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,898,1371106800"; d="scan'208";a="395294504"
Received: from unknown (HELO helios.localnet) ([10.252.123.177])
	by fmsmga001.fm.intel.com with ESMTP; 13 Sep 2013 07:47:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 13 Sep 2013 15:47:37 +0100
Message-ID: <5110332.cctxih5Myx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-29-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <5233192B.60901@mlbassoc.com>
References: <5233192B.60901@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Differing fetch results
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
X-List-Received-Date: Fri, 13 Sep 2013 14:47:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Friday 13 September 2013 07:54:51 Gary Thomas wrote:
> I just did a build, totally from scratch, using the current master:
>    commit dd36930f3f37b2e0e1258de28ac1b1fa99cf196f
>    Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>    Date:   Thu Sep 12 13:06:22 2013 +0000
> 
> I mention "from scratch" as I did this on a fresh machine with
> no pre-downloaded sources. (I mostly build using sources I've
> already collected over the past years...)  What I noticed is
> that many of the freshly downloaded packages have the same
> time stamps as the ones in my download repository, but a fair
> number have today's date on them.
> 
> Here are a few examples of downloads that differ:
> 
> My sources repository:
> -rw-rw-r-- 1 gthomas gthomas  1781068 May 14 04:19 bison-2.7.1.tar.xz
> -rw-rw-r-- 1 gthomas gthomas  2213841 May 14 04:19 gmp-5.1.1.tar.bz2
> -rw-rw-r-- 1 gthomas gthomas   983500 Aug  8  2012 gperf-3.0.4.tar.gz
> -rw-rw-r-- 1 gthomas gthomas  2826473 Aug  8  2012 ncurses-5.9.tar.gz
> 
> Today's build:
> -rw-rw-r-- 1 gthomas gthomas  1781068 Sep 13 12:11 bison-2.7.1.tar.xz
> -rw-rw-r-- 1 gthomas gthomas  2213841 Sep 13 12:11 gmp-5.1.1.tar.bz2
> -rw-rw-r-- 1 gthomas gthomas   983500 Sep 13 12:12 gperf-3.0.4.tar.gz
> -rw-rw-r-- 1 gthomas gthomas  2826473 Sep 13 12:12 ncurses-5.9.tar.gz
> 
> Note: the MD5 hashes match so these are the same files, just different
> dates.
> 
> Can someone explain why they are different?  The full list of files
> which were downloaded to build a minimal image are attached.

You haven't set up local PREMIRRORS (perhaps via own-mirrors.bbclass) by any 
chance?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

