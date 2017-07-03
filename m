Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35EC0E00A9B; Mon,  3 Jul 2017 06:48:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D070EE00A38
	for <yocto@yoctoproject.org>; Mon,  3 Jul 2017 06:48:15 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jul 2017 06:48:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,303,1496127600"; d="scan'208";a="106572036"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.24.152])
	by orsmga002.jf.intel.com with ESMTP; 03 Jul 2017 06:48:13 -0700
Message-ID: <1499089692.3470.5.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>, yocto@yoctoproject.org
Date: Mon, 03 Jul 2017 14:48:12 +0100
In-Reply-To: <20170701220534.28857-1-stephano.cetola@linux.intel.com>
References: <20170701220534.28857-1-stephano.cetola@linux.intel.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] ScrapeTargets.py: improve target search algorithm
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
X-List-Received-Date: Mon, 03 Jul 2017 13:48:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2017-07-01 at 15:05 -0700, Stephano Cetola wrote:
> When scraping the build targets from refkit-ci.inc, grep would only
> return the first line of the search result. By replacing grep with
> awk, we are now searching for multi-line variables, and should now
> scrape build targets even if they have line breaks between them.
> 
> Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
> ---
>  .../site-packages/autobuilder/buildsteps/ScrapeTargets.py        | 9
> ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/lib/python2.7/site-
> packages/autobuilder/buildsteps/ScrapeTargets.py
> b/lib/python2.7/site-packages/autobuilder/buildsteps/ScrapeTargets.py
> index 80153fe85..c5a2f8d6d 100644
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
> +        # find targetsvar=", skip a line, then return lines up to a
> quote

What if the first line includes a desired target? Can we change this
not to skip the first line? 

Does including the line continuation character in the property cause
BuildImages to choke later?

> +        self.command = ["awk",
> +                '/%s="/{flag=1;next}/"/{flag=0}flag' %
> self.targetsvar, src]
>          ShellCommand.start(self)
>  
>      def commandComplete(self, cmd):
> @@ -49,10 +51,7 @@ class ScrapeTargets(ShellCommand):
>              return
>  
>          result = cmd.logs['stdio'].getText()
> -        targets = result.replace(self.targetsvar, "")
> -        targets = targets.strip()
> -        targets = targets.replace('=', '')
> -        targets = targets.strip('"')
> +        targets = result.strip()
>          self.setProperty("scraped_targets",
>                           targets,
>                           'Targets "%s" scraped from %s' % (targets,
> -- 
> 2.13.1
> 

