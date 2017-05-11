Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0992E007EE; Thu, 11 May 2017 08:12:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44096E007EE
	for <yocto@yoctoproject.org>; Thu, 11 May 2017 08:12:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 May 2017 08:12:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,324,1491289200"; d="scan'208";a="85622406"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga002.jf.intel.com with ESMTP; 11 May 2017 08:12:03 -0700
Date: Thu, 11 May 2017 18:11:51 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Jan Kiszka <jan.kiszka@siemens.com>
Message-ID: <20170511151151.GA44384@mbabyjoh-desk.ger.corp.intel.com>
References: <7ffccd7c-3538-57fd-9380-9ba38f5f3c0a@siemens.com>
MIME-Version: 1.0
In-Reply-To: <7ffccd7c-3538-57fd-9380-9ba38f5f3c0a@siemens.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH] Fix binary paths when setting alternatives
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
X-List-Received-Date: Thu, 11 May 2017 15:12:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 11, 2017 at 07:49:16AM +0200, Jan Kiszka wrote:
> Neither the JDK nor the JRE puts binaries under $JAVA_HOME/jre anymore.
> Seen with Java 8, update 131.
> 
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc | 12 ++++++------
>  recipes-devtools/oracle-java/oracle-jse.inc     |  4 ++--
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 9fd76e1..935ad9b 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -28,14 +28,14 @@ PROVIDES += "virtual/javac virtual/java-initial"
>  
>  pkg_postinst_${PN} () {
>  	update-alternatives --install ${bindir}/jar   jar   ${JDK_HOME}/bin/jar 100
> -	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/jre/bin/java 100
> -	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/jre/bin/javac 100
> +	update-alternatives --install ${bindir}/java  java  ${JDK_HOME}/bin/java 100
> +	update-alternatives --install ${bindir}/javac javac ${JDK_HOME}/bin/javac 100
>  	update-alternatives --install ${bindir}/javah javah ${JDK_HOME}/bin/javah 100
>  }
>  
>  pkg_prerm_${PN} () {
> -	update-alternatives --remove jar   ${JDK_HOME}/jre/bin/jar
> -	update-alternatives --remove java  ${JDK_HOME}/jre/bin/java
> -	update-alternatives --remove javac ${JDK_HOME}/jre/bin/javac
> -	update-alternatives --remove javah ${JDK_HOME}/jre/bin/javah
> +	update-alternatives --remove jar   ${JDK_HOME}/bin/jar
> +	update-alternatives --remove java  ${JDK_HOME}/bin/java
> +	update-alternatives --remove javac ${JDK_HOME}/bin/javac
> +	update-alternatives --remove javah ${JDK_HOME}/bin/javah
>  }
> diff --git a/recipes-devtools/oracle-java/oracle-jse.inc b/recipes-devtools/oracle-java/oracle-jse.inc
> index c812cf7..ce8280c 100644
> --- a/recipes-devtools/oracle-java/oracle-jse.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse.inc
> @@ -41,9 +41,9 @@ PROVIDES += "virtual/java"
>  inherit update-alternatives
>  
>  pkg_postinst_${PN} () {
> -	update-alternatives --install ${bindir}/java java ${JDK_HOME}/jre/bin/java 75
> +	update-alternatives --install ${bindir}/java java ${JDK_HOME}/bin/java 75
>  }
>  
>  pkg_prerm_${PN} () {
> -	update-alternatives --remove java ${JDK_HOME}/jre/bin/java
> +	update-alternatives --remove java ${JDK_HOME}/bin/java
>  }
> -- 

Pushed, Thanks!

Warm Regards,
Maxin

