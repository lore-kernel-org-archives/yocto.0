Return-Path: <prvs=0438b0ab5b=mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD67E00D01; Fri, 22 Sep 2017 10:20:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 3950 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Sep 2017 10:20:18 PDT
Received: from out1-6.antispamcloud.com (out1-6.antispamcloud.com
	[185.201.16.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6CDFE00B1B
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 10:20:18 -0700 (PDT)
Received: from [37.74.225.130] (helo=TOP-EX01.TOPIC.LOCAL)
	by mx3.antispamcloud.com with esmtps (TLSv1:ECDHE-RSA-AES128-SHA:128)
	(Exim 4.89) (envelope-from <mike.looijmans@topicproducts.com>)
	id 1dvOVe-0001X8-U7; Fri, 22 Sep 2017 16:00:57 +0200
Received: from [192.168.80.121] (192.168.80.121) by webmail.topic.nl
	(192.168.10.102) with Microsoft SMTP Server id 14.3.224.2;
	Fri, 22 Sep 2017 16:00:49 +0200
To: Martin Jansa <martin.jansa@gmail.com>, Michael Ho <Michael.Ho@bmw-carit.de>
References: <1498816090789.97105@bmw-carit.de>
	<CA+chaQcS17v-sPc9Prhu0JTf_TNTRXBEDxnwzZ6eTFC0aYSEJw@mail.gmail.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <80532641-d9f5-c6db-15de-257bc075f88c@topic.nl>
Date: Fri, 22 Sep 2017 16:00:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CA+chaQcS17v-sPc9Prhu0JTf_TNTRXBEDxnwzZ6eTFC0aYSEJw@mail.gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
X-Originating-IP: 37.74.225.130
X-SpamExperts-Domain: topic.nl
X-SpamExperts-Username: 37.74.225.128/28
Authentication-Results: antispamcloud.com;
	auth=pass smtp.auth=37.74.225.128/28@topic.nl
X-SpamExperts-Outgoing-Class: unsure
X-SpamExperts-Outgoing-Evidence: Combined (0.28)
X-Recommended-Action: accept
X-Filter-ID: EX5BVjFpneJeBchSMxfU5oapnpt02i+Gx0UEFzMpsCrj1g3/PwYZaTCzSym8uE9HziYc+ALDjHuU
	eQwkRg2Yk/h8vMqRIkJzwfbjZMxPrNCr1UMPWgkU9h5OC54KmKfzN2ZxMLZGceNcuCISSUXF0J/H
	U+SXBcNlXxBSaehPQwbnx8yeplRO3sLIqUlSH7OGgckCJwxeR6uD1F+F/dy5JdVKCGR3hoh079d8
	W1qhRsVEU5cgoP12hYa8xiyXxAMoIRFsicyJMEhQFtD8PLoinkRi1PyeCgEXNPl7t7QJGKTAXx1T
	Dr8m4KkK9B1JwKK3XHDuw9wBfTlei3Qh9u/4watwsFhZQbiUjZEEk3KPT9E9oLDEz6cVLClJUS8A
	nGbzyicJ5tao0zCSY1mwfdVCZjLBm5p9zbBiuIm+LRuMdkh0eQD4kQEEnxu9tWRzbKnQk+EI0wKo
	w1riXHloKkD++rdtS2ZY5YZLeVribYiizeclW5enDR4aR6HUaKAawgylmCP4WV3nCh+GGC4GXSn5
	H50ymHhrmYiRSqF6A9Q9yAdaZId8pUA6RRXMGxSMRXKcASJFC/49WOPBr5nlEUI4xMIOUMJ3B1tr
	R3WfSZo3/YR10/Yykoi1m9n4LvnzuXhfa42SUNIITrrK77Vdw9h4pCVO53fcnzJ5knXHFaV6Atct
	dAVV1Rqw0xb01fsccviOlAWpIAUfYQFH5qb1QYhq1HKyjjgoE8EuoY+JHIgPKc2RkWS/IhpMbNe2
	ozFAZJx9dWFXPtM7UJ87yL0cSUYOqxxwEiTVJqDh0qKoKsXx5lldKTGuNmc3vM7Tlyafqi0mRXl1
	XG+4LbGOaOxWVV//l5Q3WRc9Fz2TobNARp9L5Qk6Ybr/niDNrurllrQAWzPoxu2GnpiRpkw2gppj
	f3Gxs3ICyTVODr0nIjuBKmR7xs+RVYKU9W9tbmVXJBqdHHDmQUObPbhYqQ985hHZ0PsIKq0yFJcp
	troaqPMG1n7V7hY=
X-Report-Abuse-To: spam@quarantine2.antispamcloud.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RFC: Backwards compatibility checking sstate-cache
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
X-List-Received-Date: Fri, 22 Sep 2017 17:20:20 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFI think this remark in the referenced link is the best summary of =
"what could=20
be improved":

"""the biggest weakness of the sstate signature bits, in my opinion, is tha=
t=20
it only tracks inputs, not outputs. If task A depends on B, and the metadat=
a=20
input to B changes, then A will be rebuilt, even if the *output* of B didn'=
t=20
change as a result of the change to its metadata."""

For example, if someone fixes a bug in gcc that only applies to MIPS, then=
=20
builds that only target an ARM machine shouldn't be affected. Much worse th=
an=20
that, I have a dependency like:
gcc -> ... -> python -> bitstream tool -> FPGA image

so this means that a change in gcc causes Python to rebuild, which causes t=
he=20
bitstream tool to be rebuilt and produce idential output, and that triggers=
 a=20
roughly 31-hour build of lots of FPGA images. These are the ones we really=
=20
want to break. A binary output compare would help a lot, even if 80% of the=
=20
libraries fail to create reproducible output, I may still be spared those 3=
1=20
hours...

I think tracking digital output is technically feasible, and won't require =
any=20
change to existing recipes.

Also think about "feed" setups. When I see my settop reporting "331 package=
s=20
need updating"... It'd be great if that could be avoided.


On 01-07-17 09:48, Martin Jansa wrote:
> I haven't tried the patches, but I really like this idea (I was suggestin=
g=20
> something like that since 2011=20
> http://permalink.gmane.org/gmane.comp.handhelds.openembedded.core/10327) =
and=20
> I'm glad you weren't discouraged attempting to do this.
>=20
> It also implements 3) b) idea from=20
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5970 , you might be=20
> interested read that ticket.
>=20
> Thanks
>=20
> On Fri, Jun 30, 2017 at 11:48 AM, Michael Ho <Michael.Ho@bmw-carit.de=20
> <mailto:Michael.Ho@bmw-carit.de>> wrote:
>=20
>     Hi, at BMW Car IT we are working on an experimental feature to improv=
e sstate
>     cache hits and we are looking for comments on the approach who might =
have some
>     insights to the problem and seeing if anyone is interested in the fea=
ture for
>     mainline.
>=20
>     The sstate-cache of a recipe is tied closely to its build dependencie=
s, as the
>     signature generated for a task includes all parent task's signatures =
as
>     part of
>     the signature information. This means that when changes occur in the =
parent
>     recipes, even if insignificant, all children recipes that have valid =
sstate
>     cache must invalidate their sstate cache objects.
>=20
>     What this patchset does is propose to add another optional variable t=
o
>     recipes,
>     CDEPENDS, which acts like DEPENDS for all RunQueue purposes but for s=
ignature
>     generation it excludes any parent tasks that come from dependencies l=
isted in
>     it. This is to break the signature change domino effect.
>=20
>     This patchset also proposes modifying RunQueue to then be able to run=
 a
