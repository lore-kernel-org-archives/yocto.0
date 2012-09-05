Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21F9FE01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:38:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Sep 2012 14:38:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,376,1344236400"; d="scan'208";a="218281623"
Received: from unknown (HELO [10.255.13.143]) ([10.255.13.143])
	by fmsmga002.fm.intel.com with ESMTP; 05 Sep 2012 14:38:25 -0700
Message-ID: <1346881104.3654.2.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 05 Sep 2012 16:38:24 -0500
In-Reply-To: <c69e0c612f58b83e19932eb26deaa86400c774d9.1346864117.git.sgw@linux.intel.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
	<c69e0c612f58b83e19932eb26deaa86400c774d9.1346864117.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/3] base-files: add /etc/motd with TLK info
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
X-List-Received-Date: Wed, 05 Sep 2012 21:38:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 09:56 -0700, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  .../base-files/base-files_3.0.14.bbappend          |    3 +++
>  meta-tlk/recipes-core/base-files/files/motd        |    7 +++++++
>  2 files changed, 10 insertions(+), 0 deletions(-)
>  create mode 100644 meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
>  create mode 100644 meta-tlk/recipes-core/base-files/files/motd
> 
> diff --git a/meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend b/meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
> new file mode 100644
> index 0000000..248b225
> --- /dev/null
> +++ b/meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
> @@ -0,0 +1,3 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> +
> +PR .= ".1"
> diff --git a/meta-tlk/recipes-core/base-files/files/motd b/meta-tlk/recipes-core/base-files/files/motd
> new file mode 100644
> index 0000000..13cd74c
> --- /dev/null
> +++ b/meta-tlk/recipes-core/base-files/files/motd
> @@ -0,0 +1,7 @@
> +This image contains a time limited kernel and will reboot the machine
> +automatically in 10 days. Do not include this image in a product.
> +
> +Use the image for evaluation purposes only.
> +
> +Please see http://www.yoctoproject.org/tlk for instructions on how to
> +eliminate the timeout.



