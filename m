Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD337E013A7
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 09:42:56 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Jul 2013 09:42:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,736,1367996400"; d="scan'208";a="336152921"
Received: from unknown (HELO helios.localnet) ([10.252.122.156])
	by azsmga001.ch.intel.com with ESMTP; 24 Jul 2013 09:42:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Dinu <andrei.adrianx.dinu@intel.com>
Date: Wed, 24 Jul 2013 17:42:53 +0100
Message-ID: <3592040.GRc4gZ3pWQ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <1374670537-30657-1-git-send-email-andrei.adrianx.dinu@intel.com>
References: <1374670537-30657-1-git-send-email-andrei.adrianx.dinu@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] libcap-ng - new recipe needed for meta-security
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
X-List-Received-Date: Wed, 24 Jul 2013 16:43:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andrei,

On Wednesday 24 July 2013 15:55:37 Andrei Dinu wrote:
> A script from the meta-security layer had a missing
> dependency that prevented it to work correctly.
> 
> Signed-off-by: Andrei Dinu <andrei.adrianx.dinu@intel.com>
> ---
>  meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
>  create mode 100644 meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb
> 
> diff --git a/meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb
> b/meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb new file mode 100644
> index 0000000..a377ddd
> --- /dev/null
> +++ b/meta/recipes-support/libcap-ng/libcap-ng_0.7.3.bb
> @@ -0,0 +1,12 @@
> +DESCRIPTION = "The libcap-ng library is intended to make programming with
> posix capabilities much easier than the traditional libcap library."
> +HOMEPAGE = "http://people.redhat.com/sgrubb/libcap-ng/index.html" +LICENSE
> = "GPL-2.0"
> +DEPENDS = "libcap"

Does libcap-ng really need libcap or is it effectively a replacement for it? I 
don't see a check in the configure script for it and the Fedora spec file 
doesn't mention it either.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

