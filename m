Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B44CE013BA
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 12:46:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 29 Aug 2013 12:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,985,1367996400"; d="scan'208";a="388477675"
Received: from unknown (HELO [10.255.15.104]) ([10.255.15.104])
	by fmsmga001.fm.intel.com with ESMTP; 29 Aug 2013 12:46:12 -0700
Message-ID: <1377805572.1643.90.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jate Sujjavanich <Jate.Sujjavanich@myfuelmaster.com>
Date: Thu, 29 Aug 2013 14:46:12 -0500
In-Reply-To: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
References: <6C2434209962DC46B88345CA85C334A201CAAD7035ED@Courier.syntech.org>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: yocto-bsp and kconf-check
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
X-List-Received-Date: Thu, 29 Aug 2013 19:46:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-08-29 at 11:36 -0400, Jate Sujjavanich wrote:
> It appears that the yocto-bsp script generates a kernel configuration that creates some warnings during kern-tools' kconf_check. The {{machine}}.cfg file has many non-hardware options, therefore the script warns.
> 
> It seems like many of these should be in the standard kernel configuration. Is this correct, and does the yocto-bsp data need to be updated?
> 

The templates in yocto-bsp are derived from the reference and qemu BSPs,
and have basically inherited the kernel config from those.

Now that the new kernel has landed, I've started updating the templates
for 3.10, and yes, if all the reference and qemu BSPs have been fixed in
this regard, I need to update the yocto-bsp templates with the new
options as well.

BTW, which arch did you use to generate your BSP?

Tom

> - Jate
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



