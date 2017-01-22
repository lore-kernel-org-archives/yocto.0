Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 146A2E00816; Sun, 22 Jan 2017 11:23:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB31E007EB
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2017 11:23:48 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP; 22 Jan 2017 11:23:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,270,1477983600"; d="scan'208";a="56251705"
Received: from equah-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.188.89])
	by fmsmga005.fm.intel.com with ESMTP; 22 Jan 2017 11:23:45 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Peter Tulpen <ptulpen@emailn.de>
Date: Mon, 23 Jan 2017 08:23:43 +1300
Message-ID: <9523039.54BZtVoRWY@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <b8e51238b7798e9b642c019b120adac0@mail.emailn.de>
References: <b8e51238b7798e9b642c019b120adac0@mail.emailn.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] issue with webinterface
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
X-List-Received-Date: Sun, 22 Jan 2017 19:23:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Peter,

On Thu, 19 Jan 2017 18:05:12 Peter Tulpen wrote:
> Hello, I installed the webinterface locally and configured it with several
> branches But when I want to browse it, I can only choose master:
> 
> https://postimg.org/image/dq1vj6v7h/
> 
> When I browse to http://MYSERVER/layerindex/branch/jethro/layers/, I see
> that the branches are there My installation based on a git clone from the
> master tree.
> 
> Did I miss something or did I hit a bug?

There's no filtering on the query used to get the list of branches to show 
other than the name is not "oe-classic". However, one way I can think of that 
that could be blank would be if the context processors used to inject the 
"all_branches" queryset results into the context for each page. You haven't 
modified settings.py such that 
layerindex.context_processors.layerindex_context has been removed from the 
TEMPLATE_CONTEXT_PROCESSORS value by any chance?

Otherwise, what changes did you make to settings.py? Which Django version are 
you using?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

