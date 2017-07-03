Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19BA5E00A5C; Mon,  3 Jul 2017 06:46:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4655CE009C2
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 06:46:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 03 Jul 2017 06:46:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,303,1496127600"; d="scan'208";a="1190009117"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.152])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2017 06:46:20 -0700
Message-ID: <1499089578.3470.3.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
Date: Mon, 03 Jul 2017 14:46:18 +0100
In-Reply-To: <20170702135637.60277-1-stephano.cetola@linux.intel.com>
References: <20170702135637.60277-1-stephano.cetola@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] buildset-config/nightly-refkit: add layers to bbconf
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
X-List-Received-Date: Mon, 03 Jul 2017 13:46:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2017-07-02 at 06:56 -0700, Stephano Cetola wrote:
> Since we are parsing and building all the images in refkit-ci.inc,
> there are some layers that are now required. This includes flatpak,
> industrial, and ROS layers. Since we are building a dynamic set of
> images based on this inc file, we should be adding these layers
> dynamically as well at some point.

Merged & pushed. Thanks.

> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>  buildset-config.controller/nightly-refkit.conf | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/buildset-config.controller/nightly-refkit.conf
> b/buildset-config.controller/nightly-refkit.conf
> index ab3ef6fa6..1d2487da6 100644
> --- a/buildset-config.controller/nightly-refkit.conf
> +++ b/buildset-config.controller/nightly-refkit.conf
> @@ -31,6 +31,9 @@ steps: [{'SetDest':{}},
>                                                'refkit/meta-security-
> isafw',
>                                                'refkit/meta-intel-
> realsense',
>                                                'refkit/meta-clang',
> +                                              'refkit/meta-flatpak',
> +                                              'refkit/meta-refkit-
> industrial',
> +                                              'refkit/meta-ros',
>                                                'refkit/meta-
> openembedded/meta-filesystems',
>                                                'refkit/meta-
> openembedded/meta-gnome',
>                                                'refkit/meta-
> openembedded/meta-networking',
> @@ -65,6 +68,9 @@ steps: [{'SetDest':{}},
>                                                'refkit/meta-security-
> isafw',
>                                                'refkit/meta-intel-
> realsense',
>                                                'refkit/meta-clang',
> +                                              'refkit/meta-flatpak',
> +                                              'refkit/meta-refkit-
> industrial',
> +                                              'refkit/meta-ros',
>                                                'refkit/meta-
> openembedded/meta-filesystems',
>                                                'refkit/meta-
> openembedded/meta-gnome',
>                                                'refkit/meta-
> openembedded/meta-networking',
> -- 
> 2.13.1
> 

