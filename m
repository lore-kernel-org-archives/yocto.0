Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B85BE003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 08:07:15 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2012 08:07:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124213376"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by fmsmga001.fm.intel.com with ESMTP; 02 Mar 2012 08:07:14 -0800
Message-ID: <4F50EFFA.7080809@linux.intel.com>
Date: Fri, 02 Mar 2012 08:06:18 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Luo Zhenhua-B19537 <B19537@freescale.com>
References: <CA452391058F6D4E9715FB2C29D9312A0113E694@039-SN2MPN1-021.039d.mgd.msft.net>
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A0113E694@039-SN2MPN1-021.039d.mgd.msft.net>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: initramfs support in Yocto
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
X-List-Received-Date: Fri, 02 Mar 2012 16:07:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Zhenhua,

On 03/02/2012 01:59 AM, Luo Zhenhua-B19537 wrote:
> Hello all,
> 
> Does Yocto support initramfs build?

Can you be more specific about what you are looking for? When you build
an image with the cpio.gz image type, you can boot that as an initramfs
with the following kernel command line:

initrd=core-image-minimal-fri2.cpio.gz root=/dev/ram0

If you are looking for something beyond that, please elaborate.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

