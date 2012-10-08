Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31CFDE00346
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2012 15:25:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Oct 2012 15:25:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,556,1344236400"; d="scan'208";a="223676065"
Received: from unknown (HELO [10.255.13.229]) ([10.255.13.229])
	by orsmga002.jf.intel.com with ESMTP; 08 Oct 2012 15:25:23 -0700
Message-ID: <1349735122.1948.30.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Mon, 08 Oct 2012 17:25:22 -0500
In-Reply-To: <cover.1349489713.git.nitin.a.kamble@intel.com>
References: <cover.1349489713.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCHv3 0/1] meta-intel misc commits
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
X-List-Received-Date: Mon, 08 Oct 2012 22:25:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-10-05 at 19:17 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Updated the kernel command line for crownbay BSP, after discussions with Darren.
> 
> Thanks,
> Nitin
> 
> The following changes since commit 7228f6b0c81817c8a8455ea78271abfd5d66fed8:
> 
>   meta-tlk: fix ignored SRC_URI appends (2012-10-05 14:47:55 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> 
> Nitin A Kamble (1):
>   crownbay.conf: add kernel parameters for EMGD video acceleration
> 
>  meta-crownbay/conf/machine/crownbay.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 

Pulled into meta-intel/master.

Thanks,

Tom


