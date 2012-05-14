Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04926E01396
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 09:36:59 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2012 09:36:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="140450964"
Received: from dkrish4-mobl.amr.corp.intel.com (HELO envy.home)
	([10.7.199.153])
	by orsmga001.jf.intel.com with ESMTP; 14 May 2012 09:36:59 -0700
Message-ID: <4FB13480.3000501@linux.intel.com>
Date: Mon, 14 May 2012 09:36:16 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
	<991789c30cbc85521bf8c76bcea45df1184cb0ab.1336851382.git.tom.zanussi@intel.com>
In-Reply-To: <991789c30cbc85521bf8c76bcea45df1184cb0ab.1336851382.git.tom.zanussi@intel.com>
X-Enigmail-Version: 1.4.1
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 11/22] meta: add scsi feature
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
X-List-Received-Date: Mon, 14 May 2012 16:37:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/12/2012 12:41 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> Add a feature to enable SCSI support.  This also creates a scsi/
> directory to contain further SCSI options.
> 
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta/cfg/kernel-cache/features/scsi/scsi.cfg |    1 +
>  meta/cfg/kernel-cache/features/scsi/scsi.scc |    4 ++++
>  2 files changed, 5 insertions(+), 0 deletions(-)
>  create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.cfg
>  create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.scc
> 
> diff --git a/meta/cfg/kernel-cache/features/scsi/scsi.cfg b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
> new file mode 100644
> index 0000000..2e9142f
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
> @@ -0,0 +1 @@
> +CONFIG_SCSI=y

There are additional dependencies for this which certain policy
configurations may not enable for us. CONFIG_BLOCK for example.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

