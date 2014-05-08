Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC550E00B60; Thu,  8 May 2014 14:00:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.1 DKIM_VALID_AU Message has a valid DKIM or DK
	signature from author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from a180.4uh.net (unknown [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0B8E00B47
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 14:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=3Iy1FMV/pXHKKh5IZ4thi1gJX6gRvLxX+xw9N2TThyY=; 
	b=kp7LmPZSSOViFxmrFSGWI/hon8EbHTebrz3VnGAF06bcptCW3mt41nUY2zWzRFd4+bE0vauCa5lJFn2EgBHf0vpCeqTxCrmkzIjkt1uG13a3vafzY2JxNbB2vQscXZCocmqIrxWwhSrvMS6IKh2O1yYfjxJ/uEQ4vOa2RL+Y8UQ=;
Received: from [109.224.171.0] (port=44288
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1WiVQl-003WeN-Bo; Thu, 08 May 2014 22:00:42 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <536BE50C.3000006@windriver.com>
Date: Thu, 8 May 2014 22:00:40 +0100
Message-Id: <4A753611-F3BA-41DE-9A3B-C95C26065A4A@keylevel.com>
References: <6710F7A1-6564-49CC-AE7C-1544633E5D84@keylevel.com>
	<536BE50C.3000006@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.1874)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: Does Yocto need some "LTS" releases?
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
X-List-Received-Date: Thu, 08 May 2014 21:00:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Mark,

Thanks for the comments.

On 8 May 2014, at 21:11, Mark Hatle <mark.hatle@windriver.com> wrote:

> On 5/8/14, 2:54 PM, Chris Tapp wrote:
>> I've had a few potential clients ask how security updates and general =
patches
>> are applied to embedded products built using Yocto.
>=20
> The Yocto Project, via it's contributors usually provides support for =
the -two- releases + master.
>=20
> That means effectively a one year community (best-effort) support =
model for each release.  So today that would be 1.5 and 1.6.  (Master is =
continuously developed, and I'd expect any relevant fixes to go there as =
well.)
>=20
> Note, this is all contingent upon contributions from Yocto Project =
members and the Open Embedded community at large.  Without =
contributions, there is no support.

That's true, and I've always been very impressed with the number and =
quality of the contributors to YP. It's a really good case-study to =
throw at those who say opensource doesn't work or make commercial sense =
;-)

> If they're really embedded, then the only way to to this is by =
replacing the
>> rootfs - especially when they boot read-only.
>=20
> See the million threads on "field upgrade".  There is no one answer.  =
Device upgrade, Image upgrade, package upgrade, and file upgrades are =
all possibilities... but these need to be built into the device during =
it's design.  There are no best practices available, as everyone seems =
to have different requirements.

Yes, I've followed a few of those with interest. We've moved to a model =
of using iPXE to network boot (we have a closed client-server system) a =
read-only image to make it easier (for us).

> A second complication is when support for a BSP gets dropped so later
>> versions, which generally include updates and patches, can't be used.
>=20
> If you are releasing a product, you shouldn't be expecting to migrate =
(in a product lifecycle) from YP 1.4 to YP 1.5 to YP 1.6, etc.  Each =
release is individual, and an overall target based upgrade and BSP =
obsolescence is not part of the project.  This is really the realm of =
the device manufacturer, OSV and other commercial vendors of YP =
components.

That's how I try and work, sticking with a single version of YP until a =
major version change of our application or we need to switch to =
different hardware. A bit of layer management is all that's been needed =
so far to allow me to build for different hardware.

> It feels to me as if there should be some "LTS" releases which =
developers
>> could focus on when choosing a version.
>=20
> It all comes down to contributions in the end.  If nobody is =
contributing, don't expect updates.  There has been talk over time of an =
LTS type release.  I've heard everything from extending the 1 year to =
'2' years.. or as contributions are available.
>=20
> But if you want long term support, your best bet is to find an OSV (or =
other Yocto Project participant) that is willing to do long term support =
and maintenance of a product.
>=20
> (Speaking for Wind River for a second, we do offer extended support =
for many many more years then what I would ever expect the community to =
support.  I would expect the same from our competitors.)
>=20
>> Or is there already some way of doing this that I just haven't =
spotted?
>=20
> This is where community support really transitions to commercial.  The =
community is interested in enabling new designs and 'maker' projects.  =
Commercial is interested in building products and long term support.  =
(IMHO, others might disagree.)

Basically, this all fits with my expectations / understanding. I can now =
show clients that I am talking about "the real world" (TM) and not =
simply trying to add support costs ;-)

However, I still need to work at convincing people that it's not always =
as simple as updating one package as the update can have knock-on =
effects else where - which is why a "simple" update can end up being =
very time consuming and/or costly to implement.

One option may be to convince them that it'll be cheaper to upgrade the =
hardware at the same time if the best option is to move to a newer YP =
version and it does not include the BSP that's required.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




