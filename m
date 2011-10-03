Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67C04E00536
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 12:05:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 Oct 2011 12:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,481,1312182000"; d="scan'208";a="69879953"
Received: from unknown (HELO [10.255.15.15]) ([10.255.15.15])
	by fmsmga001.fm.intel.com with ESMTP; 03 Oct 2011 12:04:55 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E8A0380.1030502@linux.intel.com>
References: <4E8A0380.1030502@linux.intel.com>
Date: Mon, 03 Oct 2011 14:05:31 -0500
Message-ID: <1317668731.2323.22.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: GRUB fix for 1.1: Preferred approach for default grub version
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
X-List-Received-Date: Mon, 03 Oct 2011 19:05:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Mon, 2011-10-03 at 11:48 -0700, Darren Hart wrote:
> When grub2 was merged int oe-core, it became the default (rather than
> being explicitly requested by the 64b meta-intel BSPs). This breaks the
> live install on 32b systems, like the n450 - installing grub v1.99 with
> a grub v1 config.
> 
> We have a couple options on how to fix this.
> 
> 1) Set PREFERRED_PROVIDER_grub="0.97" in all 32b x86 machine configs
> 2) Set DEFAULT_PREFERENCE="-1" in the grub_1.99.bb recipe which would
>    affect all of oe-core.
> 3) Some alternate approach which would be the equivalent of
>    DEFAULT_PREFERENCE, but only for meta-yocto BSPs or the poky
>    "distro".
> 
> Given the time frame, I'd prefer to agree on the approach before writing
> and testing patches. Preferences?
> 

Not sure why it wouldn't work for the n450 - it worked for the other
32-bit BSPs in meta-intel.  Let me take a look...

Tom

> Thanks,
> 



