Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2667EE011C5
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 05:40:50 -0700 (PDT)
Received: from [69.196.158.250] (port=56819 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VW3vZ-0003Bt-TJ
	for yocto@yoctoproject.org; Tue, 15 Oct 2013 08:40:45 -0400
Date: Tue, 15 Oct 2013 08:40:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1310150753330.5919@oneiric>
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
Subject: trying a totally different way to teach OE/yocto in the classroom [LONG]
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
X-List-Received-Date: Tue, 15 Oct 2013 12:40:51 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  (WARNING: this post contains an unavoidable marketing component, but
i'm more interested in feedback on what i want to try as a whole new
way to teach OE/yoctoproject. and so, to work.)

  over the last while, i've taught a small number of OE/yocto courses
to some commercial clients, and i've never been happy with the
standard approach of writing a typical manual, having to lock it down
shortly before the course to facilitate printing it, grappling with
typesetting issues, worrying about how much sample code i can include
without getting carried away and making a section too long, realizing
partway through the course that what's in the manual is already out of
date but the class is stuck with it as it's already in their manual,
etc, etc, grrrrrrrr. so i have another OE/yocto course coming up
shortly and i'm going to try a totally different approach.

  i'm going to teach the entire course off of online wiki pages.
rather than waste my time tweaking format and aesthetics for the paper
manual i would normally give out, and *knowing* it will be out of date
in short order, i'm going to use my existing and many additional wiki
pages and build some structure around them, and spend the 4 days
simply displaying wiki page after wiki page, and having students
follow along with the countless code excerpts and sample commands they
contain.

  at the risk of linking to a currently chaotic work-in-progress,
here's my new top-level page:

  http://www.crashcourse.ca/wiki/index.php/OE

which even contains an active TO DO list that is changing by the hour
as i write/update existing pages, check off some items and add others.
here's my take on why i'm trying this approach and its advantages in
my opinion, and i'm interested in feedback.

  first, no messing with stupid paper manuals and worrying about fonts
and spacing and aesthetics. it's a wiki page and i can immediately see
what it looks like, and writing wiki pages is easy. and i've got lots
to work with as a starting point.

  next, it's easy to update on *very* short notice. i used this
approach for some sections in a different course a couple weeks back,
and it worked very well for staying current. i literally, in the
evenings, over lunch and even over a couple coffee breaks, snuck in
updated or entirely new content when i noticed something had changed.
and when i found a typo on a wiki page, i simply fixed it right in
front of the class and moved on. no big deal.

  the biggest benefit in my opinion is that, now that i no longer have
to worry about the length of the generated paper manual, i can be as
verbose as i want on any wiki page, and include as much code and as
many examples as i want until i feel i've made my point. i want to
emphasize lots and lots and lots of code snippets from the OE/yocto
source code.

  for example, here's a page in progress where i explain how to
develop a new BSP:

  http://www.crashcourse.ca/wiki/index.php/OE_Developing_a_New_BSP

if i was writing this for a regular paper manual, i'd be trying to
skimp on the sample code i was including to not make the section too
long. on the other hand, because it's a wiki page, who cares? if i
want to include 500 lines of code because i think it's worth it, i'll
include 500 lines of code -- i'll include as much as i need until i
think i've made my point. if i want to demonstrate how intel defines
the BSP for their crownbay, i will happily reproduce every single
relevant file on the wiki page and walk through each one.

  finally, all of the pages will be totally publicly available, so not
just the students but anyone is welcome to peruse them whenever they
want. and students will know that if things change after they take the
course, i'll do my best to update the wiki pages to keep up. no
paper-based obsolescence.

  and the downside? well, there is one place i *would* skimp, and
that's the normal, fluffy, arm-waving intro and connecting text for
each topic that you normally find in a paper manual or official
documentation. my plan is to be *very* terse -- i wouldn't invest a
lot of time in trying to make this content readable from a standalone
perspective. i would select a topic to write about, create a new page
and just jump right into showing how to do it with sample commands and
code excerpts. so even though all of the content would be publicly
available, it wouldn't necessarily be *comprehensible* for an
independent reader -- i would be writing it for the classroom.

  but i don't see that as a major drawback. in my experience, most
techies aren't interested in filler. they just want to see the code
and enough working examples to get the idea. and the plan is for the
wiki pages to contain *lots* of sample commands and *lots* of source
code ripped straight from the code base.

  anyway, i think i've rambled sufficiently so ... thoughts? comments?
criticism? starting monday next week, i'm going to find out just how
well this works as i do this for the first time at a client site. it
should be exciting.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

