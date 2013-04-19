Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C86DEE01410
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:39:19 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:55910 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UTCT9-0003JJ-00; Fri, 19 Apr 2013 10:39:19 -0400
Date: Fri, 19 Apr 2013 10:39:15 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20130419142509.GJ2489@jama>
Message-ID: <alpine.DEB.2.02.1304191038530.5636@oneiric>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
	<20130419142509.GJ2489@jama>
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
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Fri, 19 Apr 2013 14:39:20 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 19 Apr 2013, Martin Jansa wrote:

> On Fri, Apr 19, 2013 at 10:17:10AM -0400, Robert P. J. Day wrote:
> > On Fri, 19 Apr 2013, Martin Jansa wrote:
> >
> > > On Fri, Apr 19, 2013 at 09:35:18AM -0400, Robert P. J. Day wrote:
> > > >
> > > > The actual files subdirectory name is "netbase-5.0", not "netbase".
> > > >
> > > > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> > > >
> > > > ---
> > > >
> > > >   same fix was once applied to exactly the same recipe bbappend file
> > > > under meta-ti layer.
> > > >
> > > > diff --git a/recipes-core/netbase/netbase_5.0.bbappend b/recipes-core/netbase/netbase_5.0.bbappend
> > > > index 36432f5..a3fbd33 100644
> > > > --- a/recipes-core/netbase/netbase_5.0.bbappend
> > > > +++ b/recipes-core/netbase/netbase_5.0.bbappend
> > > > @@ -1,3 +1,3 @@
> > > > -FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > > > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> > > >  # Don't forget to bump PRINC if you update the extra files.
> > > >  PRINC = "1"
> > >
> > > that's P or use BP, and fix PRINC when you're there..
> >
> >   ok, pedantic question -- the comment suggests you're supposed to
> > increment PRINC "if you update the extra files". but i didn't, i just
> > made sure they're now being included. i guess that still counts, yes?
>
> I was talking about PRINC := "${@int(PRINC) + 1}"

  i think i'll just leave this to the rpi folks. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

