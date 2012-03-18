Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 538AAE00746
	for <yocto@yoctoproject.org>; Sun, 18 Mar 2012 09:17:43 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S9Ine-0000A8-1X; Sun, 18 Mar 2012 12:17:42 -0400
Date: Sun, 18 Mar 2012 12:17:33 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Wolfgang Denk <wd@denx.de>
In-Reply-To: <20120318160940.D221A206055@gemini.denx.de>
Message-ID: <alpine.DEB.2.02.1203181213130.17206@oneiric>
References: <alpine.DEB.2.02.1203180550300.29125@oneiric>
	<alpine.DEB.2.02.1203180937590.7439@oneiric>
	<20120318160940.D221A206055@gemini.denx.de>
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
Subject: Re: why is YOCTO_GIT_URL defined to use http?
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
X-List-Received-Date: Sun, 18 Mar 2012 16:17:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 18 Mar 2012, Wolfgang Denk wrote:

> Dear Robert,
>
> In message <alpine.DEB.2.02.1203180937590.7439@oneiric> you wrote:
> >
> > > $ git clone http://git.yoctoproject.org/poky.git git
> > > Cloning into git...
> > > fatal: http://git.yoctoproject.org/poky.git/info/refs not found: did
> > > you run git update-server-info on the server?
>
> This is indeed an issue that should be fixed on the server.
>
> >   now that i'm awake, i can expand on the above.  it seems that you
> > simply can't use a single entity for this since you can use it in two
> > different contexts:
> >
> >   1) for browsing (http://)
> >   2) for cloning (git://)
> >
> > isn't the obvious solution to define two different entities, to be
> > used depending on the context?
>
> Umm...  I think you get this wrong.  You should be able to access the
> repository thrugh git both with
>
> 	git clone http://git.yoctoproject.org/poky.git
> and
> 	git clone git://git.yoctoproject.org/poky.git
>
> For access though a web browser, the URL would be
>
> 	http://git.yoctoproject.org/cgit/cgit.cgi/poky
>
> which is indeed a separate thing.

  quite so, i wrote the above assuming there was a reason why you
*couldn't* clone using the http:// protocol, and that this had been an
explicit decision (for whatever reason).  assuming, though, that it's
just an oversight and someone can fix that, i'll just carry on with my
proofreading.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

