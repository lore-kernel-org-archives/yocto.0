Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA7CE01562
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 15:24:32 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Jun 2013 15:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,939,1363158000"; d="scan'208";a="360447628"
Received: from unknown (HELO [10.255.13.73]) ([10.255.13.73])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jun 2013 15:24:31 -0700
Message-ID: <1372199071.9056.4.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Tue, 25 Jun 2013 17:24:31 -0500
In-Reply-To: <1372178826-19688-1-git-send-email-ross.burton@intel.com>
References: <1372178826-19688-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] meta-nuc: don't install lms8 as NUC doesn't support AMT
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
X-List-Received-Date: Tue, 25 Jun 2013 22:24:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-06-25 at 17:47 +0100, Ross Burton wrote:
> The NUC doesn't support Active Management Technology, so don't install lms8 as
> part of the machine recommendations.
> 
> Signed-off-by: Ross Burton <ross.burton@intel.com>

Pulled into meta-intel/master.

Thanks,

Tom

> ---
>  meta-nuc/conf/machine/nuc.conf |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/meta-nuc/conf/machine/nuc.conf b/meta-nuc/conf/machine/nuc.conf
> index 1404f72..f6ae404 100644
> --- a/meta-nuc/conf/machine/nuc.conf
> +++ b/meta-nuc/conf/machine/nuc.conf
> @@ -19,7 +19,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
>             ${XSERVER_IA32_I965} \
>             "
>  
> -MACHINE_EXTRA_RRECOMMENDS += "lms8 linux-firmware-iwlwifi-6000g2b-6"
> +MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2b-6"
>  
>  # disable the serial port configuration
>  SERIAL_CONSOLE = ""



