Return-Path: <tom.rini@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B64A3E0044D
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:49:41 -0700 (PDT)
Received: by obbuo19 with SMTP id uo19so1165221obb.35
	for <yocto@yoctoproject.org>; Fri, 30 Mar 2012 16:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:organization
	:user-agent; bh=4JfcqAjLTa0YJYo1bKntFPNaHu6X/TUSwZCs8oIheG4=;
	b=MVIZcZsHjTBuw0RQovFS2cF7kWGTrSxCbIkvNU/LtDEmYIf/Wxnmb/iT8P/4CaJPaj
	/QWClBtxuDtfWYfawmj8VGueEGcga43TPKtLWWVrJVi6Gt7w3RJv/JqoeH+/K7pjhjIV
	FuhspPCKuhA5CNgnga01GjpkkFyHxKpJUjg4dk0qmAwxGawhCMNTLaQagyN6i9viCzzC
	+fODjXnjK05CYQfsoYKMWT5tAzFqs8KD37NJT0FA9TPvmjIwCXmT7gDtsxh3+E3F8uWH
	tTxkaRg7jooiK9UxRizVX5UL4XYNiZG7NUj23SRLapzw87tM3LOwAPXeQGl/7HwKs6Ig
	vZDg==
Received: by 10.60.22.138 with SMTP id d10mr328296oef.69.1333151381255;
	Fri, 30 Mar 2012 16:49:41 -0700 (PDT)
Received: from bill-the-cat (ip68-230-54-74.ph.ph.cox.net. [68.230.54.74])
	by mx.google.com with ESMTPS id h5sm8521311oea.1.2012.03.30.16.49.39
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 30 Mar 2012 16:49:40 -0700 (PDT)
Date: Fri, 30 Mar 2012 16:49:36 -0700
From: Tom Rini <tom.rini@gmail.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Message-ID: <20120330234936.GC11451@bill-the-cat>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <CDED78A957032E45B3239CDDA7642D15084B8EC1@ORSMSX105.amr.corp.intel.com>
Organization: Texas Instruments
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 30 Mar 2012 23:49:41 -0000
X-Groupsio-MsgNum: 5703
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="BOKacYhQ+x31HxR3"
Content-Disposition: inline

--BOKacYhQ+x31HxR3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 30, 2012 at 11:06:04PM +0000, Stewart, David C wrote:

> Finally, Dr. Kooi has stated that he doesn't see YP as an upstream. In fa=
ct, many=20
> of the OSVs (like Wind River, Mentor Graphics and now ENEA - yeah!) absol=
utely
> want to use YP as their upstream. So I'm hoping we could change the defin=
ition
> of YP/Poky/Angstrom so Angstrom could us Poky as its upstream ... no? Too
> hard?

Putting on my "me, myself and I" hat and apologizing for putting words
in a few peoples mouths, I think this speaks to the heart of the problem
Koen is trying to express.  On a technical level, the goal has been
something (and I'm simplifying a bit here) to say that poky (the distro)
is an implementation of policy for oe-core.  oe-core, bitbake and N
number of other layers (meta-intel, meta-fsl-ppc, meta-ti, meta-java,
meta-oe, meta-so-on-and-so-forth) will say that this is their metadata
for release X.  Some of these layers (bitbake, oe-core, poky the distro)
are maintained by 'Yocto Project' folks like Richard.  Others are
maintained by community folks (Koen, Eric B.) or other companies
(Denys).

Now, you say "YP is an upstream".  But "Yocto Project" is an upstream
for bitbake, and for openembedded-core and for poky (the distro) and a
lot of other stuff.  However, meta-yocto (what got us going in this
direction) is only an upstream for poky (the distro), and Richard has
said it's a TODO list item to move poky (the distro) into a separate
repository and thus make meta-yocto ONLY a conglomeration of other
repositories.

It's GOOD that companies want to work with upstream, and at some high
level "Yocto Project" is where that is, in so far as bitbake,
openembedded-core, etc, get a lot of time and energy and resources of
"Yocto Project" people.  But these also get community resources too.
Koen for example DOES see "Yocto Project" as an upstream in that he
contributes to openembedded-core, etc, etc.  Angstrom also sees "Yocto
Project" as an upstream for the same reasons.  But on a technical level,
none of us would say it that way.

And this is where the confusion emanates from I believe.  You're saying
that Angstrom (the distro) should see poky (the distro) as it's
upstream.  If I was a runner, I could make an analogy you would say "but
that's silly!" and I would say "exactly!" and we'd all be on the same
page.  So can we pretend I did?

> Anyway, if we can't get to this level of interoperability, then adding An=
gstrom=20
> to the Yocto project may add too much confusion.

If someone makes a layer and it works with meta-yocto +
meta-SomeHWVendor and fails with meta-angstrom + openembedded-core +
bitbake + meta-SomeHWVendor (and you can replace meta-angstrom with
meta-arago or any other layer that provides distro policy) it's a bug,
not a feature, and not what anyone expects to happen today.

--=20
Tom

--BOKacYhQ+x31HxR3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAk92RpAACgkQdZngf2G4WwMyMgCgh39Eu5gy0kScSow72eRc6/5a
+BwAoJC82XdVBpBwZ953xrk3ggwvI58c
=UnO2
-----END PGP SIGNATURE-----

--BOKacYhQ+x31HxR3--
