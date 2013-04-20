Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C13E6E014F2
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 06:37:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 20 Apr 2013 06:37:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,513,1363158000"; d="scan'208";a="325412159"
Received: from unknown (HELO [10.255.13.221]) ([10.255.13.221])
	by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2013 06:37:28 -0700
Message-ID: <1366465052.27207.74.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Sat, 20 Apr 2013 08:37:32 -0500
In-Reply-To: <alpine.DEB.2.02.1304200534160.14289@oneiric>
References: <alpine.DEB.2.02.1304190827410.4247@oneiric>
	<1366409274.27207.69.camel@empanada>
	<alpine.DEB.2.02.1304200534160.14289@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: clarification about BSP layer names and bblayers.conf file?
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
X-List-Received-Date: Sat, 20 Apr 2013 13:37:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2013-04-20 at 05:35 -0400, Robert P. J. Day wrote:
> On Fri, 19 Apr 2013, Tom Zanussi wrote:
> 
> > On Fri, 2013-04-19 at 08:37 -0400, Robert P. J. Day wrote:
> >
> > >   second, the BBLAYERS example there seems overly complicated and
> > > potentially confusing to beginners. the fact that meta-yocto is listed
> > > as NON_REMOVABLE might make readers wonder how they're supposed to
> > > know that. why not go with something a lot more people will see, like,
> > > say:
> > >
> > >      BBLAYERS = ?" \                  <-- and that looks like a typo
> > >        /usr/local/src/yocto/meta \
> > >        /usr/local/src/yocto/meta-ti \
> > >        "
> > >
> > >      BBLAYERS_NON_REMOVABLE ?= " \
> > >        /usr/local/src/yocto/meta \
> > >        "
> > >
> >
> > I agree - the whole NON_REMOVABLE thing doesn't add anything and should
> > be removed - the example is just trying to show how to add a BSP layer -
> > the rest just adds potential confusion.  And, yeah, it's a typo..
> 
>   i'll let someone else decide what to do there.
> 
> > >   finally, the passing reference to layers that contain sub-BSP-layers
> > > is good, but show an example, such as the fact that the meta-crownbay
> > > layer.conf file has a dependency on meta-intel:
> > >
> > > ...
> > > LAYERDEPENDS_crownbay = "intel"
> > >
> > >   never pass up the opportunity to reinforce an idea with a few lines
> > > of actual code. :-)
> > >
> >
> > Agreed, but on the other hand we don't really want to be too
> > intel-specific (I know, we have crownbay everywhere else, but anyway..)
> 
>   i was just looking for an example of the kind of hierarchical layer
> structure you find in meta-intel. is there another layer that has that
> kind of structure?
> 

A quick scan of all the layers I have opengrokked here doesn't show any
either, so possibly meta-intel is currently the only example.  If so,
let's use it..

Tom

> rday
> 



