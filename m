Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B04EAE006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 08:39:34 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Dec 2012 08:39:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,223,1355126400"; d="scan'208";a="226997835"
Received: from unknown (HELO helios.localnet) ([10.252.122.253])
	by azsmga001.ch.intel.com with ESMTP; 05 Dec 2012 08:39:16 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kevin Strasser <kevin.strasser@linux.intel.com>
Date: Wed, 05 Dec 2012 16:39:15 +0000
Message-ID: <2654428.AjfVxLn95U@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <bf3576dbca148b536d87be72e5f972af999b7c5a.1354575672.git.kevin.strasser@linux.intel.com>
References: <cover.1354575672.git.kevin.strasser@linux.intel.com>
	<bf3576dbca148b536d87be72e5f972af999b7c5a.1354575672.git.kevin.strasser@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/1] proftpd: conditionally remove /usr/libexec
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
X-List-Received-Date: Wed, 05 Dec 2012 16:39:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 December 2012 15:22:42 Kevin Strasser wrote:
> As of poky commit id 1d18224b24a515a07170ce36dbd725cb203d3300
> libexecdir has been changed to ${libdir}/${BPN} which is typically
> /usr/lib. This change introduces a check to see if /usr/libexec is
> being used before attempting to remove it.
> 
> Fixes [YOCTO #3504]
> 
> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  recipes-extended/proftpd/proftpd_1.3.4b.bb |    5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-extended/proftpd/proftpd_1.3.4b.bb
> b/recipes-extended/proftpd/proftpd_1.3.4b.bb index 8ebafbf..2b2b4e2 100644
> --- a/recipes-extended/proftpd/proftpd_1.3.4b.bb
> +++ b/recipes-extended/proftpd/proftpd_1.3.4b.bb
> @@ -34,7 +34,10 @@ FTPGROUP = "ftp"
> 
>  do_install () {
>  	oe_runmake DESTDIR=${D} install
> -	rmdir ${D}${libexecdir} ${D}${libdir}/proftpd ${D}${datadir}/locale
> +	rmdir ${D}${libdir}/proftpd ${D}${datadir}/locale
> +	if [ -d ${D}/usr/libexec ] ; then
> +		rmdir ${D}/usr/libexec
> +	fi
>  	sed -i '/ *User[ \t]*/s/ftp/${FTPUSER}/' ${D}${sysconfdir}/proftpd.conf
>  	sed -i '/ *Group[ \t]*/s/ftp/${FTPGROUP}/' ${D}${sysconfdir}/proftpd.conf
>  	install -d ${D}${sysconfdir}/init.d

Applied, thanks. I've also sent this over to be applied to meta-networking.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

