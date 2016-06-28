Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E691AE00E3D; Tue, 28 Jun 2016 14:00:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59C9BE00E23
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 14:00:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 28 Jun 2016 14:00:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,542,1459839600"; d="scan'208";a="1011518595"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.16.145])
	by fmsmga002.fm.intel.com with ESMTP; 28 Jun 2016 14:00:24 -0700
Message-ID: <1467147623.2906.1.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 28 Jun 2016 22:00:23 +0100
In-Reply-To: <1467146488-19241-1-git-send-email-william.c.randle@intel.com>
References: <1467146488-19241-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.3 (3.20.3-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocyo-autobuilder][PATCH v2] add mkefidisk image for easier debugging
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
X-List-Received-Date: Tue, 28 Jun 2016 21:00:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Merged to master, thanks,

Joshua

On Tue, 2016-06-28 at 13:41 -0700, Bill Randle wrote:
> Originally-by: Ed Bartosh <eduard.bartosh@intel.com>
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
> v2 fixes typo in image name
> 
>  buildset-config.controller/nightly-wic.conf | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-
> config.controller/nightly-wic.conf
> index 680ac16..7d2ae88 100644
> --- a/buildset-config.controller/nightly-wic.conf
> +++ b/buildset-config.controller/nightly-wic.conf
> @@ -18,7 +18,8 @@ steps: [{'SetDest':{}},
>          {'BuildImages':{'images':'syslinux syslinux-native parted-
> native gptfdisk-native dosfstools-native mtools-native'}},
>          {'BuildImages':{'images':'core-image-sato'}},
>          {'CreateWicImages':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
> -        {'CreateWicImages':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}}]
> +        {'CreateWicImages':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
> +        {'CreateWicImages':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}}]
>  
>  
>  

