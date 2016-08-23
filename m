Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6037E00FE0; Tue, 23 Aug 2016 13:23:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 23 Aug 2016 13:23:49 PDT
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B78EE00E88
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 13:23:49 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga105.fm.intel.com with ESMTP; 23 Aug 2016 13:22:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,567,1464678000"; d="scan'208";a="1030195969"
Received: from paulcarx-mobl1.ger.corp.intel.com (HELO
	jlock-mobl1.ger.corp.intel.com) ([10.252.4.209])
	by fmsmga001.fm.intel.com with ESMTP; 23 Aug 2016 13:22:45 -0700
Message-ID: <1471983765.2825.21.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 21:22:45 +0100
In-Reply-To: <1471964365-19832-1-git-send-email-william.c.randle@intel.com>
References: <1471964365-19832-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [PATCH] nightly-no-x11.conf: build and test some actual images
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
X-List-Received-Date: Tue, 23 Aug 2016 20:23:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-08-23 at 07:59 -0700, Bill Randle wrote:
> Create sample images and perform a sanity test on them.
> 
> [YOCTO #7568]

Merged to master, thanks!

Joshua

> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  buildset-config.controller/nightly-no-x11.conf | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/buildset-config.controller/nightly-no-x11.conf
> b/buildset-config.controller/nightly-no-x11.conf
> index 063ae89..7092a09 100644
> --- a/buildset-config.controller/nightly-no-x11.conf
> +++ b/buildset-config.controller/nightly-no-x11.conf
> @@ -18,7 +18,8 @@ steps: [{'SetDest':{}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'SyncPersistDB' : {'distro' : 'poky'}},
>          {'GetBitbakeVersion': {}},
> -        {'BuildImages': {'images': 'world'}},
> +        {'BuildImages': {'images': 'core-image-full-cmdline core-
> image-weston world'}},
> +        {'RunSanityTests': {'images': 'core-image-full-cmdline core-
> image-weston'}},
>          {'DownloadErrorReports': {}},
>          {'SendErrorReport': {}},
>          {'UploadToasterEventlog': {}}]

