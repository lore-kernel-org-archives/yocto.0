Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE23EE01371
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 14:39:31 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 04 Sep 2012 14:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,369,1344236400"; d="scan'208";a="188896246"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by orsmga001.jf.intel.com with ESMTP; 04 Sep 2012 14:39:17 -0700
Message-ID: <50467505.8040701@linux.intel.com>
Date: Tue, 04 Sep 2012 14:39:17 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Zanussi, Tom" <tom.zanussi@intel.com>, 
	"Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
References: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
	<1346792241-23600-2-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1346792241-23600-2-git-send-email-sgw@linux.intel.com>
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
X-List-Received-Date: Tue, 04 Sep 2012 21:39:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/04/2012 01:57 PM, Saul Wold wrote:
> This adds infomation about how to disable the Time Limited Kernel
>
> [YOCTO #2704]
>
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>   .../base-files/base-files_3.0.14.bbappend          |    3 +++
>   meta-tlk/recipes-core/base-files/files/motd        |    7 +++++++
>   2 files changed, 10 insertions(+), 0 deletions(-)
>   create mode 100644 meta-tlk/recipes-core/base-files/base-files_3.0.14.bbappend
>   create mode 100644 meta-tlk/recipes-core/base-files/files/motd
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
> index 0000000..a6a6270
> --- /dev/null
> +++ b/meta-tlk/recipes-core/base-files/files/motd
> @@ -0,0 +1,7 @@
> +This image contains a time limited kernel and will halt the machine
> +automatically in 10 days. Do not include this image in a product.
> +

Tom, Please hold these for 24 hours, I need to confirm with Bruce on if 
it HALTS the machine or Reboots it.

Thanks
	Sau!
> +Use the image for evaluation purposes only.
> +
> +Please see http://www.yoctoproject.org/tlk for instructions on how to
> +eliminate the timeout.
>

