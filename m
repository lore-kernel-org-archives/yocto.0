Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2174BE009F8; Thu, 19 Apr 2018 19:57:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA4D9E00843
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 19:57:40 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Apr 2018 19:57:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,299,1520924400"; d="scan'208";a="43288140"
Received: from arharkar-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.64.183])
	by FMSMGA003.fm.intel.com with ESMTP; 19 Apr 2018 19:57:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Fri, 20 Apr 2018 14:57:30 +1200
Message-ID: <1997500.98deYQNPfM@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <716b7370-2299-785f-4d39-9f1a4b2163a0@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<1606711.kRkuylaPko@peggleto-mobl.ger.corp.intel.com>
	<716b7370-2299-785f-4d39-9f1a4b2163a0@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/4] update_layer.py: move layer validation to update.py (Performance improve)
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
X-List-Received-Date: Fri, 20 Apr 2018 02:57:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert

On Thursday, 19 April 2018 6:45:17 PM NZST Robert Yang wrote:
> On 04/19/2018 04:55 AM, Paul Eggleton wrote:
> > On Wednesday, 18 April 2018 11:04:33 PM NZST Robert Yang wrote:
> >> The utils.setup_django() costs a lot of time, but both update.py and
> >> update_layer.py calls it, so move layer validation from update_layer.py 
to
> >> update.py to avoid calling update_layer.py when possible can save a lot 
of
> >> time.
> > 
> > Unfortunately I still can't merge this, as mentioned earlier it breaks
> > handling older python 2-bound releases.
> 
> I think you're talking about the one that I sent a few months ago, but this
> one is a completely new patch, that one moved tinfoil into update.py which
> broke python2, but this patch doesn't, it doesn't touch anything about 
> tinfo,
> so it works when I switch from YP 2.0 -> 2.2 -> 2.4, and vice visa.

My apologies - I didn't read the patch properly. Let me take a closer look at 
it tomorrow.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



