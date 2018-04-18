Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4793E00BA1; Wed, 18 Apr 2018 13:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74866E00AAF
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 13:55:25 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Apr 2018 13:55:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,466,1517904000"; d="scan'208";a="192574478"
Received: from kckarthx-wtg.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.143.68])
	by orsmga004.jf.intel.com with ESMTP; 18 Apr 2018 13:55:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Thu, 19 Apr 2018 08:55:18 +1200
Message-ID: <1606711.kRkuylaPko@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <6deae428d43ea4bbe0146bf59aa7d247f6c0f80b.1524049072.git.liezhi.yang@windriver.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<6deae428d43ea4bbe0146bf59aa7d247f6c0f80b.1524049072.git.liezhi.yang@windriver.com>
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
X-List-Received-Date: Wed, 18 Apr 2018 20:55:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 18 April 2018 11:04:33 PM NZST Robert Yang wrote:
> The utils.setup_django() costs a lot of time, but both update.py and
> update_layer.py calls it, so move layer validation from update_layer.py to
> update.py to avoid calling update_layer.py when possible can save a lot of
> time.

Unfortunately I still can't merge this, as mentioned earlier it breaks 
handling older python 2-bound releases.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



