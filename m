Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48F18E009AC; Tue,  1 May 2018 17:00:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C457E00831
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 17:00:03 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2018 17:00:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,352,1520924400"; d="scan'208";a="55194073"
Received: from ttan22-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.64.39])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2018 16:59:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 02 May 2018 11:59:56 +1200
Message-ID: <16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Irving ST <irving@ssfivy.com>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Wed, 02 May 2018 00:00:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 2 May 2018 11:54:00 AM NZST Andre McCurdy wrote:
> On Tue, May 1, 2018 at 3:10 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Wednesday, 2 May 2018 12:07:42 AM NZST Burton, Ross wrote:
> >> The make dependencies come from the ptest packages, so if you disable
> >> ptest in your DISTRO_FEATURES then those should disappear.
> >>
> >> Essentially doing a full build without any GPLv3 software *and* not
> >> using old releases which are still GPLv2 is tricky.  I can only
> >> suggest you don't use the meta-gpl2 layer (as you don't want the
> >> recipes to be used) and use bbappends to disable pieces where
> >> required.
> >
> > We probably need some sort of whitepaper on how to do that, it doesn't
> > look like our manuals cover it in sufficient detail. Any volunteers ? ;)
> 
> Does "Blacklist GPLv3, don't use meta-gplv2, fix any issues you may
> run into" need a whitepaper? Or is there more to it than that?

Apart from "disable ptest" as Ross pointed out, I would assume that's all 
there is to it - but right now aside from asking here there's really no way 
for someone to know that that's the best available way of handling it, so I 
think it's worth documenting somewhere.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



