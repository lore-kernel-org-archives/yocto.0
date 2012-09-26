Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 952D8E011AF
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 06:34:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Sep 2012 06:34:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,490,1344236400"; d="scan'208";a="198046798"
Received: from unknown (HELO helios.localnet) ([10.252.122.36])
	by orsmga001.jf.intel.com with ESMTP; 26 Sep 2012 06:34:19 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Wolfgang Denk <wd@denx.de>
Date: Wed, 26 Sep 2012 14:34:18 +0100
Message-ID: <2428256.OTjtN2nWn5@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <20120926132851.C81472031A9@gemini.denx.de>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<1767865.bvfduhkKG5@helios>
	<20120926132851.C81472031A9@gemini.denx.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 13:34:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 26 September 2012 15:28:51 Wolfgang Denk wrote:
> In message <1767865.bvfduhkKG5@helios> you wrote:
> > On Wednesday 26 September 2012 15:06:53 Wolfgang Denk wrote:
> > > > this is expected, at the moment you need to follow the instructions
> > > > and make the appropriate changes to your conf/bblayers.conf. However,
> > > > there is a patch out for review that we would like to include for the
> > > > 1.3
> > > > final release which will take care of this automatically for you.
> > > 
> > > Thanks.  Please excuse my ignorance: where would I find the respective
> > > instructions?
> > 
> > It does have some very brief instructions in the error message:
> > > > > Please compare the two files and merge any changes before
> > > > > continuing.
> > > > > Matching the version numbers will remove this message.
> > > > > "meld conf/bblayers.conf
> > > > > /home/wd/git/eldk-5.3/meta*/conf/bblayers.conf.sample" is a good way
> > > > > to visualise the changes.
> > 
> > I appreciate this is not as helpful as it could be, hence why we are
> > working to do this automatically for the user.
> 
> Ah, OK.  Well, I decided to update meta/conf/sanity.conf to have a
> matching value of LAYER_CONF_VERSION, so this is solved.

That will work, but normally you would edit conf/bblayers.conf, since 
meta/conf/sanity.conf is part of the metadata.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

