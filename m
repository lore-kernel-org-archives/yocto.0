Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78BE9E006CD; Wed, 29 Mar 2017 03:29:32 -0700 (PDT)
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
	*      [192.55.52.88 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A81E00546
	for <yocto@yoctoproject.org>; Wed, 29 Mar 2017 03:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490783369; x=1522319369;
	h=date:from:to:cc:subject:message-id:references:
	mime-version:in-reply-to;
	bh=vR+MGhPekpKACIstczNczehRp14PnZLvIQquc7Izrfs=;
	b=ie52rdTJ+/DAFioNmnef3v1BbiZ3hWVM8QQd5kqMoDeko9vTIxB6S+X/
	/HajafW0rph4GPW9P5XYRlFAl6YdlA==;
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Mar 2017 03:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,240,1486454400"; d="scan'208";a="66377993"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga002.jf.intel.com with ESMTP; 29 Mar 2017 03:29:26 -0700
Date: Wed, 29 Mar 2017 13:29:09 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Jaap de Jong <jaap.dejong@nedap.com>
Message-ID: <20170329102908.GA6967@mbabyjoh-desk.ger.corp.intel.com>
References: <1490732744-25547-1-git-send-email-jaap.dejong@nedap.com>
	<4242ba68-4015-6c46-757e-597d80d84065@nedap.com>
MIME-Version: 1.0
In-Reply-To: <4242ba68-4015-6c46-757e-597d80d84065@nedap.com>
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
X-List-Received-Date: Wed, 29 Mar 2017 10:29:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Mar 29, 2017 at 09:03:15AM +0200, Jaap de Jong wrote:
> ---
> 
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
> -FETCHCMD_wget_append = " --header=Cookie:oraclelicense=a "
> +FETCHCMD_wget_append = " --no-check-certificate --no-cookies --header 'Cookie: oraclelicense=accept-securebackup-cookie' "
>  RDEPENDS_${PN} += " libasound atk cairo gdk-pixbuf mesa gtk+ libxtst libxi"
>  # get the java update version in the resulting package
> --

This series doesn't apply cleanly to master branch. Please respin it.

Best Regards,
Maxin

