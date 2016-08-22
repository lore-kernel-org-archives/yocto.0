Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED42BE00D9B; Mon, 22 Aug 2016 03:31:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 22 Aug 2016 03:31:25 PDT
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 520D1E00DD0
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 03:31:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP; 22 Aug 2016 03:30:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,559,1464678000"; d="scan'208";a="1018420477"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.69])
	by orsmga001.jf.intel.com with ESMTP; 22 Aug 2016 03:30:20 -0700
Message-ID: <1471861819.5256.14.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Mon, 22 Aug 2016 11:30:19 +0100
In-Reply-To: <1471629231-12713-1-git-send-email-william.c.randle@intel.com>
References: <1471629231-12713-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] nightly-wic.conf: add build for qemux86
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
X-List-Received-Date: Mon, 22 Aug 2016 10:31:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-08-19 at 10:53 -0700, Bill Randle wrote:
> [YOCTO #10166]

Pushed to master, thanks.

Joshua

> 
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  buildset-config.controller/nightly-wic.conf | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-
> config.controller/nightly-wic.conf
> index 47565ba..59ea34c 100644
> --- a/buildset-config.controller/nightly-wic.conf
> +++ b/buildset-config.controller/nightly-wic.conf
> @@ -9,6 +9,12 @@ steps: [{'SetDest':{}},
>          {'RunPreamble':{}},
>          {'GetDistroVersion':{'distro': 'poky'}},
>          {'CreateBBLayersConf':{'buildprovider':'yocto'}},
> +        {'CreateAutoConf':{'machine':'qemux86'}},
> +        {'BuildImages':{'images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
> +        {'BuildImages':{'images':'core-image-sato'}},
> +        {'CreateWicImages':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> +        {'CreateWicImages':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> +        {'CreateWicImages':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
>          {'CreateAutoConf':{'machine':'genericx86'}},
>          {'BuildImages':{'images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
>          {'BuildImages':{'images':'core-image-sato'}},

