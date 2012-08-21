Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DE96E00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 10:27:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 21 Aug 2012 10:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,803,1336374000"; d="scan'208";a="207659091"
Received: from unknown (HELO helios.localnet) ([10.252.121.105])
	by fmsmga001.fm.intel.com with ESMTP; 21 Aug 2012 10:13:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 21 Aug 2012 18:13:51 +0100
Message-ID: <35424393.cCDRK386FI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-29-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1208211251090.14771@oneiric>
References: <CAMv4DROy+nzU-6ESb2FGQyok33C7e6hV7EoOhN_5sq8PSCTxYA@mail.gmail.com>
	<2350730.VsPNl426oH@helios>
	<alpine.DEB.2.02.1208211251090.14771@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: adding packages in my Yocto
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
X-List-Received-Date: Tue, 21 Aug 2012 17:27:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 21 August 2012 12:51:41 Robert P. J. Day wrote:
> On Tue, 21 Aug 2012, Paul Eggleton wrote:
> > On Tuesday 21 August 2012 12:16:26 Robert P. J. Day wrote:
> > > On Tue, 21 Aug 2012, Jeff Osier-Mixon wrote:
> > > > Hi - please take a look at the FAQ here:
> > > > https://wiki.yoctoproject.org/wiki/FAQ
> > > > 
> > > > Near the bottom there are some technical answers, one of which is how
> > > > to add a single package:
> > > > 
> > > > Q: How can I add a package to my project?
> > > > 
> > > > A: As with any complex system, the real answer is it depends, but of
> > > > course that is not very helpful. The simplest method for adding a
> > > > single package to your build is to add a line like this to
> > > > 
> > > > conf/local.conf:
> > > >    IMAGE_INSTALL_append += " package"
> > >    
> > >    grrrrrr ...            ^ "="
> > > 
> > > the "+=" is redundant.
> > 
> > Fixed.
> 
>   if there's no objection, i added how to add multiple packages as
> well, just below that.

Looks good to me, thanks.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

