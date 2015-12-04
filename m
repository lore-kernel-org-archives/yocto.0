Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B08EE009AD; Fri,  4 Dec 2015 08:53:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00, DATE_IN_PAST_03_06, 
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 1.6 DATE_IN_PAST_03_06 Date: is 3 to 6 hours before
	Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3959BE00956
	for <yocto@yoctoproject.org>; Fri,  4 Dec 2015 08:53:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Dec 2015 08:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,380,1444719600"; d="scan'208";a="834383382"
Received: from mbabyjoh-mobl.fi.intel.com ([10.237.72.71])
	by orsmga001.jf.intel.com with ESMTP; 04 Dec 2015 08:53:12 -0800
Date: Fri, 4 Dec 2015 14:05:36 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Kyle Russell <bkylerussell@gmail.com>
Message-ID: <20151204120535.GA20387@mbabyjoh-mobl.fi.intel.com>
References: <1449099554-22948-1-git-send-email-bkylerussell@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1449099554-22948-1-git-send-email-bkylerussell@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH v2] oracle-jse-jdk: Don't use ${D} installing symlink target
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
X-List-Received-Date: Fri, 04 Dec 2015 16:53:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Dec 02, 2015 at 06:39:14PM -0500, Kyle Russell wrote:
> When installed to the sysroot, this makes the symlink point to the
> workdir, which is invalid in the sstate package.  Since we cd to
> ${D} before creating the symlink, this ensures the link is created
> in the correct install location, so just point the link to the final
> target so that the patch is correctly fixed up during populate_sysroot.
> 
> Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
> ---
>  recipes-devtools/oracle-java/oracle-jse-jdk.inc |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-devtools/oracle-java/oracle-jse-jdk.inc b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> index 54e83b8..6f13125 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-jdk.inc
> @@ -16,7 +16,7 @@ do_install_class-native() {
>      install -d -m 0755 ${D}${bindir}
>      cp -a ${S}/${JDK_JRE}${PV}_${PV_UPDATE} ${D}${libdir}/
>      for prog in java javac; do
> -	( cd ${D}${bindir} && ln -sf ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
> +	( cd ${D}${bindir} && ln -sf ${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin/$prog )
>      done
>  
>      ( cd ${D}${libdir}/${JDK_JRE}${PV}_${PV_UPDATE}/bin ; \
> -- 
> 1.7.9.5

Pushed to master. Thanks, Kyle Russell and Bruce.

Best Regards,
Maxin

