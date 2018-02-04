Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D590E00E82; Sun,  4 Feb 2018 15:33:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E95CEE005BB
	for <yocto@yoctoproject.org>; Sun,  4 Feb 2018 15:33:52 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Feb 2018 15:33:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,462,1511856000"; d="scan'208";a="14966759"
Received: from bchew-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.66.233])
	by orsmga007.jf.intel.com with ESMTP; 04 Feb 2018 15:33:48 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Mon, 05 Feb 2018 12:33:46 +1300
Message-ID: <16500534.TcOOInFMFS@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <6b4cd6e2-0680-eac7-3f59-529d8ed77db8@windriver.com>
References: <cover.1514957220.git.liezhi.yang@windriver.com>
	<6b4cd6e2-0680-eac7-3f59-529d8ed77db8@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 0/5] update.py: performance improve and 2 fixes
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
X-List-Received-Date: Sun, 04 Feb 2018 23:33:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert

On Thursday, 1 February 2018 5:59:42 PM NZDT Robert Yang wrote:
> On 01/03/2018 01:42 PM, Robert Yang wrote:
> > This email contains two parts:
> > - The first 2 are bug fixes
> > - The other 3 are performance improvements, I have 124 layers,
> >    the "update.py -b <branch>" needs about 9m20s to finish the running
> >    when everything is
> >    update, and we have several branches, we need them to run in
> >    periodically
> >    (e.g., per 30 mins, the short the better), so one branch 9m20s is
> >    really a problem.
> >    Only about 1m43s are needed with these improvements when set
> >    PARALLEL_JOBS to 10:
> >    update.py: fetch repos parallelly # Saved 2 mins
> >    update_layer.py: use it as a module # Saved 5 mins
> >    update_layer.py: only call init_parser when needed # Saved 1 min
>
> Any comments, please ?

My apologies for the delay - I had concerns about the update_layer.py
module stuff but hadn't made the time to review it properly until now.

Aside from that the other patches are fine so I've merged those (with
some minor tweaks to the commit messages).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

