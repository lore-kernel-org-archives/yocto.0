Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7129E0049B
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 07:46:39 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Oct 2012 07:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,612,1344236400"; d="scan'208";a="229728070"
Received: from unknown (HELO [10.255.14.73]) ([10.255.14.73])
	by orsmga002.jf.intel.com with ESMTP; 19 Oct 2012 07:46:27 -0700
Message-ID: <1350657987.1569.5.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Fri, 19 Oct 2012 09:46:27 -0500
In-Reply-To: <cover.1350604720.git.nitin.a.kamble@intel.com>
References: <cover.1350604720.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 0/1] meta-intel: mesa-dri build warning fix
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
X-List-Received-Date: Fri, 19 Oct 2012 14:46:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-18 at 17:00 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Only one commit in this pull request to avoid the mes-dri build time warning.
> 

Pulled into meta-intel/master.

Thanks,

Tom

> Thanks,
> Nitin
> 
> The following changes since commit 69c3e43be6f493844a2f432ea0a56c2f6619ca00:
> 
>   meta-cedartrail: Add development packages to pvr driver recipe (2012-10-18 09:08:07 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
> 
> Nitin A Kamble (1):
>   mesa-dri.bbappend: avoid buildtime warnings
> 
>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
>  create mode 100644 common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
> 



