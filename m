Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BF97E014AA
	for <yocto@yoctoproject.org>; Sat, 20 Apr 2013 02:35:37 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:43082 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTUCk-000850-UX; Sat, 20 Apr 2013 05:35:35 -0400
Date: Sat, 20 Apr 2013 05:35:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1366409274.27207.69.camel@empanada>
Message-ID: <alpine.DEB.2.02.1304200534160.14289@oneiric>
References: <alpine.DEB.2.02.1304190827410.4247@oneiric>
	<1366409274.27207.69.camel@empanada>
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
X-List-Received-Date: Sat, 20 Apr 2013 09:35:37 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Apr 2013, Tom Zanussi wrote:

> On Fri, 2013-04-19 at 08:37 -0400, Robert P. J. Day wrote:
>
> >   second, the BBLAYERS example there seems overly complicated and
> > potentially confusing to beginners. the fact that meta-yocto is listed
> > as NON_REMOVABLE might make readers wonder how they're supposed to
> > know that. why not go with something a lot more people will see, like,
> > say:
> >
> >      BBLAYERS = ?" \                  <-- and that looks like a typo
> >        /usr/local/src/yocto/meta \
> >        /usr/local/src/yocto/meta-ti \
> >        "
> >
> >      BBLAYERS_NON_REMOVABLE ?= " \
> >        /usr/local/src/yocto/meta \
> >        "
> >
>
> I agree - the whole NON_REMOVABLE thing doesn't add anything and should
> be removed - the example is just trying to show how to add a BSP layer -
> the rest just adds potential confusion.  And, yeah, it's a typo..

  i'll let someone else decide what to do there.

> >   finally, the passing reference to layers that contain sub-BSP-layers
> > is good, but show an example, such as the fact that the meta-crownbay
> > layer.conf file has a dependency on meta-intel:
> >
> > ...
> > LAYERDEPENDS_crownbay = "intel"
> >
> >   never pass up the opportunity to reinforce an idea with a few lines
> > of actual code. :-)
> >
>
> Agreed, but on the other hand we don't really want to be too
> intel-specific (I know, we have crownbay everywhere else, but anyway..)

  i was just looking for an example of the kind of hierarchical layer
structure you find in meta-intel. is there another layer that has that
kind of structure?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

