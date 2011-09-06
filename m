Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD0C7E01295
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 03:27:54 -0700 (PDT)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1R0ssj-0007qw-Ii
	for yocto@yoctoproject.org; Tue, 06 Sep 2011 06:27:53 -0400
Date: Tue, 6 Sep 2011 06:27:48 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1109060616150.3852@localhost6.localdomain6>
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
Subject: trying to summarize all the top-level yocto-related docs
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
X-List-Received-Date: Tue, 06 Sep 2011 10:27:55 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  in trying to resolve a minor issue this weekend regarding
PREMIRRORS, i tried to summarize the current set of yocto-related docs
and wound up just a bit confused so i'm hoping someone can clarify the
canonical set of documentation someone getting into yocto would want
to have.

  as i read it, one can look at yocto in a series of intellectual
layers, simplest to most complex:

  * bitbake
  * OE-core
  * poky
  * yocto

  first, is that a reasonable way to look at the software collection?
if so, how do the docs line up against this?

  first, there's the bitbake user manual here:

  http://bitbake.berlios.de/manual/index.html

it seems like that manual hasn't been updated for a while (or has
it?).  is that the current state of the documentation for bitbake?  it
seems incomplete, unless i'm unclear on how the software is broken up.

  next, there's OE-core, for which the wiki page seems to be the most
current doc:

  http://www.openembedded.org/wiki/OpenEmbedded-Core

moving on to poky, the web site http://pokylinux.org/ really doesn't
take care to distinguish between poky and yocto since the "About" link
immediately jumps one over to the yocto project "About" page, which
really blurs the line between poky and yocto, deliberately or
otherwise.

  as for poky documentation, the Documentation tab over at yocto has a
link to the "Poky Reference Manual" but there is also a Poky Handbook
which is *not* linked from there and is not even clearly linked from
the poky site itself -- here's the handbook:

  http://pokylinux.org/doc/poky-handbook.html

which is clearly back at the poky site but you would be hard-pressed
to find that handbook starting at the poky linux main page and
following links.

  so ... what is the state of docs and support these days, for both
documentation and mailing lists?  i was wondering about something
involving PREMIRRORS and i ended up unsure as to what to read or which
mailing list i could consult.

  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

