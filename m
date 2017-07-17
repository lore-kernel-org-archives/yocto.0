Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C571FE00C34; Mon, 17 Jul 2017 07:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB1E6E00C5C
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:03:28 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2017 07:03:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,374,1496127600"; d="scan'208";a="287833746"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.82])
	by fmsmga004.fm.intel.com with ESMTP; 17 Jul 2017 07:03:03 -0700
Message-ID: <1500300182.3198.7.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 15:03:02 +0100
In-Reply-To: <20170715193313.63041-1-stephano.cetola@linux.intel.com>
References: <20170715193313.63041-1-stephano.cetola@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] yoctogit: add init to submodule update
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
X-List-Received-Date: Mon, 17 Jul 2017 14:03:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2017-07-15 at 12:33 -0700, Stephano Cetola wrote:
> We replaced buildbot's standard copy function with our _srccopy
> function when method=barecopy or movecopy. The srccopy will copy the
> contents of the "source" directory into the build dir. We cannot
> assume that submodules have not been added since the buildslave last
> populated the source dir. Adding --init to the git submodule update
> resolves this issue.

Thanks for the fix! Merged.

Joshua

> 
> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>  .../buildbot-0.8.8-
> py2.7.egg/buildbot/steps/source/yoctogit.py          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/source/yoctogit.py b/lib/python2.7/site-
> packages/buildbot-0.8.8-py2.7.egg/buildbot/steps/source/yoctogit.py
> index 389cf4f8f..ecf4d1a34 100644
> --- a/lib/python2.7/site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/source/yoctogit.py
> +++ b/lib/python2.7/site-packages/buildbot-0.8.8-
> py2.7.egg/buildbot/steps/source/yoctogit.py
> @@ -604,7 +604,7 @@ class YoctoGit(Source):
>  
>      def _updateSubmodule(self, _):
>          if self.submodules:
> -            return self._dovccmd(['submodule', 'update', '
> --recursive'])
> +            return self._dovccmd(['submodule', 'update', '--init',
> '--recursive'])
>          else:
>              return defer.succeed(0)
>  
> -- 
> 2.13.2
> 

