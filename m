Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A0DE00B83; Tue, 27 Jun 2017 12:08:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.64 listed in list.dnswl.org]
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 247B5E00B76
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 12:08:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1498590489; bh=EjuO9p8XAgK6Yiqc20WKodHigr+oJk2FWOw8
	h6UWiGw=; h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:
	Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:
	X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP; b=S
	AqtzA8onKkBpAHRGjRCmubVWuHzNaZCAprQ8PT6nIfzzIeoXfRjr7cCx91iMNsYxm3z
	UfkHGgoHNQSsnsAGgp9v3p0iFDXD688s879tFvaXpdX3uq1Xtq01QshA0aS+qTH4D42
	iokEh4waso9Bz2RKTm6GgSAofh+c83Z5lgUI1arJMuXX6nlbrHJfMJsPgB94VnDNc/U
	OXmH8Sk7uDBjokoC9ljOvah9t7KWjy1Xs40Lz6yjCciOaMLwdVWAvNkC9fgZAFnt9eN
	1/KdoF4dy5taSBpgldtATmQixaBgVxu3q9heJ7PYBTfW6Z1zwdqaBArzI6ouY4sadEU
	dA6sSg==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=Usek6A42zK/2EmFpswc9o2jMgB4ao0+SMwP6s6GrNLtDk9fUFG3jbT/h1QBXG/wUwShd5NpJ2XKAU31915+mr0Vb+6kZUSUrWK+Q4+vkQ1CIzWpqsKhPWCh1PzVJo0NdnOXZktCgrPhLkYYqTnRlk2wp/6mHXGD+Kn0ltRQYdWGmHYX9B4+uX9MFMdpcavKFwifA5tbETT6PlApyD7Gp47e/zehfiQTiRF18fvNdG66VF5tdByNsIsVoRs6tZkM7M7Ajbd+0W6wKTVb0jiJR59jfrq/1op1ULreyOjleB+cYCYC3v6TTGb9+/u8PA5vHrAMOuV0X5QOa1jWH7/K7uw==;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1dPvqH-000Ck0-Fe; Tue, 27 Jun 2017 15:08:05 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Patrick Ohly'" <patrick.ohly@intel.com>
References: <E68186D16557413C961C4DA89EF49E84@PAULD>
	<1498550334.7464.21.camel@intel.com>
In-Reply-To: <1498550334.7464.21.camel@intel.com>
Date: Tue, 27 Jun 2017 12:08:04 -0700
Message-ID: <76B86AF8C15644E6B45FF1D6E4D85B60@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdLvG0njMC/QRGkkSo2+X1gPODooIwAXI9FQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606880fc1148b7e704421f2238daf3e8f3183350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Cc: yocto@yoctoproject.org
Subject: Re: How do you remove an IMAGEFS?
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
X-List-Received-Date: Tue, 27 Jun 2017 19:08:12 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> From: Patrick Ohly [mailto:patrick.ohly@intel.com]=20
>=20
> On Fri, 2017-06-23 at 16:21 -0700, Paul D. DeRocco wrote:
> > x86-base.inc adds "live" to IMAGE_FSTYPES. I have no need for a live
> > image, or an iso, so I thought adding IMAGE_FSTYPES_remove=20
> > =3D "live iso" to
> > my image recipe might work, but it complained in do_bootimg=20
> > that my recipe
> > "depends upon non-existent task do_image_ext4". On a hunch,=20
> > I movved the
> > IMAGE_FSTYPES_remove to before inheriting core-image,
>=20
> That's the only feasible approach at the moment. IMAGE_FSTYPES gets
> checked while inheriting the class and then triggers inheriting
> image-live.bbclass even when the "live" type gets removed later one.
>=20
> There's a patch for x86-base.inc which removes this unconditional
> extension of IMAGE_FSTYPES, see "[OE-core] [PATCH] x86-base.inc: Don't
> add live to IMAGE_FSTYPES, default instead".
>=20
> >  and then it didn't
> > complain, but it didn't build ANY images.
>=20
> You still need to set some kind of IMAGE_FSTYPES, for example "wic".

Yes, that's what I ended up doing, so it's nice to know I'm on the right =
track.

However, when I explicitly added "hddimg", I found that Syslinux was =
still configured for live image, with "boot" and "install" menu options. =
I found some code in image.bbclass that looks like it forces =
"image-live" if either "iso" or "hddimg" is included. I can of course =
hide that by setting various Syslinux options, but how do I get a plain =
hddimg that just boots up and runs, without any support for an "install" =
option in the kernel? Is that normally done with "wic" and a minimal =
.wks script?

--=20

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


