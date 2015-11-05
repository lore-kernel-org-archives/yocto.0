Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 648AAE00B28; Thu,  5 Nov 2015 01:25:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8EDE00B19
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 01:25:19 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Nov 2015 01:25:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,247,1444719600"; d="scan'208";a="843127887"
Received: from rorourke-mobl4.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.10.56])
	by orsmga002.jf.intel.com with ESMTP; 05 Nov 2015 01:25:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Khem Raj <raj.khem@gmail.com>, Chris Hallinan <challinan@gmail.com>
Date: Thu, 05 Nov 2015 09:25:15 +0000
Message-ID: <1758245.VzMHveDG3B@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <6A5CD4C5-25C2-45C0-AF85-0BAC21D9B8A1@gmail.com>
References: <CAME0jBSQ2VSnA1RSNTQne2ZGRm+8AbihXiWCq4VR7+pYFsgUKw@mail.gmail.com>
	<6A5CD4C5-25C2-45C0-AF85-0BAC21D9B8A1@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Unable to modify patch files in u-boot recipe - quilt applies direct from layer files
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
X-List-Received-Date: Thu, 05 Nov 2015 09:25:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 04 November 2015 17:16:32 Khem Raj wrote:
> > On Nov 4, 2015, at 11:57 AM, Chris Hallinan <challinan@gmail.com> wrote:
> > I was trying to "patch a patch" in a u-boot recipe using standard
> > bbappends technique.  I added a task before do_patch after do_unpack
> > to munge the patch that was broken.  Here is what seems to happen:
> > 
> > do_unpack:
> >    copies all the patch files from the metadata layer into ${WORKDIR}
> > 
> > do_fix_patch (my additional task)
> > 
> >    uses sed or patch to apply a local fix to a broken patch in ${WORKDIR}
> > 
> > do_patch
> > 
> >    creates a subdirectory in ${S} called "patches", and puts links to
> > 
> > the actual files in the layer and uses those links back to the layer
> > files to apply the patches.
> > 
> > It seems quilt is using the actual layer files instead of the ones in
> > ${WORKDIR}??
> > 
> > This seems odd and somehow wrong.  We copy the layer files into
> > WORKDIR, and the unsuspecting user (me) thinks those are the files
> > that do_patch will use.
> > 
> > This one took me some time (and help) to figure out!
> > 
> > Comments?  Is this a bug?  halfway in the middle of some architectural
> > changes?  Expected behavior?
> 
> while what you are doing is quite questionable. You seem to have a point.
> Most probably copy of the files in workdir should be removed from
> happening.
> 
> > My workaround was to simply replace the entire patch.
> 
> you should use the quilt workflow and edit/refresh the patch once and copy
> it back to metadata once for all yes.

Or devtool modify, change the patch in the resulting git repository, then 
devtool update-recipe -a.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