>     compatibility checker during task execution phase for recipes and tas=
ks
>     that use
>     CDEPENDS and allow for deciding to re-execute a task despite being co=
vered by
>     sstate-cache.
>=20
>     The patchset is based on the jethro branch for the poky repository, a=
s this is
>     the branch that we are using.  If the general idea sounds good, we ca=
n
>     consider
>     porting it to master.
>=20
>     Included is an patch that adds an example recipe and compatibility ch=
ecker,
>     where compatibility is based on the file checksums of the parent reci=
pes
>     packages. An example recipe, cdepends-test1, generates a compatibilit=
y report
>     containing the file checksums of all files that it packages and which=
 file
>     paths
>     they are at. Another recipe, cdepends-test2, can then strip this comp=
atibility
>     report to the minimal files it needs to be consistent and can compare=
 the
>     latest
>     checksums it used to configure/compile/install with and if they have =
changed,
>     trigger a rebuild. If not, the previous version restored from sstate-=
cache is
>     used.
>=20
>     We are still experimenting with the usages of this, including the use=
 of
>     having
>     abi-compliance-checker to compare the ABI of shared libraries as a
>     compatibility
>     checker during RunQueue and using the results to avoid rebuilding chi=
ld
>     recipes
>     when the .so files they depend on are still compatible. Example use c=
ases of
>     this are allowing recipes which provide multiple shared libraries to =
change a
>     single .so file without rebuilding all its children that depend on th=
e other
>     shared libraries but not the one that changed.
>=20
>     We're aware of the SIGGEN_EXCLUDERECIPES_ABISAFE feature but feel it
>     didn't meet
>     the feature requirements of what this compatibility checker callback =
is doing,
>     although maybe when porting to master we could refactor to make bette=
r use of
>     the work already done there. The current implementation is a bit hack=
y but
>     comments would be appreciated in regards to if the concept is feasibl=
e and if
>     people are interested in making use of it and their use cases.
>=20
>     Kind regards,
>     Michael Ho
>=20
>     --
>     BMW Car IT GmbH
>     Michael Ho
>     Spezialist Entwicklung - Linux Software Integration
>     Lise-Meitner-Str. 14
>     89081 Ulm
>=20
>     Tel.: +49 731 3780 4071 <tel:%2B49%20731%203780%204071>
>     Mobil: +49 152 5498 0471 <tel:%2B49%20152%205498%200471>
>     Fax: +49-731-37804-001 <tel:%2B49-731-37804-001>
>     Mail: michael.ho@bmw-carit.de <mailto:michael.ho@bmw-carit.de>
>     Web: http://www.bmw-carit.de
>     --------------------------------------------------------
>     BMW Car IT GmbH
>     Gech=C3=A4ftsf=C3=BChrer: Kai-Uwe Balszuweit und Alexis Trolin
>     Sitz und Registergericht: M=C3=BCnchen HRB 134810
>     --------------------------------------------------------
>=20
>     --
>    =20

Kind regards,

Mike Looijmans
System Expert

TOPIC Products
Materiaalweg 4, NL-5681 RJ Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail


Visit us at the Space Tech Expo Europe (Stand E-71)
_______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>     <https://lists.yoctoproject.org/listinfo/yocto>
>=20
>=20
>=20
>=20


