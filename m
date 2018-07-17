Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B7FEE0106C; Tue, 17 Jul 2018 03:16:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11363E0082A;
	Tue, 17 Jul 2018 03:16:45 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2018 03:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,365,1526367600"; d="scan'208";a="67652144"
Received: from spalapa-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.34.182])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jul 2018 03:16:44 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Konrad Scherer <Konrad.Scherer@windriver.com>
Date: Tue, 17 Jul 2018 12:16:43 +0200
Message-ID: <4442632.9cThEXArIQ@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <2410950.gK5fZyVSBj@localhost.localdomain>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<fb724cc6-0424-21e6-614f-abc45f1eb680@windriver.com>
	<2410950.gK5fZyVSBj@localhost.localdomain>
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
X-List-Received-Date: Tue, 17 Jul 2018 10:16:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 16 July 2018 10:16:55 PM CEST Paul Eggleton wrote:
> On Monday, 16 July 2018 8:24:53 PM CEST Konrad Scherer wrote:
> > I recently noticed that if gcc is removed in the 'apt-get purge' step, 
> > the bitbake sanity checker will fail due to missing 'gcc' when doing a 
> > layer update.
> 
> Hmm, well that's a different problem - those sanity checks shouldn't be 
> running. We don't need those tools since we're not building anything. I will 
> have a look into this.

I was wrong - I remembered that we explicitly set HOSTTOOLS = "gcc" in our own 
conf/local.conf because there are other places in the metadata where we check 
for gcc which we do not override, and thus it's expected to be there. I've 
fixed and pushed the branch again, thanks for pointing out the issue (this 
time I actually tested running an update ;).

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre



