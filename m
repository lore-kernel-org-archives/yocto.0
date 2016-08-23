Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE3E2E00FE2; Tue, 23 Aug 2016 13:24:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 740ABE00E88
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 13:24:06 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 23 Aug 2016 13:23:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,567,1464678000"; d="scan'208";a="1019225148"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.4.209])
	by orsmga001.jf.intel.com with ESMTP; 23 Aug 2016 13:23:02 -0700
Message-ID: <1471983782.2825.23.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 21:23:02 +0100
In-Reply-To: <1471974372-25494-1-git-send-email-william.c.randle@intel.com>
References: <1471974372-25494-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] nightly-musl.conf: run sanity tests on images
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
X-List-Received-Date: Tue, 23 Aug 2016 20:24:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-08-23 at 10:46 -0700, Bill Randle wrote:
> Run the sanity tests on the musl images.

Merged to master, thanks!

Joshua

> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  buildset-config.controller/nightly-musl.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/buildset-config.controller/nightly-musl.conf b/buildset-
> config.controller/nightly-musl.conf
> index cc2aea0..d8913b1 100644
> --- a/buildset-config.controller/nightly-musl.conf
> +++ b/buildset-config.controller/nightly-musl.conf
> @@ -13,6 +13,7 @@ steps: [{'SetDest':{}},
>                              'atextappend' : '\nTCLIBC="musl"\n' }},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images':  'core-image-minimal core-image-
> full-cmdline core-image-sato world'}},
> +        {'RunSanityTests': {'images': 'core-image-minimal core-
> image-full-cmdline core-image-sato'}},
>          {'DownloadErrorReports': {}},
>          {'SendErrorReport': {}}]
>  

