Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B27B4C80050
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2011 18:02:12 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Mar 2011 16:01:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,228,1299484800"; d="scan'208";a="616454808"
Received: from unknown (HELO [10.255.12.101]) ([10.255.12.101])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2011 16:01:58 -0700
Message-ID: <4D892A65.9050603@intel.com>
Date: Tue, 22 Mar 2011 16:01:57 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <imb3jt$jfn$1@dough.gmane.org> <imb6k0$551$1@dough.gmane.org>
In-Reply-To: <imb6k0$551$1@dough.gmane.org>
Subject: Re: build failure 2 - poky-image-lsb-sdk-beagleboard with bernard-5.0
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
X-List-Received-Date: Tue, 22 Mar 2011 23:02:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/22/2011 03:08 PM, Robert Berger wrote:
> I think it boils down to the fact, that
>
> meta/recipes-core/base-files/base-files/sysctl.conf
> meta/recipes-extended/procps/procps-3.2.8/sysctl.conf
>
> are different and both should end up at the rootfs.
>
> I guess I could just remove the procps package.
>
> But how to resolve this in a more elegant way and how did the
> autobuilder get away with it?

Hi Robert,

Could you please report this in our bugzilla? I seem to recall running 
into something like this too.

http://bugzilla.pokylinux.org

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

