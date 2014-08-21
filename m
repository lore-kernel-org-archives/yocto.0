Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB723E0080C; Thu, 21 Aug 2014 05:41:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A20C4E004F5
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 05:41:14 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 21 Aug 2014 05:33:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="375254235"
Received: from mvnawara-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.246])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2014 05:37:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marius Avram <marius.avram@intel.com>
Date: Thu, 21 Aug 2014 13:41:12 +0100
Message-ID: <4063194.e1f4xypkpC@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.10-200.fc20.x86_64; KDE/4.13.3; x86_64; ;
	)
In-Reply-To: <1408622431-16479-3-git-send-email-marius.avram@intel.com>
References: <1408622431-16479-1-git-send-email-marius.avram@intel.com>
	<1408622431-16479-3-git-send-email-marius.avram@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 2/2] Kill suprocesses when pressing ctrl+c
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
X-List-Received-Date: Thu, 21 Aug 2014 12:41:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marius,

On Thursday 21 August 2014 15:00:31 Marius Avram wrote:
> This way the created bitbake subprocesses from the upgrade script
> are killed as well when you press ctrl+c.
> 
> Signed-off-by: Marius Avram <marius.avram@intel.com>
> ---
>  upgradehelper.py |    6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/upgradehelper.py b/upgradehelper.py
> index 771c981..7db89a7 100755
> --- a/upgradehelper.py
> +++ b/upgradehelper.py
> @@ -35,6 +35,7 @@ from logging import warning as W
>  from logging import error as E
>  from logging import critical as C
>  import re
> +import signal
>  import sys
>  import ConfigParser as cp
>  from datetime import datetime
> @@ -645,11 +646,16 @@ class UniverseUpdater(Updater):
>          self.prepare()
>          super(UniverseUpdater, self).run()
> 
> +def close_child_processes(signal_id, frame):
> +    pid = os.getpid()
> +    os.killpg(pid, signal.SIGKILL)

I could be wrong but I think this ought to be:

    pgid = os.getpgrp()
    os.killpg(pgid, signal.SIGKILL)

> 
>  if __name__ == "__main__":
>      global settings
>      global maintainer_override
> 
> +    signal.signal(signal.SIGINT, close_child_processes)
> +
>      debug_levels = [log.CRITICAL, log.ERROR, log.WARNING, log.INFO,
> log.DEBUG] args = parse_cmdline()
>      log.basicConfig(format='%(levelname)s:%(message)s',

-- 

Paul Eggleton
Intel Open Source Technology Centre

