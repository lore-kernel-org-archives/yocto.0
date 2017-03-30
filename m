Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85D86E00985; Thu, 30 Mar 2017 01:57:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A1F6E00953
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 01:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490864236; x=1522400236;
	h=date:from:to:cc:subject:message-id:references:
	mime-version:in-reply-to;
	bh=ES4wUm4LDsStp/xasSjrwNlnrUxGEONzYDrQQNZyRv8=;
	b=dsauCKAv/jIRcLHFfBoTx9VdF4hD8lkxxt5CSueRL4atrTh1N36AdQUz
	lqTZsSqwyBlwFP7B/3AGW8lnqAh7Vg==;
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Mar 2017 01:57:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,246,1486454400"; d="scan'208";a="241962517"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by fmsmga004.fm.intel.com with ESMTP; 30 Mar 2017 01:57:13 -0700
Date: Thu, 30 Mar 2017 11:57:28 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <20170330085728.GA528@mbabyjoh-desk.ger.corp.intel.com>
References: <98e3cae0-9d39-e146-9dad-af0c6c37ab55@nedap.com>
MIME-Version: 1.0
In-Reply-To: <98e3cae0-9d39-e146-9dad-af0c6c37ab55@nedap.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH 1/6] oracle-jse.inc: Fix unattended downloading source
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
X-List-Received-Date: Thu, 30 Mar 2017 08:57:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Thank you very much for these updates. Merged to master-next.

Note: from now on, please send the patches using "git send-email"
as mentioned in the README file. 

On Thu, Mar 30, 2017 at 08:28:09AM +0200, Jaap de Jong wrote:
> 

> From d20c60ce51a399541329bd5360e5489f537d630b Mon Sep 17 00:00:00 2001
> From: Jaap de Jong <jaap.dejong@nedap.com>
> Date: Tue, 28 Mar 2017 14:07:19 +0200
> Subject: [PATCH 1/6] oracle-jse.inc: Fix unattended downloading source
> 
> ---
>  recipes-devtools/oracle-java/oracle-jse.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
> index 8cb0953..488bce2 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -6,7 +6,7 @@ LIC_FILES_CHKSUM = "\
>  	file://${JDK_JRE}${PV}_${PV_UPDATE}/THIRDPARTYLICENSEREADME.txt;md5=745d6db5fc58c63f74ce6a7d4db7e695 \
>  	"
>  
> -FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a "
> +FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
>  
>  RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
>  # get the java update version in the resulting package
> -- 
> 2.7.4

Best Regards,
Maxin

