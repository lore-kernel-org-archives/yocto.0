Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 218A4E011D1
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2012 06:59:35 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Mar 2012 06:59:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="117752970"
Received: from unknown (HELO helios.localnet) ([10.252.123.166])
	by azsmga001.ch.intel.com with ESMTP; 12 Mar 2012 06:59:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 12 Mar 2012 13:59:31 +0000
Message-ID: <1619950.WDgEWRegMs@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <20120312131448.24BB0202BE9@gemini.denx.de>
References: <4F296826.4030909@gmail.com> <3971839.nMHIKpoOXs@helios>
	<20120312131448.24BB0202BE9@gemini.denx.de>
MIME-Version: 1.0
Subject: Re: 1.2_M2-Final build failures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 12 Mar 2012 13:59:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 12 March 2012 14:14:48 Wolfgang Denk wrote:
> In message <3971839.nMHIKpoOXs@helios> Paul Eggleton wrote:
> > On Wednesday 01 February 2012 11:28:22 jfabernathy wrote:
> > > Using the tarballs for Poky and meta-intel for 1.2_M2-Final, I was
> > > getting a lot of build failures below is what worked and what didn't.
> > > Not sure if this is a bug or if I'm missing something. I extracted the
> > > meta-intel tarball for 1.2_M2-Final in the poky directory created by
> > > extracting the poky tarball for 1.2_M2.Final.
> > >
> > >...
> > >
> > >  3. building n450 core-image-minimal fails with error: ERROR: Unable to
> > >  
> > >     parse /home/jim/poky/meta/recipes-core/tasks/task-base.bb:00:20
> > >     
> > >     Traceback (most recent call last):
> > >        File "/home/jim/poky/bitbake/lib/bb/parse/ast.py", line 379, in
> > >     
> > >     multi_finalize(fn='/home/jim/poky/meta/recipes-core/tasks/task-base.
> > >     bb
> > >     <http://task-base.bb>', d=<bb.data_smart.DataSmart object at
> 
> > >     0x4a801d0>):
> ...
> 
> > >  4. building cedartrail core-image-minimal fails with error: ERROR:
> > >     Unable to parse conf/bitbake.conf: Could not include required file
> > >     conf/machine/include/ia32-base.inc
> > 
> > I think I know what's going on here. In previous editions it was enough to
> > have just the meta-intel sub-layer in your bblayers.conf (e.g.
> > meta-crownbay) - now you also need to add meta-intel itself to get
> > certain common files. If you do this then your errors will go away.
> 
> Is it correct to assume that your note refers to the "4." problem
> above only?

I don't recall now but I assume I meant both at the time. FWIW it seems that 
for Jim's case both issues were solved by the suggested fix.

> I see the very same error as described as "3." above, but I don't use
> sub-layers.

I'm not sure what you mean here. Which entries for meta-intel do you have in 
your bblayers.conf?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

