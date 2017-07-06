Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6202BE00AE6; Thu,  6 Jul 2017 03:47:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [192.55.52.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D8BAE00718
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 03:47:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 06 Jul 2017 03:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,316,1496127600"; d="scan'208";a="107768519"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.5])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2017 03:47:21 -0700
Message-ID: <1499338040.32379.7.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
Date: Thu, 06 Jul 2017 11:47:20 +0100
In-Reply-To: <20170705212750.49420-2-stephano.cetola@linux.intel.com>
References: <20170705212750.49420-1-stephano.cetola@linux.intel.com>
	<20170705212750.49420-2-stephano.cetola@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH V4 1/1] ScrapeTargets.py: improve target search algorithm
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
X-List-Received-Date: Thu, 06 Jul 2017 10:47:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-07-05 at 14:27 -0700, Stephano Cetola wrote:
> When scraping the build targets from refkit-ci.inc, grep would only
> return the first line of the search result. By replacing grep with
> awk, we are now searching for multi-line variables, and should now
> scrape build targets even if they have line breaks between them.
> 
> [YOCTO #11720]

Thanks, I've merged and pushed this. Please see my comment below.

> 
> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>  .../site-packages/autobuilder/buildsteps/ScrapeTargets.py    | 12
> +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
> index 80153fe85..07e2fdcf4 100644
> --- a/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> +++ b/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> @@ -41,7 +41,9 @@ class ScrapeTargets(ShellCommand):
>          workerdir = os.path.join(os.path.join(YOCTO_ABBASE, "yocto-
> worker"))
>          buildername = self.getProperty("buildername")
>          src = os.path.join(workerdir, buildername, "build",
> self.source)
> -        self.command = "cat " + src + " | grep " + self.targetsvar
> +        # find targetsvar then return lines up to a quote
> +        self.command = ["awk",
> +                '/%s/{flag=1;print;next}/"/{flag=0}flag' %
> self.targetsvar, src]
>          ShellCommand.start(self)
>  
>      def commandComplete(self, cmd):
> @@ -49,10 +51,10 @@ class ScrapeTargets(ShellCommand):
>              return
>  
>          result = cmd.logs['stdio'].getText()
> -        targets = result.replace(self.targetsvar, "")
> -        targets = targets.strip()
> -        targets = targets.replace('=', '')
> -        targets = targets.strip('"')
> +        targets = result.strip()
> +        targets = targets.replace('%s="' % self.targetsvar, '')

This still leaves us a bit brittle. What if someone adds whitespace
around the assignment operator? Could you create a follow-on patch for
that?

Thanks!

> +        targets = targets.replace('\\', '')
> +        targets = targets.replace('\n', '')
>          self.setProperty("scraped_targets",
>                           targets,
>                           'Targets "%s" scraped from %s' % (targets,
> -- 
> 2.13.2
> 

