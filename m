Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD29CE016D8
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:54:30 -0800 (PST)
Received: from [173.34.6.101] (port=48046 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VdPIC-0001i2-Jo; Mon, 04 Nov 2013 13:54:28 -0500
Date: Mon, 4 Nov 2013 13:54:24 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <2613359.1lbv24R3Iq@helios>
Message-ID: <alpine.DEB.2.02.1311041353520.13071@oneiric>
References: <alpine.DEB.2.02.1311020624570.21875@oneiric>
	<CAMKF1so3X0P=A5fvVpzj-3RMntH_bGVJsGX2iJFJoiFZgJyksQ@mail.gmail.com>
	<2613359.1lbv24R3Iq@helios>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY = "1" or "true"?
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
X-List-Received-Date: Mon, 04 Nov 2013 18:54:32 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 4 Nov 2013, Paul Eggleton wrote:

> On Sunday 03 November 2013 12:49:16 Khem Raj wrote:
> > On Sat, Nov 2, 2013 at 3:27 AM, Robert P. J. Day <rpjday@crashcourse.ca>
> wrote:
> > >   (i can see it's going to be that kind of weekend.) ref manual reads:
> > >      BB_DANGLINGAPPENDS_WARNONLY = "1"
> > >
> > > but some layers define:
> > >
> > > meta-linaro/meta-aarch64/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
> > > "true"
> > > meta-linaro/meta-linaro-toolchain/conf/layer.conf:BB_DANGLINGAPPENDS_WARN
> > > ONLY = "true"
> > > meta-linaro/meta-linaro/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
> > > "true"
> > > poky-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY
> > > ?= "true"
> > >
> > > so general question(s) -- is it understood that "1" and "true" are
> > > equivalent? should there be a standard? should the ref manual be
> > > enhanced, or should the above layers clean themselves up?
> >
> > They are all correct. Accepted values are
> >
> > "1", "yes", "true"
>
> Note - for this variable only. For consistency with other "boolean" type
> variables I'd suggest sticking to "1".

  wait ... so those three synonyms are equivalent for only that one
variable? ewwwwwwwwww ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

