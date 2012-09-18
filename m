Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8673E013D2
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 11:24:01 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1TE2Si-000Pvw-T2
	for yocto@yoctoproject.org; Tue, 18 Sep 2012 18:23:57 +0000
Received: from [10.1.7.39] (ICNET-66-210-165-231.icnet.net [66.210.165.231])
	(authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8IINrsB026174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 13:23:54 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1+sbovYi3V/HXa2giNYiZdU5W9BMDKt0G4=
Message-ID: <1347992629.1943.38.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: yocto@yoctoproject.org
Date: Tue, 18 Sep 2012 13:23:49 -0500
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
X-Mailman-Approved-At: Tue, 18 Sep 2012 11:42:32 -0700
Subject: All incompassing documentation
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
X-List-Received-Date: Tue, 18 Sep 2012 18:24:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I took a look at the mega-manual for the first time after hearing
mention of it in the meeting.

From a new user perspective, it seems a step backwards.  While
everything may be there, it has the needle in the haystack feeling.  The
only way to find something is to search for it, but what search term to
use?  How do you even learn the basic terminology so you are speaking
the same "language" everyone else is?


The individual documents had tables of contents that would let you find
what you were looking for, or at least take a stab at it.  In this
document, it feels hopeless.  For instance, I want to know about
creating new software "Packages" but a search for packages is not at all
helpful.  With no table of contents I cannot use that to narrow down my
search for what is of interest.  Most of my hits for such an item
discuss the packages I will need to install in my host distribution so I
can use the yocto project (not surprised, the danger of a term as vague
as packages).


Another issue I see is that information in the document seems to be more
redundant (seems as separately it was just as redundant just not as
noticeable).  While including the same information in multiple documents
is good when the documents are separated and a user is using just one of
them, when pulling them together like this having an area at the
beginning go over installation (quick start) and then have a later
section go over it again seems a little redundant, and adds a lot more
to search through when trying to find items of interest.

Also on the redundancy issue, when two documents need to cover the same
thing, such as which packages to install in a distro, I suggest a common
source for the section be used that both share.  While having things
worded differently can help have things make sense to more people,
having to look in separate locations for the different ways it is said
isn't a good idea.  So, if both ways of saying it are useful, both
documents probably should have both wordings, and they should be found
together, or at the least one references the other (for more
details/specific steps see Appendix XYZ).  There are exceptions (a quick
start guide for instance), but those exceptions probably should either
be treated like an appendix or not included in this document.




So, areas I'm curious about:
How is the redundancy being reduced, or is it not considered an issue?
What options to help a user find the sections of interest are being
considered, or is search for keywords the way the document is envisioned
to be used?


Interestingly, after not needing to build the documentation from the
sources being mentioned, I ran into this in the documentation:

BitBake: The task executor and scheduler used by the OpenEmbedded build
system to build images. For more information on BitBake, see the BitBake
documentation in the bitbake/doc/manual directory of the Source
Directory.


Which of course I then had to build to read, so seems at least some
documentation is expected to be built from sources.


Hopefully I haven't rambled so much to turn everyone off.  At least one
thing about documentation I haven't mastered is keeping it short...



Brian


