Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14518E00B9C; Wed, 28 Mar 2018 00:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A47E5E00851
	for <yocto@yoctoproject.org>; Wed, 28 Mar 2018 00:10:14 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Mar 2018 00:10:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,370,1517904000"; d="scan'208";a="41900718"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.221.22.152])
	([10.221.22.152])
	by fmsmga001.fm.intel.com with ESMTP; 28 Mar 2018 00:10:11 -0700
To: Kai Kang <kai.kang@windriver.com>, yocto@yoctoproject.org
References: <20180328065517.13807-1-kai.kang@windriver.com>
	<20180328065517.13807-3-kai.kang@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <5ca43c93-c0b3-b2e1-29a8-797b72cda370@intel.com>
Date: Wed, 28 Mar 2018 15:10:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180328065517.13807-3-kai.kang@windriver.com>
Subject: Re: [PATCH 2/2] audit: fix pkgconfigdir
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
X-List-Received-Date: Wed, 28 Mar 2018 07:10:15 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 03/28/2018 02:55 PM, Kai Kang wrote:
> Because 'libdir' is set with ${base_libdir} in recipe file of audit,
> package config files(.pc) are installed to ${base_libdir}/pkgconfig that
> variable pkgconfigdir is set with ${libdir}/pkgconfig in makefile.
> 
> Set pkgconfigdir directly to install .pc files to right directory.
> 
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  recipes-security/audit/audit_2.7.6.bb | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-security/audit/audit_2.7.6.bb b/recipes-security/audit/audit_2.7.6.bb
> index 5bfda7b..33b49c9 100644
> --- a/recipes-security/audit/audit_2.7.6.bb
> +++ b/recipes-security/audit/audit_2.7.6.bb
> @@ -45,6 +45,7 @@ EXTRA_OEMAKE += "PYLIBVER='python${PYTHON_BASEVERSION}' \
>  	PYINC='${STAGING_INCDIR}/$(PYLIBVER)' \
>  	pyexecdir=${libdir}/python${PYTHON_BASEVERSION}/site-packages \
>  	STDINC='${STAGING_INCDIR}' \
> +	pkgconfigdir=${libdir}/pkgconfig \
>  	"
>  
>  SUMMARY_audispd-plugins = "Plugins for the audit event dispatcher"
> @@ -64,7 +65,7 @@ FILES_audispd-plugins += "${sysconfdir}/audisp/audisp-remote.conf \
>  	"
>  FILES_${PN}-dbg += "${libdir}/python${PYTHON_BASEVERSION}/*/.debug"
>  FILES_${PN}-python = "${libdir}/python${PYTHON_BASEVERSION}"
> -FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la ${base_libdir}/pkgconfig/*"
> +FILES_${PN}-dev += "${base_libdir}/*.so ${base_libdir}/*.la"

Aren't these already part of FILES_${PN}-dev in bitbake.conf in oe-core?

Thanks,
Anuj

