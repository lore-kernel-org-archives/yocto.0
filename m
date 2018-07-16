Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A62EE014B9; Mon, 16 Jul 2018 13:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6A57E00C5B;
	Mon, 16 Jul 2018 13:17:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Jul 2018 13:17:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,362,1526367600"; d="scan'208";a="55463011"
Received: from frangeul-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.252.50.39])
	by fmsmga008.fm.intel.com with ESMTP; 16 Jul 2018 13:17:01 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Konrad Scherer <Konrad.Scherer@windriver.com>
Date: Mon, 16 Jul 2018 22:16:55 +0200
Message-ID: <2410950.gK5fZyVSBj@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <fb724cc6-0424-21e6-614f-abc45f1eb680@windriver.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<14728108.V4DRTVBihh@localhost.localdomain>
	<fb724cc6-0424-21e6-614f-abc45f1eb680@windriver.com>
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
X-List-Received-Date: Mon, 16 Jul 2018 20:17:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, 16 July 2018 8:24:53 PM CEST Konrad Scherer wrote:
> On 07/13/2018 03:29 AM, Paul Eggleton wrote:
> > On Thursday, 12 July 2018 10:16:12 PM CEST you wrote:
> >> I just noticed that the image doesn't contain git. Was this
> >> deliberate or an oversight?
> > 
> > Ah, no, it wasn't deliberate - perhaps it was there earlier with
> > buildpack-deps? It doesn't appear that we ever explicitly had it in there. 
> > I've added it and pushed the branch again.
> 
> I recently noticed that if gcc is removed in the 'apt-get purge' step, 
> the bitbake sanity checker will fail due to missing 'gcc' when doing a 
> layer update.

Hmm, well that's a different problem - those sanity checks shouldn't be 
running. We don't need those tools since we're not building anything. I will 
have a look into this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



