Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C1EE013E5
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 05:35:10 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:45687 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjrSe-0006Xn-RS
	for yocto@yoctoproject.org; Wed, 27 Jun 2012 08:35:09 -0400
Date: Wed, 27 Jun 2012 08:35:03 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206270803260.24304@oneiric>
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
Subject: first observations on ADT manual -- what am i supposed to do with it?
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
X-List-Received-Date: Wed, 27 Jun 2012 12:35:10 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  finally decided to check out the ADT user's guide and my first
observations on it are that, if i was an ADT beginner (and in fact i
am so all of this isn't really hypothetical), i'm not sure what i
would do with it after reading the first few pages.  so from my
perspective as a technical writer, i'm going to ramble and you're free
to skip to the next post.  what follows is going to be spectacularly
pedantic.

  given that ADT stands for "Application Development Toolkit", my
first impression would be that this thing (whatever it is) is for
building (user-space) "applications."  but no, the very first sentence
claims that you would use the ADT "to develop projects using the Yocto
Project", which would confuse me since i already have the YP file
structure for that, so at this point, i'd be thinking, "i've been
building projects for days, what do i need *this* thing for?"

  section 1 then describes in detail the components of the ADT, as if
that might clarify the situation:

  * cross-toolchain
  * sysroot
  * QEMU emulator
  * user-space tools

  but, again, if i've been happily building projects for a while, it's
*still* not at all clear what the ADT brings to the table.  in
addition, other than the user-space tools, i might be well aware that
i can get all of those component from a pre-built toolchain.

  i've downloaded a couple of the yocto pre-built toolchains (ARM and
MIPS for x86-64), and i think i've verified that each of them does
indeed contain a toolchain, sysroot and QEMU emulator, unless i've
horribly misunderstood something.  so with that information, i'm
*really* unsure of the value of the ADT.  and chapter 2 just makes it
worse.

  chapter 2 is entitled "Preparing to Use the Application Development
Toolkit (ADT)", which suggests it should be *exclusively* about
getting and installing the ADT.  sadly, no.

  section 2.1 claims that "The following list describes how you can
install the ADT" and, sure enough, the first item is "Use the ADT
Installer Script".

  the next choice, though, is thoroughly confusing: "Use an Existing
Toolchain Tarball"?  um ... what?  how does that give me an ADT?  it
seems that that choice is what lets me *avoid* installing an ADT,
since it's an *alternative* to installing an ADT.  in other words, if
i've already got one of those pre-built toolchains, why would i even
keep reading?

  the third choice is equally confusing: "Use the Toolchain from
within a Yocto Project Build Tree."  but if i have that, again, why do
i need an "ADT"?  and in that third choice, i'm told the drawbacks of
that choice: "get the cross-toolchain and QEMU - you do not get any of
the other benefits without taking separate steps."  so ... this choice
*isn't* equivalent to installing an ADT after all.  and yet the guide
has suggested it as *exactly* that.

  at this point, the beginner is utterly confused and wondering what
all the fuss is about.

  chapter 2 of the ADT guide is noticeably better since it appears to
be correct, but a reader will, at this point, still be wondering what
the point is.  it still hasn't been explained what value the ADT
brings to the build process.

  as one reads through chapter 2, things start to become clearer as
the list of config variables imply how much someone can customize the
resulting ADT, but it would be helpful if the output is compared to
one of those pre-built toolchains so the reader can appreciate the
difference.

  then section 2.1.2 confuses everything by explaining how, if you
want to avoid all this, just use "an existing cross-toolchain
tarball".  arrrrrrghhh!!  partway through chapter 2 is not where you
want to explain why a reader doesn't need to do any of this.  and
section 2.1.3 commits the same sin.  all of that should be explained
right up front.

  there's more but coffee is ready ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

