Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 456F5E00AE4; Mon,  8 May 2017 04:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2D09E00A38
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 04:51:51 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 May 2017 04:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,309,1491289200"; d="scan'208";a="965774194"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 08 May 2017 04:51:27 -0700
Date: Mon, 8 May 2017 14:51:21 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Romain Bazile <romain.bazile@ubiant.com>
Message-ID: <20170508115121.GA3996@mbabyjoh-desk.ger.corp.intel.com>
References: <20170428180725.26804-1-romain.bazile@ubiant.com>
MIME-Version: 1.0
In-Reply-To: <20170428180725.26804-1-romain.bazile@ubiant.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-oracle-java][PATCH v2] Update version to 8u131-b11 for all recipes Checksum change for license file following update to 8u131 b11
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
X-List-Received-Date: Mon, 08 May 2017 11:51:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Fri, Apr 28, 2017 at 08:07:25PM +0200, Romain Bazile wrote:
> Signed-off-by: Romain Bazile <romain.bazile@ubiant.com>
> ---
>  .../oracle-java/oracle-jse-ejre-arm-sflt-client-headless.inc   | 10 +++++-----
>  .../oracle-jse-ejre-arm-vfp-hflt-client-headless.inc           | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jdk-i586_1.8.0.bb      | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jdk-x86-64_1.8.0.bb    | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jre-i586.inc           | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse-jre-x86-64.inc         | 10 +++++-----
>  recipes-devtools/oracle-java/oracle-jse.inc                    |  2 +-
>  7 files changed, 31 insertions(+), 31 deletions(-)
>
Pushed to master branch. Thanks!

Regards,
Maxin

