Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0498F4C803BA
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2011 20:23:59 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Mar 2011 18:23:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,256,1297065600"; d="scan'208";a="715462726"
Received: from unknown (HELO [10.255.12.102]) ([10.255.12.102])
	by orsmga001.jf.intel.com with ESMTP; 02 Mar 2011 18:23:59 -0800
Message-ID: <4D6EFBBE.5040004@intel.com>
Date: Wed, 02 Mar 2011 18:23:58 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A334FC309@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A334FC309@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Could you help to have a look at BUG 660
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
X-List-Received-Date: Thu, 03 Mar 2011 02:24:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/2011 05:43 PM, Xu, Dongxiao wrote:
> Hi Richard and Saul,
>
> Could you help to have a review of BUG 660?
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=660
>
> BUG 660 is about missing kernel firmware in poky-image-minimal.
>
> As from most of the machine configuration files in current poky, including
> igep0030.conf, "kernel-modules" and "linux-firmware-sd8686" are part of
> "MACHINE_EXTRA_RRECOMMENDS", like:
>
> MACHINE_EXTRA_RRECOMMENDS = " kernel-modules linux-firmware-sd8686"
>
> However for poky-image-minimal, only "MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS" is
> included. If the kernel module and firmware files are indeed necessary for
> successful boot, we can add them into minimal image.
>
> Any comment on that?
>
> Thanks,
> Dongxiao

Dongxiao,

It seems that the igep machines have been moved to meta-extras now, 
which is the place for machines that are being depreciated.  If the bug
is just against igep then we can close this, if there is a more general 
situation, then firmware files that are required to boot need to be 
moved to the MACHINE_ESSENTIAL_EXTRA_RRECOMMEDS as that would be the 
right place.

If you want to fix the meta-extra/igep you can add the 
MACHINE_ESSENTIAL_EXTRA_RRCOOMENTS instead of MACHINE_EXTRA_RRECOMMEDS?


Sau!

