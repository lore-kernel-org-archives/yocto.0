Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A7F7E0027D
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2012 10:38:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jul 2012 10:38:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="175636140"
Received: from unknown (HELO helios.localnet) ([10.252.121.11])
	by fmsmga001.fm.intel.com with ESMTP; 10 Jul 2012 10:38:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@intel.com>
Date: Tue, 10 Jul 2012 18:38:20 +0100
Message-ID: <3111296.iFJpZYSgza@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <1341940890-6666-1-git-send-email-kevin.strasser@intel.com>
References: <1341940890-6666-1-git-send-email-kevin.strasser@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-baryon: update proftpd SRC_URI
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
X-List-Received-Date: Tue, 10 Jul 2012 17:38:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 10 July 2012 10:21:30 Kevin Strasser wrote:
> ftp.nl.uu.net is no longer hosting the proftpd package.
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@intel.com>
> ---
>  recipes-extended/proftpd/proftpd_1.3.3c.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-extended/proftpd/proftpd_1.3.3c.bb
> b/recipes-extended/proftpd/proftpd_1.3.3c.bb index dc1050e..8de80fc 100644
> --- a/recipes-extended/proftpd/proftpd_1.3.3c.bb
> +++ b/recipes-extended/proftpd/proftpd_1.3.3c.bb
> @@ -6,7 +6,7 @@ LIC_FILES_CHKSUM =
> "file://COPYING;md5=fdedcde17b1ffd967d86c20fe0ac158a"
> 
>  PR = "r0"
> 
> -SRC_URI =
> "ftp://ftp.nl.uu.net/pub/unix/ftp/proftpd/ftp/distrib/source/${PN}-${PV}.ta
> r.gz \ +SRC_URI = "ftp://ftp.proftpd.org/distrib/source/${PN}-${PV}.tar.gz \
> file://make.patch \
>  	file://basic.conf.patch \
>  	"

Merged to meta-baryon master, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

