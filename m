Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E67C4E006CD; Wed,  5 Apr 2017 02:26:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B864FE00546
	for <yocto@yoctoproject.org>; Wed,  5 Apr 2017 02:26:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 05 Apr 2017 02:26:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,278,1486454400"; d="scan'208";a="69618757"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.13.153])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2017 02:26:30 -0700
Message-ID: <1491384389.3771.2.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>, 
	yocto@yoctoproject.org
Date: Wed, 05 Apr 2017 10:26:29 +0100
In-Reply-To: <1491326284-11764-1-git-send-email-anibal.limon@linux.intel.com>
References: <1491326284-11764-1-git-send-email-anibal.limon@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [[PATCH][yocto-autobuilder]] nightly-oe-selftest.conf: Remove set of SANITY_TESTED_DISTROS
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
X-List-Received-Date: Wed, 05 Apr 2017 09:26:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-04-04 at 12:18 -0500, Aníbal Limón wrote:
> The sanity testing was disabled for all builds into CreateAutoConf
> buildstep so atextappend isn't need now. [1]

Thanks for catching this, pushed to master.

Joshua

> [1] http://git.yoctoproject.org/cgit/cgit.cgi/yocto-
> autobuilder/commit/?id=87b10595e9a1d36081ec60d3069f4a98798f27eb
> 
> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
> ---
>  buildset-config.controller/nightly-oe-selftest.conf | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/buildset-config.controller/nightly-oe-selftest.conf
> b/buildset-config.controller/nightly-oe-selftest.conf
> index a267516..fb401de 100644
> --- a/buildset-config.controller/nightly-oe-selftest.conf
> +++ b/buildset-config.controller/nightly-oe-selftest.conf
> @@ -11,7 +11,6 @@ steps: [{'SetDest':{}},
>          {'CreateAutoConf': {'machine': 'qemux86-64', 'SDKMACHINE' :
> 'x86_64',
>                              'distro': 'poky', 'nosstate': True,
>                              'packages': 'rpm', 'buildhistory' :
> False,
> -                            'atextappend':
> '\nSANITY_TESTED_DISTROS=""',
>                              'prserv': False}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images': 'core-image-minimal'}},
> -- 
> 2.1.4
> 

