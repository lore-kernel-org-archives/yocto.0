Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75C34E006C4
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 03:26:48 -0800 (PST)
Received: from [69.196.158.250] (port=59853 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vjosn-0004rf-Pp; Fri, 22 Nov 2013 06:26:45 -0500
Date: Fri, 22 Nov 2013 06:26:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@intel.com>
In-Reply-To: <1423409.HTN22GAagW@helios>
Message-ID: <alpine.DEB.2.02.1311220625290.7203@oneiric>
References: <alpine.DEB.2.02.1311211327360.10963@oneiric>
	<CAP71WjyfTp3RvhQFrg937dOdREsaO8PUPq7GmaY6m=a=47wJmg@mail.gmail.com>
	<alpine.DEB.2.02.1311220548170.5474@oneiric>
	<1423409.HTN22GAagW@helios>
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
Subject: Re: FW: strange explanation of how to add a package to an existing recipe
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
X-List-Received-Date: Fri, 22 Nov 2013 11:26:52 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 22 Nov 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Friday 22 November 2013 05:50:39 Robert P. J. Day wrote:
> > On Thu, 21 Nov 2013, Nicolas Dechesne wrote:
> > > On Thu, Nov 21, 2013 at 7:35 PM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
> > >       >suggests that, to customize an image, you should copy the existing
> > >       >.bb file for>       >
> > >       >that image to another name and add a line like:
> > >       >  IMAGE_INSTALL += "strace"
> > >       >
> > >       >but rather than *copy* the entire image file, isn't it easier to
> > >       >use what's
> > >       >already being used; that is, just "include" or "require" the
> > >       >existing .bb file.>
> > >       >example: core-image-minimal-mtdutils.bb contains:
> > > i would agree with the doc. while it is tempting to include/require
> > > a 'minimal' image, and it is simpler at first sight, eventually you
> > > will need to have full control of all your image. especially when
> > > your 'image' is your 'product' that gets deployed. In such
> > > circumstances I believe it is more appropriate to not rely on an
> > > external recipe. e.g. if the minimal image you include change, all
> > > your derived images change too...
> > >
> > > it's kind of a 'taste' choice, and you might want to choose to do
> > > differently, but still the best recommendation to me is to own your
> > > image recipes completely...
> >
> >   your logic is sound; however, it's also reasonable to suspect that
> > if someone is going to create a new, initial image over which they
> > want full control, they may very well want to create some subtle
> > variants of that image (as is done with all those core images).
> >
> >   so perhaps both approaches should be documented with the appropriate
> > caveats?
>
> Maybe, but this is really no different than any other type of
> recipe. I'd much rather us have some documentation on how to share
> commonality between recipes (where we discuss the usage and relative
> merits of include/require and bbclass files, for example) and just
> note in the image recipe section that image recipes are recipes and
> point to that generic documentation.
>
> I had a hand in writing this section so I'm completely biased, but I
> agree with Nicolas - including any of the core-image-* in your own
> recipe isn't giving you much of an advantage and may in fact cause
> unexpected changes when you come to upgrade. Image recipes tend to
> be fairly trivial, so it's simplest to just have your own discrete
> recipe (although if you want to have variants of that recipe that
> you also control, by all means use includes or classes to share the
> common parts.)

  ok, this makes sense. i'll shut up now.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

