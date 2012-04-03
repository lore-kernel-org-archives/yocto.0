Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 642B8E0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:01:42 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Apr 2012 09:01:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137131305"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by fmsmga001.fm.intel.com with ESMTP; 03 Apr 2012 09:01:41 -0700
Message-ID: <4F7B1EBD.1030500@linux.intel.com>
Date: Tue, 03 Apr 2012 09:01:01 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Tom Rini <tom.rini@gmail.com>
References: <26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
In-Reply-To: <20120402171356.GE4829@bill-the-cat>
X-Enigmail-Version: 1.4
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 16:01:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 04/02/2012 10:13 AM, Tom Rini wrote:
> On Fri, Mar 30, 2012 at 07:27:16PM -0700, Darren Hart wrote:
> 

Hi Tom,

> [snip]
>> You've mentioned preferring to do this with set versions of
>> bitbake and oe-core. Do oe-core and bitbake maintain stable
>> branches? I didn't think they did. This makes it difficult to
>> stabilize a release, and poky serves this purpose well in my
>> opinion. I'm going to stop going down this path though as the
>> policies surrounding this aren't clear to me and would be better
>> coming from others (RP or Chris for example).
> 
> Again, the intention of poky the repository is not intended to have
> its own changes.  oe-core will have a branch to go along with this
> release, just like meta-oe, meta-ti, meta-fsl-arm, meta-fsl-ppc,
> meta-intel and so forth.  Richard has even been (from how the
> branch layout looks) been keeping master stable and doing
> master-next for things that will go in post release.
> 
> I think at this point Richard (sorry!) really, really needs to find
> the time to make poky the distro be a separate layer and Yocto
> adopt some form of tooling, perhaps Angstrom's setup scripts with a
> little bit of abstraction, to replace the conglomerate repository
> and stop some of the


That's been stated by RP himself and think we're all agreed on it.


> confusion about repository directionality (and maybe move "I need
> to resurrect idea X into a branch in upstream).  This could even be
> done as part of Angstrom moving under the umbrella and one of the
> mutual benefits :)
> 
>> Without this, people working with "The Yocto Project" are back to
>> using different versions of bitbake and oe-core depending on
>> which distribution or BSP they are building, and we ultimately
>> end up where we started with unsolvable dependency chains and
>> people passing around fixup patches for this or that issue.
> 
> Then perhaps non-SCM blobs should be part of a Yocto Project
> release.


That has been suggested and it has some merit as a deployment
mechanism. I do fear that people will find it convenient to  get
started, but the confusion is just being pushed back a level to when
they try to start developing. Which perhaps is an improvement, but I
think we can do better.


> The point is that poky the repository is NOT an upstream for
> anything other than poky the distro specific things.`


I've wondered about this myself. One disadvantage of this approach in
my opinion, and an advantage of the poky repository, is that in poky
we have a sort of buffer between oe-core development and bitbake
development, where the two can be made to coexist in a known good
state. That said, as a developer I would love not having to develop
against poky and then split my patches out across the various
upstreams (bitbake, oe-core, and meta-yocto) and hope they don't have
to be rebased.

However, I fear developing on master of each oe-core and bitbake would
prove much more fragile than working on poky's master. For stable
releases, this issue can be addresses with a similar branching and
tagging scheme in oe-core and bitbake (and other Yocto Project
projects such as meta-yocto, meta-intel, angstrom, meta-ti, etc.)


> 
>>> or as I will label them from now on: forks.
>>> 
>>>> Angstrom has been independent from poky and the Yocto Project
>>>> in the past and I can understand not wanting to lose some of
>>>> that individuality. However, too much individuality breeds
>>>> chaos and fragmentation.
>>> 
>>> I will draw a line in the sand here and say: Forcing people to
>>> ignore upstream (oe-core/bitbake) and force a fork down their
>>> throats breeds chaos and fragmentation.
>> 
>> Don't be so dramatic Koen :-) Everybody involved knows the
>> bitbake and oe-core in the poky repository are not forks, at
>> least not in the sense you portray here. They are snapshots with
>> the same maintainer (or subset of maintainers). They are no more
>> "forks" than the stable Linux kernels maintained by Greg KH are
>> forks of Linus' kernel. I won't presume to make a statement of
>> policy regarding submitting patches against poky that aren't also
>> destined for oe-core or bitbake as well, but I personally
>> wouldn't deign to submit such a patch for fear of the wrath of
>> Purdie (and a flame or two from a certain dutchman ;-).
> 
> Yes, you the day to day developer understand the relationship
> between bitbake, oe-core and poky the distro within poky the
> repository.  To the casual or new developer it's not clear because
> it's not done with git submodules or repo or other standard
> multi-git-repos-in-a-single-dir tools.  It's just manual merge.


I agree that it's confusing to "the casual or new developer". In
particular my concern is about what it means to "build with the Yocto
Project X.Y release". When such a person goes to download a BSP, say
from the Yocto Project Downloads page or somewhere else, that BSP
should provide some statement about what it works with. The convenient
"works with" statement is "works with the Yocto Project X.Y release".
So what does that mean?

Poky has such tags and branches in the repository and there are
tarball releases which make it easy for such a person to download and
get started. I think the poky repository is valuable in this sense. It
is possible that this could be made to work with some additional
scripting in the poky setup scripts to fetch a tag of bitbake and
oe-core, but there would need to be some means of stabilizing these.
Release branches address this for stable releases, but I'm not sure
how this would be accomplished with the master branch.

Anyone have any brilliant ideas there?

> 
>>> I will again refer to the agreement between the OE community
>>> and yocto for doing the 'merge'.
>>> 
>>> If you people (all speaking personally of course) really think
>>> poky is the only way to go, then please close down and remove
>>> the oe-core and bitbake repos.
>> 
>> 
>> I see poky as collecting and integrating these projects into a 
>> known-to-work-well-together snapshot. I suppose this is similar
>> to what the Angstrom setup scripts do, except the fetching is
>> done for you in poky instead of after the fact in Angstrom. I
>> think this is a more accurate description than calling them
>> forks.
> 
> So lets be clear.  poky the repository is a collection of exiting 
> branches or tags from other projects, done as a "lets make this
> easy on new / casual users".  So why should Angstrom be forced to
> include poky the repository in it's work-flow when the exact same
> results, excluding poky the distro, can be achieved by working
> upstream?

Clear reproducible testing results. Whether or not a pair of git
clones and some tinkering can result in the same thing as a poky
repository or not isn't relevant in my opinion. I believe that we need
a consistent mode of validating support for a Yocto Project X.Y
release. Now if that is accomplished by building with the poky
repository of the same vintage or by running some script that pulls
the right bits together independently.... I honestly don't care, but I
do think it should be consistent.

Perhaps the poky repository becomes that canonical validation tool.
Perhaps not.

- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJPex69AAoJEKbMaAwKp364M0sH/1BKQQaauN1pmmuJzlPlObjp
azICDtyUaQ9ih8b580Y7ioiBQnMpMmYGG+S272dcQz65rDMS20yeahr5Q3cMdKxr
Ur04AsAwyVTU8ZUvkcOtaEAN0XzRoI5N/602uWetGlDiRdaLlQE96dMGztMjNgH9
ZUMoj2Ht+BU0BoOD0lnNCh3EtWoAsitzlX5whcUUdlzEoDeeeIm7V6iobEaSaZ2z
6E0Pg3i+CeXHl7CCaRLc20I0PwBEs48Wk2RBBANYcSxGceDOnXwbz01oUm8/0aa5
YMRiE1n6/YazxA30lU6SreqYBtWed8oozWXRwqHjsbN2/XjOO6Fg18Uxmbgcyo0=
=Am0D
-----END PGP SIGNATURE-----

