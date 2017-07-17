Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AB4DE00C30; Mon, 17 Jul 2017 07:03:19 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB68E00BB6
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 07:03:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 17 Jul 2017 07:03:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,374,1496127600"; d="scan'208";a="112221788"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.82])
	by orsmga002.jf.intel.com with ESMTP; 17 Jul 2017 07:03:16 -0700
Message-ID: <1500300195.3198.8.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
Date: Mon, 17 Jul 2017 15:03:15 +0100
In-Reply-To: <20170715193359.63097-1-stephano.cetola@linux.intel.com>
References: <20170715193359.63097-1-stephano.cetola@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] ScrapeTargets: use translate instead of regex
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
X-List-Received-Date: Mon, 17 Jul 2017 14:03:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2017-07-15 at 12:33 -0700, Stephano Cetola wrote:
> From some quick tests the string translate function is comparable in
> efficiency and certainly more legible than regex. We should note that
> if we ever move this functionality to an environment running python3,
> the translate function takes one dictionary argument, but functions
> in much the same way.

Oh, I didn't know about translate. Neat, thanks! Merged.

Joshua

> 
> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>  .../site-packages/autobuilder/buildsteps/ScrapeTargets.py          | 
> 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
> index ceed0c709..0480f3de3 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> @@ -57,9 +57,10 @@ class ScrapeTargets(ShellCommand):
>              targets = res.group()
>              # Try and ensure we scrape the target regardless of
> which
>              # assignment operator is used and surrounding whitespace
> -            targets = re.sub('%s *\??\??:?.?\+?=\+?\.? *\"' %
> self.targetsvar, '', targets, 1)
> -            targets = targets.replace('\\', '')
> -            targets = targets.replace('\n', '')
> +            targets = targets.replace(self.targetsvar, '')
> +            targets = targets.translate(None, ':+?="')
> +            targets = targets.replace("\\", "")
> +            targets = targets.replace ("\n", "")
>          self.setProperty("scraped_targets",
>                           targets,
>                           'Targets "%s" scraped from %s' % (targets,
> -- 
> 2.13.2
> 

