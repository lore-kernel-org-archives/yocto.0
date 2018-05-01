Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15E62E007F2; Tue,  1 May 2018 13:09:30 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70236E006B4
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 13:09:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2018 13:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,352,1520924400"; d="scan'208";a="224923061"
Received: from ethange-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.42])
	by fmsmga005.fm.intel.com with ESMTP; 01 May 2018 13:09:20 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Date: Wed, 02 May 2018 08:09:06 +1200
Message-ID: <3282715.K8pGKosiL1@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <8a00c2aa-ea4a-bc9f-65e7-4df683420169@linux.intel.com>
References: <cover.1525139239.git.paul.eggleton@linux.intel.com>
	<8a00c2aa-ea4a-bc9f-65e7-4df683420169@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 000/242] Integrate and improve Recipe Reporting System (cover letter only)
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
X-List-Received-Date: Tue, 01 May 2018 20:09:30 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Tuesday, 1 May 2018 9:58:03 PM NZST Alexander Kanavin wrote:
> On 05/01/2018 05:23 AM, Paul Eggleton wrote:
> > The Recipe Reporting System (RRS - live instance at
> > http://recipes.yoctoproject.org) was originally developed as a fork of
> > the layer index (live instance at http://layers.openembedded.org) - this
> > set of changes rebases it on top of master and makes the functionality
> > possible to activate for other layers. I've introduced the concept of a
> > "Maintenance Plan" to tie together the recipe maintenance information
> > for one or more layers and used it to replace all the parts that assumed
> > Poky or OE-Core were the repositories/layers being tracked. I've also
> > made it possible again for the application to gather data going back to
> > 1.6 across the python 2/3 divide, and made various cleanups and
> > optimisations in the code.
> 
> Thanks! Is this already taken into use on the recipes.yoctoproject.org?

No, what you see there is still the old version. I haven't discussed it yet 
with Michael but I would propose that once this gets merged and 
layers.openembedded.org is updated, then recipes.yoctoproject.org would simply 
become a redirect to the OE-Core maintenance plan on layers.openembedded.org.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



