Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A423E00C39; Fri, 28 Aug 2015 02:56:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10950E00474
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 02:56:39 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 28 Aug 2015 02:56:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,424,1437462000"; d="scan'208";a="757133912"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.13.245])
	by orsmga001.jf.intel.com with ESMTP; 28 Aug 2015 02:56:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Qiang Yu <yuq825@gmail.com>
Date: Fri, 28 Aug 2015 10:56:36 +0100
Message-ID: <4903077.drnNir3WHe@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.5-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
References: <CAKGbVbu-gzaAfkuZVQP8Pua=SMYwxoHsvHqDci+Eo3FyPh+CQA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to disable OVERRIDES temperally
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
X-List-Received-Date: Fri, 28 Aug 2015 09:56:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Qiang,

On Thursday 27 August 2015 19:40:29 Qiang Yu wrote:
> I want to load kernel module ci_hdrc_imx at boot time and add a conf file
> in /etc/modprobe.d. I find it can be done by add
> module_conf_ci_hdrc_imx = "my configure"
> 
> But the suffix "imx" is in OVERRIDES, so I get
> module_conf_ci_hdrc = "my configure"
> 
> How to disable the OVERRIDES temperally here? Or may be there is another
> way?

This is an annoying situation, no question about that - it's an unfortunate 
consequence of our long-ago decision to use _ as the override separator. 
Whether or not we can change that in future is up for debate.

In any case though the workaround is probably fairly simple in this case - all 
that the code in kernel_module_split.bbclass that reads this does is to write 
a file to ${D}/etc/modprobe.d/<modulename>.conf - you could just create that 
yourself instead during do_install, then you don't need to set 
module_conf_ci_hdrc_imx.

FWIW. I just tested and in master this should work just fine without any 
workaround (I think the datastore finalisation rework that was done recently 
probably fixed it.) I wouldn't really recommend running master in production, 
but at least this should work better in the next release.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

