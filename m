Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 404FFE0080C; Thu, 21 Aug 2014 05:50:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE76E004F5
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 05:50:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 21 Aug 2014 05:50:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,909,1400050800"; d="scan'208";a="561616351"
Received: from mvnawara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.246])
	by orsmga001.jf.intel.com with ESMTP; 21 Aug 2014 05:50:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marius Avram <marius.avram@intel.com>
Date: Thu, 21 Aug 2014 13:50:36 +0100
Message-ID: <3456270.z5JGgE3W0Z@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-200.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <1408622431-16479-2-git-send-email-marius.avram@intel.com>
References: <1408622431-16479-1-git-send-email-marius.avram@intel.com>
	<1408622431-16479-2-git-send-email-marius.avram@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/2] Send emails for a list of recipes
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
X-List-Received-Date: Thu, 21 Aug 2014 12:50:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marius,

On Thursday 21 August 2014 15:00:30 Marius Avram wrote:
> If the --emails or -e command line argument is active and a single
> or a list of recipes are given to the script, emails with the results
> and patches will be sent to their maintainers or to the overriden
> addresses from the configuration file.
> 
> Also the status email will be sent in the case a selection of
> at least two recipes has been given to the script for upgrading.
> 
> Signed-off-by: Marius Avram <marius.avram@intel.com>
> ---
>  upgradehelper.py |  199
> +++++++++++++++++++++++++++--------------------------- 1 file changed, 98
> insertions(+), 101 deletions(-)
> 
> diff --git a/upgradehelper.py b/upgradehelper.py
> index cc90958..771c981 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -71,6 +71,8 @@ def parse_cmdline():
>                          help="disable interactive mode")
>      parser.add_argument("-d", "--debug-level", type=int, default=4,
> choices=range(1, 6), help="set the debug level: CRITICAL=1, ERROR=2,
> WARNING=3, INFO=4, DEBUG=5") 
> +    parser.add_argument("-e", "--emails", type=bool, default=False, 
> +                        help="send emails to recipe maintainers") 

Picky I know, but could you make the long option --send-emails?

> @@ -125,10 +147,10 @@ class Updater(object):
>          self.bb = Bitbake(get_build_dir())
>          self.buildhistory = BuildHistory(get_build_dir())
>          self.git = None
> -
> -        self.author = None
> +        self.author = "Upgrade Helper <uh@not.set>"

Does this mean that the author value is now forced to be this even if
I just want to upgrade a few recipes locally with the tool (and therefore
my own author info should be used)?

> -        if self.statistics.total_attempted:
> -            self.send_email(to_list, subject, msg)
> -        else:
> -            W("No recipes attempted, not sending status mail!")
> +        super(UniverUpdate, self).pkg_upgrade_handler(self)

Shouldn't this be UniverseUpdater?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

