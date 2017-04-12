Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DC9FE00B1B; Wed, 12 Apr 2017 02:54:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21E05E00A9B
	for <yocto@yoctoproject.org>; Wed, 12 Apr 2017 02:54:28 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 12 Apr 2017 02:54:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,189,1488873600"; d="scan'208";a="76489820"
Received: from lheah-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.133.64])
	by orsmga004.jf.intel.com with ESMTP; 12 Apr 2017 02:54:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org, Martin Kelly <mkelly@xevo.com>
Date: Wed, 12 Apr 2017 21:54:23 +1200
Message-ID: <1971160.7GEiT5quOD@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAHiDW_FKOO2kGXxLs3NiB3yPmGh2OE1xec0Fdgnt2JuVmBvN_Q@mail.gmail.com>
References: <ba1a6361-3fd4-63f7-3752-63c75dff1347@xevo.com>
	<CAHiDW_FKOO2kGXxLs3NiB3yPmGh2OE1xec0Fdgnt2JuVmBvN_Q@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Relicensing an Apache-licensed recipe as MIT
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
X-List-Received-Date: Wed, 12 Apr 2017 09:54:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 12 April 2017 7:14:00 PM NZST Jussi Kukkonen wrote:
> On 11 April 2017 at 23:52, Martin Kelly <mkelly@xevo.com> wrote:
> > I'm thinking about integrating the open-vm-tools recipe from openswitch[1]
> > into openembedded (it massively improves the performance of VMWare guests)
> > but first I have a question about licensing. The openswitch repository is
> > Apache-licensed while the openembedded layers are all MIT licensed. I'm
> > not
> > a lawyer, but my understanding is that the Apache license is a superset of
> > the MIT license (it includes a patent clause that the MIT license lacks),
> > and therefore MIT code can be relicensed as Apache but not the other way
> > around.
> 
> The license of the layer refers to the licensing of the recipe files
> themselves: the source code licenses of the projects the recipes fetch and
> build are another thing. As long as the source code license is an open
> source one there should be no complaints about integrating into an
> openembedded layer.
> 
> To be completely clear: The LICENSE variable in a recipe refers to the
> source code license of the project to be built and should be set based on
> the licensing info found within the version of source code that we fetch
> and build. The recipe files are licensed according to the LICENSE and/or
> COPYING files of the layer it is in.
> 
> By the way, a quick search on layers.openembedded.org reveals this:
> http://git.openswitch.net/cgit/openswitch/ops-build/tree/yocto/openswitch/me
> ta-foss-openswitch/recipes-extended/open-vm-tools/open-vm-tools_10.0.5.bb
> (it seems to think the correct license is GPL).

This is muddying the waters somewhat - the LICENSE variable has nothing to do 
with this. We're only concerned with the license of the recipe itself.

My person opinion on the original question is that we shouldn't complicate 
matters by adding more than one license for metadata within the same layer if 
it's avoidable, so my suggestion would be to ask the original authors if they 
would be willing to relicense the single recipe you wish to copy as MIT.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

