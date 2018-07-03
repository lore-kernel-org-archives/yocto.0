Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14974E0140A; Mon,  2 Jul 2018 19:58:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A2F5E00D38
	for <yocto@yoctoproject.org>; Mon,  2 Jul 2018 19:58:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Jul 2018 19:58:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,301,1526367600"; d="scan'208";a="63654577"
Received: from nmunfye-mobl1.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.64.227])
	by fmsmga002.fm.intel.com with ESMTP; 02 Jul 2018 19:58:50 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Tue, 03 Jul 2018 14:58:47 +1200
Message-ID: <9167934.g4TBrBcL74@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <f94a49f1-70cc-b960-c8eb-67f2cb6eac2c@windriver.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
	<2774b95ad7f971714498b5d35885225af873da03.1530569567.git.paul.eggleton@linux.intel.com>
	<f94a49f1-70cc-b960-c8eb-67f2cb6eac2c@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 5/7] update: ignore recommends when ordering layers
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
X-List-Received-Date: Tue, 03 Jul 2018 02:58:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert

On Tuesday, 3 July 2018 2:45:11 PM NZST Robert Yang wrote:
> Thanks for let me know this, this patch might be incorrect, suppose we have two
> layers: core and hello:
> 
> 1) LAYERRECOMMENDS_core = "hello"
> 2) $ update.py -l hello,core
> 
> Then core maybe added before hello layer since it ignores recs on hello, and if
> hello is a new layer, it would not be in core's recs in database since core
> knows nothing about hello, I think that this is incorrect.
>
> If we really need this, I think that we should not ignore recs when the
> layer is present, but only ignore it when the layer is not present, for
> example, ignore it when hello layer doesn't exist, otherwise, don't ignore it.

Can you come up with an alternative fix that doesn't break parsing like it does now?
 
> But I'm not sure about patch 4 (error -> warning) either, since layerindex is
> a central database, whether add recs to conf/bblayers.conf should depend on
> end user rather than ignore it in database, otherwise the end user (especially
> the api user) would have no way to choice, for example, we use api to make
> conf/bblayers.conf have all or no recs layers according to user's choice,
> if the database is wrong, then there might be only part of recs layers.
> Though we can check update.py's warnings to fix the problem.

Recommends are just that - recommendations. Someone might legitimately
submit a layer that recommends another which they don't submit (perhaps a
commercial layer?). The system shouldn't refuse to handle it or indicate that
it's broken (it isn't, there might be reduced functionality but the layer will still
be parseable by bitbake).

I'll leave these changes unmerged for a bit in case you have a better fix for
the current problems.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



