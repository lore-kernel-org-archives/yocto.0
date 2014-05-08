Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E7DBE00B60; Thu,  8 May 2014 12:44:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2F7AE00B47
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 12:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=FVlTuKbTyov2wvkRICj5sb7k4mpaxh7MPISyi/ZRofM=; 
	b=G9qwNV1v+LrNsMAKSiLZCbesjoSx993XJCBWDKtiMO0OLG1IEDLDBkApEqI6ouRwacs0OsWICOYNMGeEfBeqCpnjBylNq88o7/YmU1yNp63vTFrx8QYq72m86yLAayj5L319YKz5D4bkLTQab1CQmINwyrH5cS/0eU2OTZ0dyGs=;
Received: from [109.224.171.0] (port=22874
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1WiUEQ-003P18-LS; Thu, 08 May 2014 20:43:52 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAE8H0+UyAJ=QMyzyEbgRd2kYe1r=FMp9gKN5et5=r-LfA5KiNg@mail.gmail.com>
Date: Thu, 8 May 2014 20:43:52 +0100
Message-Id: <6B7D3A07-6C74-486B-904E-CF33B97EB667@keylevel.com>
References: <CAE8H0+VttZYHVgAPtfTtEWS9TEJX1jC_jWRtH=gicSLkJuODWg@mail.gmail.com>
	<503552D1-6274-4FEC-AC5F-6EB0F411A58E@keylevel.com>
	<CAE8H0+UyAJ=QMyzyEbgRd2kYe1r=FMp9gKN5et5=r-LfA5KiNg@mail.gmail.com>
To: r10kindsofpeople <r10kindsofpeople@gmail.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SATO on Intel DN2800MT
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
X-List-Received-Date: Thu, 08 May 2014 19:44:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 8 May 2014, at 18:52, r10kindsofpeople <r10kindsofpeople@gmail.com> =
wrote:

> On Thu, May 8, 2014 at 12:39 PM, Chris Tapp <opensource@keylevel.com> =
wrote:
> Hi John,
>=20
> On 8 May 2014, at 16:25, r10kindsofpeople <r10kindsofpeople@gmail.com> =
wrote:
>=20
> > I'm trying to experiment with the SATO build on a DN2800MT with a =
VGA monitor, but can't seem to get going.  The binaries from Daisy and =
genericX86 get as far as the Yocto progress bar complete, and then go =
black.  Any quick hints?
>=20
> Have a look in the README file for the cedartrail BSP. At the bottom =
you will find:
>=20
> Work Around for VGA and LVDS Display issue in PVR driver
> --------------------------------------------------------
>=20
> The PVR driver has a issue that for some systems it causes
> it to incorrectly assume that a LVDS display is connected
> while infact a VGA display is connected and Vice Versa.
> If your VGA or LVDS display does not work with
> "cedartrail" MACHINE, then if you have connected a VGA display,
> add the following to the kernel command line:
>=20
> video=3DLVDS-1:d video=3DVGA-1:e
>=20
> <snip>
>=20
> I suspect it's this. Watch out if you use HDMI as well - the VGA fix =
seems to break HDMI. On my systems the VGA then works, but the HDMI =
pauses a lot running the same image! I think you can use similar magic =
for HDMI (or did I just take it out?).
>=20
> > I note also that genericX86 looks like a complete Yocto tree rather =
than just BSP layers.  Am I right, and are there hints on how to combine =
this with a generic Daisy tree for other processors/projects?
> >
> > =
Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graphics/xorg-=
xserver/xserver-xf86-config/genericx86/xorg.conf is a zero length file.  =
 ?
> >
> > John
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
> Chris Tapp
>=20
> opensource@keylevel.com
> www.keylevel.com
>=20
>=20
>=20
> Chris,
>=20
> Thanks!  What version Yocto are you using?  I ask because you suggest =
I check the README file for the cedartrail BSP, but I've been unable to =
FIND a cedartrail BSP in anything newer than Denzil, and that only by =
searching the git trees.  genericX86 is said to cover cedartrail, but it =
does seem, well, generic, with nothing particularly specific to =
cedartrail, and much more than what I'm used to in a Yocto BSP.

I'm using 'danny' as that's the latest version which includes video =
hardware acceleration for the DN2800.

>   At any rate, I'll try what you suggest in terms of the kernel =
command line.

The README says this fixes the issue for the PVR drivers, but I don't =
think they're included in later versions.

If you've still got problems, it may be worth posting to the meta-intel =
mailing list as well as that's where Intel BSPs are discussed.

> Thanks again,
>=20
> John

Chris Tapp

opensource@keylevel.com
www.keylevel.com




