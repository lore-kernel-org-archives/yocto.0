Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF556E0141D
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 02:09:39 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:37629 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SjRmE-0007uT-UX
	for yocto@yoctoproject.org; Tue, 26 Jun 2012 05:09:39 -0400
Date: Tue, 26 Jun 2012 05:09:34 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206260459040.8547@oneiric>
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
Subject: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 09:09:40 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1554022494-1340701777=:8547"

--8323329-1554022494-1340701777=:8547
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE


  i mentioned this to scott rifenbark privately a few days ago, but i
figured i might as well antagonize a few people on the list by saying
it publicly -- the yocto FAQ as it stands is pretty much worthless.

  https://wiki.yoctoproject.org/wiki/FAQ

  by way of explanation, i'll reproduce the first part of the superb
foreword in the subversion red book:

=3D=3D=3D=3D=3D start =3D=3D=3D=3D=3D

A bad Frequently Asked Questions (FAQ) sheet is one that is composed
not of the questions people actually ask, but of the questions the
FAQ's author wishes people would ask. Perhaps you've seen the type
before:

Q: How can I use Glorbosoft XYZ to maximize team productivity?

A: Many of our customers want to know how they can maximize
productivity through our patented office groupware innovations. The
answer is simple. First, click on the File menu, scroll down to
Increase Productivity, then=E2=80=A6

The problem with such FAQs is that they are not, in a literal sense,
FAQs at all. No one ever called the tech support line and asked, =E2=80=9CH=
ow
can we maximize productivity?=E2=80=9D Rather, people asked highly specific
questions, such as =E2=80=9CHow can we change the calendaring system to sen=
d
reminders two days in advance instead of one?=E2=80=9D and so on. But it's =
a
lot easier to make up imaginary Frequently Asked Questions than it is
to discover the real ones.

=3D=3D=3D=3D=3D end =3D=3D=3D=3D=3D

  in other words, a *good* FAQ might be:

"how can i use the yocto prebuilt toolchains to save build time?"

  a *bad* FAQ would be:

"Does the Yocto Project have a special governance model, or is it
managed as an open source project?"

  the kicker is that that last question is, in fact, in the yocto FAQ,
along with a number of other questions that have never been asked by
anyone in the history of the planet.  i chat about yocto with people
on a regular basis, and i can assure you, not a single one of them has
ever asked, "hey, rob, can you explain yocto's governance model?"

  no, what they ask is, "hey, rob, how can i add a single package to
an existing target?"  a question that, i should point out, is not
answered definitively in the existing docs *anywhere*.

  anyway, coffee is ready so i'm going to pour a cup and get back to
work.  you're now free to yell at me.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--8323329-1554022494-1340701777=:8547--
