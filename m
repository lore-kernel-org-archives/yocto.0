Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A2EE012F0
	for <yocto@yoctoproject.org>; Sun, 30 Sep 2012 08:12:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Sep 2012 08:12:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,513,1344236400"; d="scan'208";a="228309163"
Received: from unknown (HELO helios.localnet) ([10.252.122.37])
	by fmsmga001.fm.intel.com with ESMTP; 30 Sep 2012 08:12:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Sun, 30 Sep 2012 16:12:44 +0100
Message-ID: <1495016.8uVbdRUQqm@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <036e0a003642b5dd99a9bb3b89efe7fa19462cb5.1348861287.git.kevin.strasser@linux.intel.com>
References: <cover.1348861287.git.kevin.strasser@linux.intel.com>
	<036e0a003642b5dd99a9bb3b89efe7fa19462cb5.1348861287.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/1] nfs-utils: workaround for nfsd regression in the 3.4 kernel
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
X-List-Received-Date: Sun, 30 Sep 2012 15:12:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Kevin,

On Friday 28 September 2012 12:44:06 Kevin Strasser wrote:
> The version of nfsd used in 3.4 kernels tries to upcall the
> new reboot-recovery daemon and gets stuck if it is not found.
> This causes client mounts to fail and prints the following
> error message during boot:
> 
> "NFSD: starting 90-second grace period
> NFSD: Unable to end grace period: -110"
> 
> If the directory "/var/lib/nfs/v4recovery" exists, nfsd will
> revert back to the old method.
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  .../nfs-utils/nfs-utils_1.2.3.bbappend             |    8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
> 
> diff --git a/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
> b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend new file mode
> 100644
> index 0000000..2c91a93
> --- /dev/null
> +++ b/recipes-connectivity/nfs-utils/nfs-utils_1.2.3.bbappend
> @@ -0,0 +1,8 @@
> +PR = "r5"

This needs to be:

PRINC = "1"

or, to ensure other layers can also increment the value:

PRINC := "${@int(PRINC) + 1}"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

