Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 373F2E014DA
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:38:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 05 Sep 2012 14:38:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,376,1344236400"; d="scan'208";a="218576750"
Received: from unknown (HELO [10.255.13.143]) ([10.255.13.143])
	by fmsmga001.fm.intel.com with ESMTP; 05 Sep 2012 14:38:13 -0700
Message-ID: <1346881093.3654.1.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 05 Sep 2012 16:38:13 -0500
In-Reply-To: <fa8f0e879cb51717131fc1a2f01b88fa61c9caf2.1346864117.git.sgw@linux.intel.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
	<fa8f0e879cb51717131fc1a2f01b88fa61c9caf2.1346864117.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] linux-yocto: Update linux-yocto for 3.2 and 3.4
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
X-List-Received-Date: Wed, 05 Sep 2012 21:38:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 09:56 -0700, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
>  3 files changed, 14 insertions(+), 0 deletions(-)
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> 
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 58a6541..138cc21 100644
> --- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -2,3 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>  
>  # enable the time limited kernel configuration options
>  SRC_URI += "file://time-limited-kernel.cfg"
> +
> +PR .= ".1"
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..138cc21
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +# enable the time limited kernel configuration options
> +SRC_URI += "file://time-limited-kernel.cfg"
> +
> +PR .= ".1"
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> new file mode 100644
> index 0000000..138cc21
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +# enable the time limited kernel configuration options
> +SRC_URI += "file://time-limited-kernel.cfg"
> +
> +PR .= ".1"



