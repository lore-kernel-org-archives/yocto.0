Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20253E00294
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 21:45:35 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 25 Oct 2012 21:45:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,650,1344236400"; d="scan'208";a="238439903"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by fmsmga001.fm.intel.com with ESMTP; 25 Oct 2012 13:13:20 -0700
Message-ID: <1351196000.27553.101.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Thu, 25 Oct 2012 15:13:20 -0500
In-Reply-To: <b724623f2f22fdb2643a57ea4939831f54bd94e4.1351187270.git.nitin.a.kamble@intel.com>
References: <cover.1351187270.git.nitin.a.kamble@intel.com>
	<b724623f2f22fdb2643a57ea4939831f54bd94e4.1351187270.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [Patch v3 7/7] crownbay: add more information in README
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
X-List-Received-Date: Fri, 26 Oct 2012 04:45:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-25 at 10:49 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Mention Little Bay & Shell Bay boards from the crownbay kit
> in the readme.
> 
> Signed-off-by: Nitin A Kamble <nitin.a.kamble@intel.com>
> ---
>  meta-crownbay/README |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> 
> diff --git a/meta-crownbay/README b/meta-crownbay/README
> index 1f164f4..525b2e6 100644
> --- a/meta-crownbay/README
> +++ b/meta-crownbay/README
> @@ -5,6 +5,8 @@ Please see the corresponding sections below for details.
>  The Crown Bay platform consists of the Intel Atom E6xx processor,
>  plus the Intel EG20T Platform Controller Hub (Tunnel Creek + Topcliff).
>  
> +The crownbay kit consists of two boards, Shell Bay & Little Bay.
> +

This seems like a sort of random fact thrown in and doesn't explain what
Shell Bay or Little Bay are (and shouldn't it be Crown Bay kit to match,
instead of crownbay?).

I guess I'd like to see the text explaining the hardware fit together as
a whole and not just be a collection of facts about various aspects of
the hardware listed out randomly.

Tom

>  It also supports the E6xx embedded on-chip graphics via the Intel
>  Embedded Media and Graphics Driver (EMGD) 1.14 Driver.
>  



