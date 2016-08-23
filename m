Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21E1AE00DFA; Tue, 23 Aug 2016 13:22:59 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C8E2E00DCA
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 13:22:56 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP; 23 Aug 2016 13:22:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,567,1464678000"; 
   d="scan'208";a="962029"
Received: from paulcarx-mobl1.ger.corp.intel.com (HELO
	jlock-mobl1.ger.corp.intel.com) ([10.252.4.209])
	by fmsmga006.fm.intel.com with ESMTP; 23 Aug 2016 13:22:54 -0700
Message-ID: <1471983773.2825.22.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Bill Randle <william.c.randle@intel.com>, yocto@yoctoproject.org
Date: Tue, 23 Aug 2016 21:22:53 +0100
In-Reply-To: <1471972487-24148-1-git-send-email-william.c.randle@intel.com>
References: <1471972487-24148-1-git-send-email-william.c.randle@intel.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] nightly-wic.conf: publish qemux86; add missing error reporting steps
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
X-List-Received-Date: Tue, 23 Aug 2016 20:22:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-08-23 at 10:14 -0700, Bill Randle wrote:
> Commit 623665a11e added support for building a qemux86 image, but the
> step to actually publish it did not get included. Also, nightly-
> wic.conf
> was missed when the other config files were updated to include the
> DownloadErrorReports and SendErrorReport steps.

Merged to master, thanks!

Joshua

> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  buildset-config.controller/nightly-wic.conf | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/buildset-config.controller/nightly-wic.conf b/buildset-
> config.controller/nightly-wic.conf
> index 59ea34c..1b91852 100644
> --- a/buildset-config.controller/nightly-wic.conf
> +++ b/buildset-config.controller/nightly-wic.conf
> @@ -32,5 +32,7 @@ steps: [{'SetDest':{}},
>          {'CreateWicImages':{'wic_img_type':'directdisk',
> 'target_img':'core-image-sato'}},
>          {'CreateWicImages':{'wic_img_type':'directdisk-gpt',
> 'target_img':'core-image-sato'}},
>          {'CreateWicImages':{'wic_img_type':'mkefidisk',
> 'target_img':'core-image-sato'}},
> -        {'PublishArtifacts': {'artifacts': ['qemux86-64',
> 'genericx86', 'genericx86-64']}}]
> +        {'DownloadErrorReports': {}},
> +        {'SendErrorReport': {}},
> +        {'PublishArtifacts': {'artifacts': ['qemux86', 'qemux86-64', 
> 'genericx86', 'genericx86-64']}}]
>  

