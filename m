Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2138BE00826; Fri, 28 Apr 2017 00:59:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2882E007B5
	for <yocto@yoctoproject.org>; Fri, 28 Apr 2017 00:59:44 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Apr 2017 00:59:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,387,1488873600"; d="scan'208";a="962077013"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 28 Apr 2017 00:59:42 -0700
Date: Fri, 28 Apr 2017 10:59:17 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Romain Bazile <romain.bazile@ubiant.com>
Message-ID: <20170428075916.GA11185@mbabyjoh-desk.ger.corp.intel.com>
References: <20170427185449.26321-1-romain.bazile@ubiant.com>
MIME-Version: 1.0
In-Reply-To: <20170427185449.26321-1-romain.bazile@ubiant.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Romain Bazile <romain.bazile@uiant.com>
Subject: Re: [meta-oracle-java][PATCH] Update version to 8u131-b11 for all recipes
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
X-List-Received-Date: Fri, 28 Apr 2017 07:59:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Apr 27, 2017 at 08:54:49PM +0200, Romain Bazile wrote:
> From: Romain Bazile <romain.bazile@uiant.com>
> 
> Signed-off-by: Romain Bazile <romain.bazile@ubiant.com>
> ---
>  .../oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc   | 10 +++++-----
>  .../oracle-jse-ejre-arm-vfp-hflt-client-headless.inc           | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb      | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb    | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jre-i586.inc           | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc         | 10 +++++-----
>  6 files changed, 30 insertions(+), 30 deletions(-)
> 

Got this error:

ERROR: oracle-jse-jdk-x86-64-1.8.0-u131r0 do_populate_lic: QA Issue: oracle-jse-jdk-x86-64: The LIC_FILES_CHKSUM does not match for file://jdk1.8.0_131/THIRDPARTYLICENSEREADME-JAVAFX.txt;md5=ab9db8d553033c0326bd2d38d77f84c1
oracle-jse-jdk-x86-64: The new md5 checksum is 4f31cd1a5d86744d5f00666d9a57ad2a
oracle-jse-jdk-x86-64: Here is the selected license text:
vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
DO NOT TRANSLATE OR LOCALIZE

***************************************************************************

...
<snip>

Please update the LIC_FILES_CHKSUM.


> diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
> index 321afee..343004f 100644
> --- a/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc
> +++ b/recipes-devtools/oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc

Best Regards,
Maxin

