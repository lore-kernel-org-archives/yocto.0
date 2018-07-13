Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6E3AE010F0; Fri, 13 Jul 2018 00:29:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49624E00E23;
	Fri, 13 Jul 2018 00:29:24 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Jul 2018 00:29:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,347,1526367600"; d="scan'208";a="54066364"
Received: from hsolima-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.33.36])
	by fmsmga007.fm.intel.com with ESMTP; 13 Jul 2018 00:29:22 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Konrad Scherer <Konrad.Scherer@windriver.com>
Date: Fri, 13 Jul 2018 09:29:21 +0200
Message-ID: <14728108.V4DRTVBihh@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <cf47aad9-6eda-46a4-20c2-24e9903fa5df@windriver.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<46407905.10uWkAFYrq@localhost.localdomain>
	<cf47aad9-6eda-46a4-20c2-24e9903fa5df@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Fri, 13 Jul 2018 07:29:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 12 July 2018 10:16:12 PM CEST you wrote:
> I just noticed that the image doesn't contain git. Was this 
> deliberate or an oversight?

Ah, no, it wasn't deliberate - perhaps it was there earlier with buildpack-
deps? It doesn't appear that we ever explicitly had it in there. I've added it 
and pushed the branch again.
 
> >> I recommend docker-compose because much of the information in
> >> docker/README can be captured in a compose yaml file. It handles the
> >> network setup and makes managing shared volumes much simpler.
> > 
> > Right, we'd just need to make sure everything we now have in the README is
> > covered by the compose file (everything that's practical to cover
> > , anyway).
> 
> I am heading out on vacation soon. I will rework my docker-compose 
> configuration with the new image and make some documentation when I get 
> back.

OK great, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



