Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00266E00AE0; Fri,  7 Apr 2017 06:31:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CF72E009A0
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 06:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491571874; x=1523107874;
	h=date:from:to:cc:subject:message-id:references:
	mime-version:in-reply-to;
	bh=0d5WcCgEOSpD2zwkaoJlOZTdGUXNscrp8n3kozkGY50=;
	b=gmHgKDAc6OTUwd0S6PxdSg+adPnddOOj3pji/3PfvpY1lbI44yE8cFFS
	m1Bo/wC9Mb7c6ywqX/ERHZ1bingpew==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Apr 2017 06:31:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,165,1488873600"; d="scan'208";a="843285928"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by FMSMGA003.fm.intel.com with ESMTP; 07 Apr 2017 06:31:11 -0700
Date: Fri, 7 Apr 2017 16:31:06 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <20170407133106.GA4071@mbabyjoh-desk.ger.corp.intel.com>
References: <1491571179-28844-1-git-send-email-jaap.dejong@nedap.com>
MIME-Version: 1.0
In-Reply-To: <1491571179-28844-1-git-send-email-jaap.dejong@nedap.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH] oracle-jse-ejre: Fix destination
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
X-List-Received-Date: Fri, 07 Apr 2017 13:31:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

Missing Signed-off-by here.

On Fri, Apr 07, 2017 at 03:19:39PM +0200, Jaap de Jong wrote:
> ---
>  recipes-devtools/oracle-java/oracle-jse-ejre.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> index bea4a03..0af0b6b 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
> @@ -19,7 +19,7 @@ LIC_FILES_CHKSUM = "\
>  	"
>  
>  do_compile() {
> -	DEST=${S}/ejre${PV}_${PV_UPDATE}
> +	DEST=${S}/ejre${PV}_${PV_UPDATE}/jre
>  	rm -rf ${DEST}
>  	JAVA_HOME=${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/jrecreate.sh --dest ${DEST}
>  }
> -- 
> 2.7.4
>

Best Regards,
Maxin

