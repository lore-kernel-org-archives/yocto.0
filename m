Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ED6BE00C80; Tue,  7 Jun 2016 16:23:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FF98E00C49
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 16:23:54 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga101.jf.intel.com with ESMTP; 07 Jun 2016 16:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,436,1459839600"; d="scan'208";a="823678458"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by orsmga003.jf.intel.com with ESMTP; 07 Jun 2016 16:23:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Wingate <edwingate8@gmail.com>
Date: Wed, 08 Jun 2016 11:23:48 +1200
Message-ID: <6693315.UnGygSzkB8@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAGMdoF=KA=wmKu=+Zd6UOaQ=waZQgjvCQz=z8h+QtUgbYXoiTA@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<1857108.OcXCc2mBxV@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoF=KA=wmKu=+Zd6UOaQ=waZQgjvCQz=z8h+QtUgbYXoiTA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 07 Jun 2016 23:23:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 07 Jun 2016 16:07:26 Edward Wingate wrote:
> On Tue, Jun 7, 2016 at 1:47 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > So what this will give you is alternative packages to be installed instead
> > of sysvinit-inittab in your image.
> 
> I was under the (mistaken) impression that my recipe will run in
> addition to, not instead of, sysvinit-inittab (occurring after it and
> overwriting its inittab with my custom version).

The recipe will build in addition to sysvinit-inittab yes, but do_install for 
that recipe is just assembling the files ready for packaging - it doesn't 
directly install files into the image. When it comes time to assemble the 
image, all that is being done when you distil it down is that we install a 
bunch of packages.

> > Have you verified (by way of the image manifest written next to the image
> > file) that this package is actually being installed?
> 
> The manifest shows both sysvinit-inittab and my package being
> installed in the image, but sysvinit-inittab's inittab apparently
> takes precedence over mine.

Hmm, that is strange, because as they install the same file they ought to 
conflict. Perhaps as suggested elsewhere in this thread this is a bug (or at 
least undesirable behaviour) in rpm.

> > What steps have you taken to ensure that it does get installed in
> > preference to sysvinit-inittab?
>
> None, due to my mistaken impression.  After investigating your kind
> inference with help of Yocto manual, I replaced in my recipe:
> DEPENDS += " sysvinit-inittab"
> with:
> RREPLACES_${PN} = "sysvinit-inittab"
> 
> and it appears to be working now.  I've been using Yocto for a year
> now, but still feel like I'm barely scratching the surface of it.  I
> tend to get things to work by floundering about, so even though it
> does works, I would appreciate knowing if this was the most proper
> course of action.  Thanks!

I guess here you are getting into functionality that is not very well-defined, 
and you're also dealing with behaviour of the package manager rather than the 
build system itself (though I appreciate the lines are blurred from usage 
perspective). I guess it would help though if we would document a working 
procedure to do this kind of thing as it does come up from time to time.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

