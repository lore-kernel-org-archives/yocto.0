Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2AA9E01402
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 01:51:45 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:37599 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjRUu-0007Sw-KP
	for yocto@yoctoproject.org; Tue, 26 Jun 2012 04:51:44 -0400
Date: Tue, 26 Jun 2012 04:51:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206260424590.22400@oneiric>
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
Subject: how does one use a prebuilt toolchain from the toolchain/ directory?
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
X-List-Received-Date: Tue, 26 Jun 2012 08:51:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  it sounds like a trivial question whose answer should be easy to
find, but surprisingly, it isn't.  if a user wants to save all that
toolchain-building time and take advantage of an existing toolchain,
what to do?

  the ADT user's guide *sort of* addresses that, but in a somewhat
confusing way:

http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html

  first, the ADT guide, in section 2.1.2, talks about how to do this,
but only after the more complicated and involved recipe for using the
ADT installer.  this strikes me as backwards -- a set of alternatives
would make sense going from simplest to most complicated.  using a
prebuilt toolchain would seem to be the *first* thing that should be
explained.

  next, that section 2.1.2 in the ADT guide opens reasonably by
explaining how to find and download the appropriate toolchain and
then, for no apparent reason, takes this massive sidestep in a "Note"
to ask the reader to consider using bitbake to build it instead.  um
... no.  in the midst of explaining something really simple, it's
totally counter-productive to suddenly ask the reader to consider
something noticeably more complex and unnecessary in the context of
the current explanation.

  finally, after the Note is over, the instructions return to point
3., correctly telling the reader to unload the tarball at the root
directory, then vaguely referring to some "environment setup files"
without explaining what to do with them or when to run them or what
effect they'll have on the build process from then on. should one run
the appropriate env setup file *before* invoking oe-init-build-env?
after?  does it matter?

  so to clarify this issue, here's a set of questions to which i know
*some* of the answers and would like to know the rest.

1) i want to save buckets of time in my builds by using a pre-built
toolchain appropriate for my architecture.  can i always use one of
the toolchains at
http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/toolchain/?
is there any downside to doing that?  if so, what?

2) do those pre-built toolchains always need to be installed under
/opt/poky?  it seems pretty obvious that they do, given that the
environment setup scripts hardcode references to /opt/poky.

3) can i install multiple toolchains at the same time?  it seems so --
the common native content in the toolchains seems identical so i don't
see any issue with having two or more toolchains installed at the same
time.

4) once i install a toolchain, how do i use it?  say i install the arm
toolchain, and want to build a beagleboard image.  at what point do i
source the arm toolchain environment setup file?  is that all it
takes?  will the bitbake build process automatically recognize what
i've done and use that toolchain?

  and so on, and so on.  thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

