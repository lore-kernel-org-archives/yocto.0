Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 356B6E014F8
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 06:26:13 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Jun 2013 06:26:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,799,1363158000"; d="scan'208";a="347922918"
Received: from unknown (HELO helios.localnet) ([10.252.121.221])
	by orsmga002.jf.intel.com with ESMTP; 04 Jun 2013 06:26:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>, yocto@yoctoproject.org
Date: Tue, 04 Jun 2013 14:26:10 +0100
Message-ID: <62291455.6hREtkkLEB@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAAGt+t100v=mrKE4gbJnGqn5ezJADUFwnxdWQ0xzK8SWqyva6g@mail.gmail.com>
References: <CAAGt+t1SvAkQik=jAr5xPPBe7NE-VOwbDhLTnszst7NKF5W5TA@mail.gmail.com>
	<8731013.X4s1gPWXY4@helios>
	<CAAGt+t100v=mrKE4gbJnGqn5ezJADUFwnxdWQ0xzK8SWqyva6g@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Hello world-Checksum error
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
X-List-Received-Date: Tue, 04 Jun 2013 13:26:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 04 June 2013 15:19:49 Zafrullah Syed wrote:
> On Tue, Jun 4, 2013 at 12:58 PM, Paul Eggleton <
> paul.eggleton@linux.intel.com> wrote:
> > On Tuesday 04 June 2013 12:42:12 Zafrullah Syed wrote:
> > > previously, I successfully build *gumstix-console-image* and I have
> > 
> > created
> > 
> > > *meta-bebot* folder for my recipe.
> > > 
> > > My Yocto tree as follows:
> > > 
> > > Yocto
> > > 
> > >  --build
> > >  
> > >    --conf
> > >    
> > >        --bblayers.conf ( I added /home/siguser/yocto2013-05-08/poky/*
> > > 
> > > meta-bebot* \ ) path
> > > 
> > >        --local.conf ( I added IMAGE_INSTALL_append = " hello" ) under
> > > 
> > > *Additional
> > > image features*
> > > 
> > >    --downloads
> > >    --tmp
> > >    --
> > >    --
> > >  
> > >  --poky
> > >  
> > >     --bitbake
> > >     --build
> > >     --documentation
> > >     --meta
> > >     --*meta-bebot*
> > > 
> > > *        --conf*
> > > *            --bblayers.conf *(I added
> >  
> >  /home/siguser/yocto2013-05-08/poky/*
> >  
> > > meta-bebot* \ ) path
> > 
> > If I understand correctly from the above that you have put bblayers.conf
> > in
> > conf/ under your meta-bebot layer, that is not correct. bblayers.conf
> > needs to
> > be under conf/ in your build directory as usual.
> 
> my bblayers.conf file lies in  poky/meta-bebot/conf/bblayers.conf. do I
> need to remove this file and keep it in which build folder? I mean /yocto/*
> build*/conf/bblayers.conf or /yocto/*poky*/build/conf/bblayers.conf?

Yes, conf/bblayers.conf is supposed to be in the build directory; and 
whichever build directory you are actually using. The build directory can be 
anywhere, but you shouldn't really have two build directories unless you know 
what you are doing - did you perhaps run oe-init-build-env with no arguments 
in two different places? I suspect this is what has happened.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

