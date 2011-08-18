Return-Path: <martin.jansa@gmail.com>
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D56C3E011B7
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 06:43:21 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by bkat2 with SMTP id t2so2345373bka.35
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 06:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=GQmMwl69PIRkoR4W/dKmGVB6BIP2uJL307/KMm8hC7s=;
	b=gIACKJBRxvvt+4nSH19pdWvEwK0fPZLPPyU6IHTLPW0/+/z32DHBc513xaWEcG+2gY
	GCarp2YGgpBodEIF6AkaaJyPBQ0s11Jz++FpPAlvvWh7agrSniNHtcJVw7ARkmUXmqVu
	R2ZLWfyd+3RlNcjFS1pbJIE/HencytdWT1BuE=
Received: by 10.204.171.66 with SMTP id g2mr390855bkz.17.1313675011280;
	Thu, 18 Aug 2011 06:43:31 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id q1sm4442605faa.1.2011.08.18.06.43.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 18 Aug 2011 06:43:30 -0700 (PDT)
Date: Thu, 18 Aug 2011 15:43:22 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <20110818134322.GC6465@jama.jama.net>
References: <4E4C85B8.3000301@linux.intel.com> <4E4C90F2.7040904@windriver.com>
	<4E4C97B3.1060308@windriver.com> <4E4CA3B0.8070607@linux.intel.com>
	<4E4D149D.60704@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4E4D149D.60704@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Thu, 18 Aug 2011 13:43:22 -0000
X-Groupsio-MsgNum: 2400
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="GPJrCs/72TxItFYR"
Content-Disposition: inline

--GPJrCs/72TxItFYR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 18, 2011 at 09:33:17AM -0400, Bruce Ashfield wrote:
> On 11-08-18 01:31 AM, Darren Hart wrote:
> >
> >
> > On 08/17/2011 09:40 PM, Bruce Ashfield wrote:
> >> On 11-08-18 12:11 AM, Bruce Ashfield wrote:
> >>> On 11-08-17 11:23 PM, Darren Hart wrote:
> >>>> We have just rolled out PREFERRED_VERSION=3D"3.0+git%", and these no=
w fail
> >>>> with messages like:
> >>>>
> >>>> NOTE: preferred version 3.0+git% of linux-yocto not available (for i=
tem
> >>>> virtual/kernel)
> >>>>
> >>>> I could patch everything really quick to use 3.0.1+git%... but 3.0.2=
 was
> >>>> just released and I'd have to do it again tomorrow. For 2.6.37, the
> >
> > and 3.0.3 is out...
> >
> >>>> LINUX_VERSION remained the same across point releases. I recommend w=
e do
> >>>> the same for 3.0. I really don't want to have to go through and upda=
te
> >>>> all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
> >>>> point release comes out.
> >>>
> >>> I made this change due to some other explicit requests about the
> >>> kernel version not being obvious. I don't really see this as a big
> >>> deal, I'm already updating SRCREVs, we are already updating the
> >>> SRCREVs in the meta-* layers .. so I fail to see how this is much
> >>> more load.
> >
> > Don't forget the -rt variant, it is still at 3.0.
> >
> >>> I'd argue that 2.6.37 was a mistake, and you shouldn't even need
> >>> to set the preferred version anymore once the latest kernel works
> >>> for your machines. It will always be selected and you shouldn't
> >>> need to force it. We only needed this during the transition phase,
> >>> and I'm about to change the default in meta-yocto .. so you definitely
> >>> won't need it.
> >>
> >> Another thought on this is that we follow up on the discussion that
> >> we had when I first had to force some boards back to 2.6.37. We drop
> >> all the preferred version manipulations and control this via
> >> DEFAULT_PREFERENCE.
> >>
> >> I can just set DEFAULT_PREFERENCE =3D -1 in the linux-yocto_<ver>.bb
> >> file, and as machines are tested/validated, they'll just set
> >> the DEFAULT_PREFERENCE_$MACHINE in their recipe/bbappend file. That
> >> saves us all the PREFERRED version fun.
> >
> > It makes a lot more sense to me to specify the kernel to use in the
> > machine config and not allow whatever recipe claim DEFAULT_PREFERENCE
> > for the machines.
> >
> >>
> >> Alternatively, we go back to just setting it to 3.0 and leaving it
> >> there and those folks that don't want to check the tags in the kernel
> >> I can put a comment in the recipe that lets them know the true
> >> version.
> >
> > It is a bit odd to have to specify a version that doesn't match the
> > filename itself. But I guess we already have to do that in part with the
> > "+git%" thing. What is the "%" by the way - is it a wildcard? If so, can
> > we use a wildcard to include point releases?
>=20
> It is a wildcard .. I tried briefly to get it to match the point
> release. I had the same problem here, and didn't get the right
> combination to match the point release. I'll look at it more today
> as well .. or if someone knows the matching semantics off the top
> of their head, feel free to speak up! :)

'%' can be used only at the end and it's expected to produce only 1
match=20

like 1.0+git%

if there is only one version starting '1.0+git' and we just don't know
exact SRCPV/SRCREV used.

http://git.openembedded.org/cgit.cgi/bitbake/commit/?id=3D2d1203f446a3527e4=
d261828b3c10df249119007

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--GPJrCs/72TxItFYR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk5NFvoACgkQN1Ujt2V2gBzS0ACeIn8UdCc1oQQ5EmHEiYotAzRG
Yj4An3F2ZKcxf3wy9LZfK9Vt2uctctDs
=3XW0
-----END PGP SIGNATURE-----

--GPJrCs/72TxItFYR--
