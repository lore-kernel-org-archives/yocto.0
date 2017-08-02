Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44653E00C9E; Wed,  2 Aug 2017 04:54:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B78E8E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 04:54:38 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Aug 2017 04:54:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,311,1498546800"; d="scan'208";a="114711148"
Received: from tmrank-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.52.92])
	by orsmga004.jf.intel.com with ESMTP; 02 Aug 2017 04:54:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Philip Balister <philip@balister.org>
Date: Wed, 02 Aug 2017 13:54:35 +0200
Message-ID: <2460289.gKWA0sUPbQ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1501671418-18695-1-git-send-email-philip@balister.org>
References: <1501671418-18695-1-git-send-email-philip@balister.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt4][PATCH] qwt: Skip the already-stripped QA test.
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
X-List-Received-Date: Wed, 02 Aug 2017 11:54:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 2 August 2017 12:56:58 PM CEST Philip Balister wrote:
> In 2013, the poky reference distribution made already-stripped an error
> not a warning. So if you try to build gnuradio with poky, it fails.
> 
> Since qt4 is not being updated and should go away eventually, skip
> the check here.
> 
> Signed-off-by: Philip Balister <philip@balister.org>
> ---
>  recipes-qt4/recipes-libs/qwt_6.0.1.bb | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/recipes-qt4/recipes-libs/qwt_6.0.1.bb b/recipes-qt4/recipes-libs/qwt_6.0.1.bb
> index f38816a..2c95b8e 100644
> --- a/recipes-qt4/recipes-libs/qwt_6.0.1.bb
> +++ b/recipes-qt4/recipes-libs/qwt_6.0.1.bb
> @@ -8,3 +8,6 @@ SRC_URI[qwt.md5sum] = "ace68558eab873e2da7e641179c4ef0c"
>  SRC_URI[qwt.sha256sum] = "3fe19dd5962d705632fc2ef616b009299de6cf1e702538296924dbfdc8003cb2"
>  
>  RPROVIDES_${PN}-dev = "libqwt-dev"
> +
> +INSANE_SKIP_${PN} += "already-stripped"
> +
> 

Merged to master, pyro and morty.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

