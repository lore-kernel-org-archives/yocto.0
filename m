Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76222E00777; Fri, 20 Mar 2015 04:14:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BCA4E0056E
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 04:14:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 20 Mar 2015 04:14:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,436,1422950400"; d="scan'208";a="701612563"
Received: from ebtoomey-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.25.148])
	by orsmga002.jf.intel.com with ESMTP; 20 Mar 2015 04:14:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Prasant J <pj0585@gmail.com>
Date: Fri, 20 Mar 2015 11:14:54 +0000
Message-ID: <3145381.WbFnV3fS4E@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <203838231.pb6FNpVrD4@peggleto-mobl.ger.corp.intel.com>
References: <CAA2DH4v8kvV6SoEM4aeCBrY=nP6hF83Nde05jeM56_oMr1zn-A@mail.gmail.com>
	<550BF5E3.90900@dynamicdevices.co.uk>
	<203838231.pb6FNpVrD4@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Embedded Linux Package Management
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
X-List-Received-Date: Fri, 20 Mar 2015 11:14:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 20 March 2015 11:10:39 Paul Eggleton wrote:
> On Friday 20 March 2015 11:26:43 Alex J Lennon wrote:
> > On 20/03/2015 11:15, Prasant J wrote:
> > > On Fri, Mar 20, 2015 at 2:21 PM, Alex J Lennon
> > > 
> > > <ajlennon@dynamicdevices.co.uk> wrote:
> > >> On 20/03/2015 09:34, Prasant J wrote:
> > >> 
> > >> Hi,
> > >> 
> > >> I'm looking for package management for my embedded linux systems
> > >> (yocto on armv7 iMX6Q)
> > >> 
> > >> 
> > >> I'm looking for the following features:
> > >> 
> > >> (a) Install & remove a package
> > >> (b) Install packages and its dependencies
> > >> (c) Install a package with conflicts, such that the conflicting
> > >> package is force removed
> > >> (d) A local location with packages should serve as a package source
> > >> (e) Remote server package (http file server based)
> > >> (f) List of my packages installed
> > >> (g) List of my packages not installed but available on the http file
> > >> server
> > >> (h) List of my packages that have updates (new version)
> > >> (i) To be able to manage packages for multiple architectures (eg. rpm
> > >> can produce packages for multiple architectures using one spec file)
> > >> 
> > >> 
> > >> The above features will be invoked by the application GUI.
> > >> Any suggestions: which package management solution would answer all
> > >> the above use cases?
> > >> 
> > >> 
> > >> 
> > >> (e) I use smart + RPM. I have a remote package server setup via this in
> > >> local.conf
> > >> 
> > >> FEED_DEPLOYDIR_BASE_URI = "http://packages.foo.bar"
> > >> 
> > >> Then I'm rsyncing the files up to the server after a bitbake
> > >> package-index.
> > >> 
> > >> Then smart update / search / install
> > >> 
> > >> That seems to work well in my testing.
> > > 
> > > Hi Alex,
> > > 
> > > Thanks for inputs!
> > > 
> > > Is smart development stopped?
> > > 
> > > When I look at their mailing list it, the last posts were in Nov 2014.
> > > It looks like no more development for smart package manager. I would
> > > then tend to say that it will not be a right way for me.
> > 
> > I don't know. To me the question would be does it do want I need it to
> > do as well as I need it to do it,
> > rather than asking whether there is a lot of activity. One might take
> > the view that if it is doing its job,
> > a lack of activity is a sign that it's a mature piece of software that
> > needs little further development.
> > 
> > You'll have to make that decision yourself.
> > 
> > My understanding is that smart is the recommended way to do things (at
> > least it was what was
> > recommended to me) - https://wiki.yoctoproject.org/wiki/Smart
> 
> FYI, here is some of the thinking that led to the decision to use smart:
> 
> https://lists.yoctoproject.org/pipermail/yocto/2012-October/010384.html
> 
> Of course that was a few years ago now - we probably ought to look at the
> RPM landscape again (e.g. DNF) and see if any change is warranted.

I forgot to mention, we do have some basic documentation here on
setting up a feed if you hadn't already seen it:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#using-runtime-package-management

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

