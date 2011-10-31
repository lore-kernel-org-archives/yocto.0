Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3401EE006CC
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 05:01:12 -0700 (PDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKqYA-0005Xd-8V; Mon, 31 Oct 2011 08:01:10 -0400
Date: Mon, 31 Oct 2011 08:01:05 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <BA8B50AF-70FB-4FF4-B1DA-BF9315C85EF4@dominion.thruhere.net>
Message-ID: <alpine.DEB.2.02.1110310757470.5055@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110290915450.7280@localhost6.localdomain6>
	<BA8B50AF-70FB-4FF4-B1DA-BF9315C85EF4@dominion.thruhere.net>
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
Subject: Re: is there a filesystem issue with kernel 3.0.x on pandaboards?
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
X-List-Received-Date: Mon, 31 Oct 2011 12:01:12 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 31 Oct 2011, Koen Kooi wrote:

>
> Op 29 okt. 2011, om 15:19 heeft Robert P. J. Day het volgende geschreven:
>
> >  possibly off-topic but i'm sitting in a fedora/ARM talk right
> > this minute at FSOSS/linuxfest at york u, and the presenter
> > mentioned that when building fedora for pandaboards, they had to
> > back off from kernel 3.0.4 to 2.6.35 because, in that situation,
> > the filesystem had a bad habit of switching unpredictably into
> > read-only mode.
> >
> >  is this a known issue in any yocto context?  again, sorry if this
> > is wandering far afield but yocto on a pandaboard was at the top
> > of my TODO list for this coming week.
>
> I'm not seeing that problem on the pandaboard that's running 3.0.x
> and angstrom. The default in angstrom/meta-ti is 2.6.35 due to
> multimedia acceleration madness.

  i wish i had more info on this.  the topic came up when i was
chatting with the people who run the fedora arm farm at seneca
college, so they're pretty knowledgeable.  the symptom was that after
they installed a fedora ARM build with a 3.0.x kernel on their
pandaboards, when they started pounding on them with massive writes to
the root filesystem, on a regular basis, the root filesystem would
suddenly switch to read-only mode.  when they backed off to a 2.6.35
kernel, all was good.

  if i hear more and it sounds relevant, i'll post here.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

