Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F30D5E00D6A; Thu,  7 Dec 2017 04:47:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Dec 2017 04:47:29 PST
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72F9FE00D5F
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 04:47:29 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 04:46:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,373,1508828400"; 
   d="scan'208";a="684868"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 04:46:25 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<075b84a16d6fccc6f64f93cb5a105f4244a1c94f.1512630627.git.liezhi.yang@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <a98097e9-007c-a92d-f552-48fc991963d1@linux.intel.com>
Date: Thu, 7 Dec 2017 14:47:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <075b84a16d6fccc6f64f93cb5a105f4244a1c94f.1512630627.git.liezhi.yang@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 05/12] modules/steps.py: fix warn when skip compilation
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
X-List-Received-Date: Thu, 07 Dec 2017 12:47:30 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 09:37 AM, Robert Yang wrote:
>               try:
>                   I(" %s: Upgrading to %s" % (pkg_ctx['PN'], pkg_ctx['NPV']))
>                   for step, msg in upgrade_steps:
> +                    if step == compile and self.args.skip_compilation:
> +                        W(" %s: Skipping compile by user choice" % pkg_ctx['PN'])
> +                        continue
>                       if msg is not None:
>                           I(" %s: %s" % (pkg_ctx['PN'], msg))
>                       step(self.bb, self.git, self.opts, pkg_ctx)
> 

This one I have to reject. The loop that is executing the upgrade steps 
should not have to know or care what they are.

Alex

