Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3964BE00CCD; Thu, 31 Aug 2017 22:35:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCD16E00CAA
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 22:35:26 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Aug 2017 22:35:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,456,1498546800"; d="scan'208";a="1009907730"
Received: from kcheng8-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.71.81])
	by orsmga003.jf.intel.com with ESMTP; 31 Aug 2017 22:35:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Fri, 01 Sep 2017 17:35:19 +1200
Message-ID: <5744359.HJMKcuFlQh@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1504242563-15931-1-git-send-email-akuster808@gmail.com>
References: <1504242563-15931-1-git-send-email-akuster808@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] fail2bin: Add new package
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
X-List-Received-Date: Fri, 01 Sep 2017 05:35:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Armin,

On Friday, 1 September 2017 5:09:23 PM NZST Armin Kuster wrote:
> Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too 
> many failed login attempts. It does this by updating system firewall rules to reject 
> new connections from those IP addresses, for a configurable amount of time. 
> Fail2Ban comes out-of-the-box ready to read many standard log files, such as 
> those for sshd and Apache, and is easy to configure to read any log file you 
> choose, for any error you choose.
> ...
> +++ b/recipes-security/fail2ban/fail2ban_0.10.0.bb
> @@ -0,0 +1,41 @@
> +SUMMARY = "Daemon to ban hosts that cause multiple authentication errors."
> +DESCIPTION = "Fail2Ban scans log files like /var/log/auth.log and bans IP addresses having too \

Typo ^. Also typo "fail2bin" in the shortlog.

Great to see this added though, and that it's alive upstream - I wrote a recipe
for fail2ban a few years ago (around the 0.8.4 times) and then noticed it had
a number of security issues and so I dropped it. I just found I still have the recipe
and I was doing a few things like sed'ing the hardcoded paths in the config
and setting CONFFILES that you don't have here, so I could send you a patch
afterwards with those tweaks if you like.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

