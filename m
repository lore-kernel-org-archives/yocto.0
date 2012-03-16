Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50E6EE013AC
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2012 11:42:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2012 11:42:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129843936"
Received: from unknown (HELO envy.home) ([10.255.12.16])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2012 11:42:20 -0700
Message-ID: <4F638960.80401@linux.intel.com>
Date: Fri, 16 Mar 2012 11:41:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Joshua Immanuel <josh@hipro.co.in>
References: <1331816822.19369.7.camel@babel.joshhome>
In-Reply-To: <1331816822.19369.7.camel@babel.joshhome>
X-Enigmail-Version: 1.4
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: syslinux filesystem size limitation
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
X-List-Received-Date: Fri, 16 Mar 2012 18:42:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/15/2012 06:07 AM, Joshua Immanuel wrote:
> Hello,
> 	In yocto I find that the live image (hddimg) is generated using
> syslinux (in bootimg.bbclass). But, I find there has been no check
> enforced to find whether the filesystem size exceeds 1 GB. The image
> will not boot if the hddimg size exceeds 1GB. This is due to the
> limitation in syslinux.
> 

Where are you getting this information?

From what I can gather, syslinux 2.xx didn't support FAT32, which
limited the maximum filesystem size purely due to limitations of FAT16.
Syslinux 3.xx supports FAT32. We are building syslinux 4.xx in Yocto.

I'm fairly certain I've built syslinux images larger than 1GB without an
issue.

Can you provide a failure case?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

