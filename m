Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48D17E0085D; Fri,  2 Jun 2017 08:55:17 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F9A5E0077F
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 08:55:15 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jun 2017 08:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,285,1493708400"; d="scan'208";a="1155871009"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.21.48])
	by fmsmga001.fm.intel.com with ESMTP; 02 Jun 2017 08:55:13 -0700
Message-ID: <1496418912.4307.0.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Jose Lamego <jose.a.lamego@linux.intel.com>, yocto@yoctoproject.org
Date: Fri, 02 Jun 2017 16:55:12 +0100
In-Reply-To: <1496338372-20109-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1496338372-20109-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] forcebuild: allow build with default options
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
X-List-Received-Date: Fri, 02 Jun 2017 15:55:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-06-01 at 12:32 -0500, Jose Lamego wrote:
> From: Anibal Limon <anibal.limon@linux.intel.com>
> 
> A forced build fails if no options are passed through command
> line (using "-o OPTIONS").
> 
> This change allows build to use default options if none are passed
> at the command line.

Useful. Merged, thanks!

Joshua

> Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
> ---
>  bin/forcebuild.py | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/bin/forcebuild.py b/bin/forcebuild.py
> index 5fe61a0..e6770a4 100755
> --- a/bin/forcebuild.py
> +++ b/bin/forcebuild.py
> @@ -108,7 +108,11 @@ class YoctoAutobuilderAPI(object):
>                      % (builder, state))
>              return 1
>  
> -        opts = eval(opts) # FIXME: transform string argument into
> dictionary, security?
> +        if opts:
> +            # FIXME: transform string argument into dictionary,
> security?
> +            opts = eval(opts)
> +        else:
> +            opts = {}
>          current_opts = self._get_options_by_builder(builder)
>          for opt in opts:
>              if not opt in current_opts:
> -- 
> 2.7.4
> 

