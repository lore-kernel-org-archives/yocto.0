Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EDB2E00CFC; Thu, 17 Aug 2017 04:26:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A892E00B67
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 04:26:26 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Aug 2017 04:26:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,387,1498546800"; d="scan'208";a="1183825124"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by fmsmga001.fm.intel.com with ESMTP; 17 Aug 2017 04:26:25 -0700
Date: Thu, 17 Aug 2017 14:28:13 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Jan Remmet <j.remmet@phytec.de>
Message-ID: <20170817112813.GA36930@mbabyjoh-desk.ger.corp.intel.com>
References: <1502888089-13686-1-git-send-email-j.remmet@phytec.de>
	<1502951792-29932-1-git-send-email-j.remmet@phytec.de>
MIME-Version: 1.0
In-Reply-To: <1502951792-29932-1-git-send-email-j.remmet@phytec.de>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH v2] oracle-java: create directory before creating links
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
X-List-Received-Date: Thu, 17 Aug 2017 11:26:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Aug 17, 2017 at 08:36:32AM +0200, Jan Remmet wrote:
> if bindir directory doesn't exists the link is created wrongly:
> 
> file -b tmp/work/x86_64-linux/oracle-jse-jdk-x86-64-native/1.8.0-u131r0/image/home/yocto/build/tmp/sysroots/x86_64-linux/usr/bin
> symbolic link to
> `/home/yocto/build/tmp/sysroots/x86_64-linux/usr/lib/jvm/java-8-oracle/bin/javac'
> 
> tested on morty
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> ---
> v2: remove default -m 0755 from install command 
> 
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 935ad9bc2d9f..a7210d9ca475 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -12,11 +12,14 @@ JDK_JRE = "jdk"
>  require oracle-jse.inc
>  
>  do_install_class-native() {
> -	install -d -m 0755			${D}${libdir_jvm}
> +	install -d				${D}${libdir_jvm}
>  	cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE}	${D}${JDK_HOME}
>  
> +	install -d				${D}${bindir}
>  	ln -sf ${JDK_HOME}/bin/java		${D}${bindir}
>  	ln -sf ${JDK_HOME}/bin/javac		${D}${bindir}
> +
> +	install -d				${D}${JDK_HOME}/bin
>  	ln -sf javah				${D}${JDK_HOME}/bin/gjavah
>  	ln -sf jar				${D}${JDK_HOME}/bin/fastjar
>  }
> -- 

Pushed now. Thanks.

Regards,
Maxin

