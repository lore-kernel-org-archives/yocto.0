Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA2C5E00799; Tue, 12 Aug 2014 09:10:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97ECAE006EF
	for <yocto@yoctoproject.org>; Tue, 12 Aug 2014 09:10:32 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Aug 2014 09:10:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,849,1400050800"; d="scan'208";a="557496946"
Received: from glucy-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.202])
	by orsmga001.jf.intel.com with ESMTP; 12 Aug 2014 09:10:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 12 Aug 2014 17:10:29 +0100
Message-ID: <1992651.1Jo3sssU9p@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.8-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <20140812154825.GQ14848@jama>
References: <8971389.fH3VELLT3O@peggleto-mobl5.ger.corp.intel.com>
	<20140812154825.GQ14848@jama>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: Automatic upgrade helper
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
X-List-Received-Date: Tue, 12 Aug 2014 16:10:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 12 August 2014 17:48:25 Martin Jansa wrote:
> On Tue, Aug 12, 2014 at 04:19:41PM +0100, Paul Eggleton wrote:
> > Hi folks,
> > 
> > I'd like to announce the immediate availability of the Automatic Upgrade
> > Helper, a tool for automating the task of upgrading recipes when a new
> > upstream release occurs. It utilises the build system to check if a new
> > version of the software built by a particular recipe is available, and if
> > it is, it will attempt to upgrade the recipe to build that new version.
> > The outcome of the process is emailed to the maintainer of the recipe
> > along with a patch to do the upgrade, so that they can send the patch to
> > be merged (if the build succeeded with no warnings) or develop the patch
> > further if problems occurred.
> 
> Does it also check buildhistory output for unexpected changes in
> packaging?
> 
> If it doesn't it should ask maintainer to do so manually before
> submitting the patch.

Not at the moment, but that's definitely something I agree we should add (and 
fairly quickly, it should be pretty trivial to do.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

