Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 358A0E01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 15:13:47 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:56861 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPgnR-0007Hl-Sq; Tue, 09 Apr 2013 18:13:45 -0400
Date: Tue, 9 Apr 2013 18:13:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1365545491.1526.5.camel@empanada>
Message-ID: <alpine.DEB.2.02.1304091812400.14086@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091746080.4929@oneiric>
	<CAHUNapTHjYk6fWdRsk0-xLBEP5kUgnCR7Ss3TrvTuE9svgnKjQ@mail.gmail.com>
	<1365545491.1526.5.camel@empanada>
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
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 22:13:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Apr 2013, Tom Zanussi wrote:

> On Tue, 2013-04-09 at 18:06 -0400, Trevor Woerner wrote:
> > On Tue, Apr 9, 2013 at 5:46 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > >   ok, so what am i looking for?
> >
> > I couldn't get lab3 to work fully unless I switched from package_ipk
> > to package_rpm. The module would get built and included in the image,
> > but it wasn't being loaded automatically during boot. At the time I
> > tried against the master HEAD and everything worked fine, so whatever
> > it is I think I've found, it has been fixed (this is only a
> > danny-8.0.1 problem).
> >
> > https://lists.yoctoproject.org/pipermail/yocto/2013-February/014424.html
> >
> > When I mentioned it, it didn't seem to make sense that the choice of
> > packaging should affect something like this. But I tried it a couple
> > times on my machine and could reproduce it. I don't think anyone else
> > tried reproducing it.
>
> I believe I tried and couldn't reproduce it.  But if someone does
> reproduce it, please file a bug detailing the *exact* steps needed to
> reproduce.

  hmmmm ... for fun, i'm using HEAD for everything so i might avoid it
entirely.  if i have time, i'll give it a shot.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

