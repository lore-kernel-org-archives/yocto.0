Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 192E2E0093F; Wed, 22 Mar 2017 01:53:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB3FFE00655
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 01:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490172804; x=1521708804;
	h=date:from:to:cc:subject:message-id:references:
	mime-version:in-reply-to;
	bh=Kr98duPHL/Rust9FVmCrOwEhcMeDo8N/9UloBcmLQoQ=;
	b=uNFgpHAvY3KqPoXYNiOq5fp6TYPRxeBqsD5XzDVgYUF3bLPQVP+zTjoc
	2QL5W5HjMvD4yAI+K1vpCx+tjXvkmg==;
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Mar 2017 01:53:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,204,1486454400"; d="scan'208";a="946945779"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by orsmga003.jf.intel.com with ESMTP; 22 Mar 2017 01:53:21 -0700
Date: Wed, 22 Mar 2017 10:51:50 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Message-ID: <20170322085150.GA12483@mbabyjoh-desk.ger.corp.intel.com>
References: <20170321070425.15373-1-zhenhua.luo@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20170321070425.15373-1-zhenhua.luo@nxp.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH] commons-collections3: upgrade from 3.2.1 to 3.2.2
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
X-List-Received-Date: Wed, 22 Mar 2017 08:53:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Mar 21, 2017 at 03:04:25PM +0800, Zhenhua Luo wrote:
> Signed-off-by: Zhenhua Luo <zhenhua.luo@nxp.com>
> ---
>  .../{commons-collections3_3.2.1.bb => commons-collections3_3.2.2.bb} | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>  rename recipes-core/jakarta-commons/{commons-collections3_3.2.1.bb => commons-collections3_3.2.2.bb} (63%)
> 
> diff --git a/recipes-core/jakarta-commons/commons-collections3_3.2.1.bb b/recipes-core/jakarta-commons/commons-collections3_3.2.2.bb
> similarity index 63%
> rename from recipes-core/jakarta-commons/commons-collections3_3.2.1.bb
> rename to recipes-core/jakarta-commons/commons-collections3_3.2.2.bb
> index 852cac7..0a53d09 100644
> --- a/recipes-core/jakarta-commons/commons-collections3_3.2.1.bb
> +++ b/recipes-core/jakarta-commons/commons-collections3_3.2.2.bb
> @@ -1,5 +1,6 @@
>  require jakarta-commons.inc
>  
> +LIC_FILES_CHKSUM = "file://LICENSE.txt;md5=3b83ef96387f14655fc854ddc3c6bd57"
>  PR = "${INC_PR}.1"
>  
>  DESCRIPTION = "A set of abstract data type interfaces and implementations that offer a wealth of useful functionality and a solid foundation for extending that functionality"
> @@ -9,5 +10,5 @@ SRC_URI = "http://www.apache.org/dist/commons/collections/source/commons-collect
>  S = "${WORKDIR}/commons-collections-${PV}-src"
>  
>  
> -SRC_URI[md5sum] = "031ce05872ddb0462f0dcce1e5babbe9"
> -SRC_URI[sha256sum] = "9a4a800cb7ecdaf3b6f608cd608682b88b506f1b1c4b727d15471ae3329fc63d"
> +SRC_URI[md5sum] = "776b51a51312c1854ad8f6d344a47cda"
> +SRC_URI[sha256sum] = "070d94fe77969d8949bd129a618e6a7bee6b83b5b5db3ef3f983395a5428b914"
> -- 

Pushed to master-next. Thanks!

Regards,
Maxin

