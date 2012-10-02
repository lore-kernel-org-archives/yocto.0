Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9596E011C0
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 15:20:46 -0700 (PDT)
Received: by wibhm2 with SMTP id hm2so1249289wib.11
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 15:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=3N6+X/8nh5z3/MpFQb6mWPxsJCz7mPA2YsWoJFFVrI8=;
	b=zu01+SaFQFPPpP1J+dOzwtTQDEIqa6gfwg5VKA0ymjz6OlafCWuttMdsKXmgWGVR7W
	lk+DgSin/QxQJkv94JbAE8XpJXZ+/q+7x0IDZBKLZIGOsBOGPF/UMrgOrkv4fWa4J7RD
	eDaWP/1JIA8cTv+WfQPqOOnkMwAvqMHand5HjJwMzlCmI0z/gTXowx8OX1jV8Q7NfSNL
	axklM3Pk2gNyNbYzlacjxtDWEjVOIOALOZCpmsrmd5tBxennj9XbGwUyyvBriEY85B7e
	7RGlUntLr0fQVkWE2AqGG637zG96qFZkUpE193mbl73TyzL+dXJXmJ4St2ilCyWWrWS0
	z9ZA==
Received: by 10.180.105.6 with SMTP id gi6mr429025wib.4.1349216443900;
	Tue, 02 Oct 2012 15:20:43 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id l6sm23659303wiz.4.2012.10.02.15.20.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 02 Oct 2012 15:20:42 -0700 (PDT)
Date: Wed, 3 Oct 2012 00:20:37 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Scott Garman <scott.a.garman@intel.com>
Message-ID: <20121002222037.GH15881@jama.jama.net>
References: <CAMAb8ZO1-psKwMhPNrVXroo-jEO37WpigX7xC0VYavTioo6PEg@mail.gmail.com>
	<506B660F.7060008@intel.com>
MIME-Version: 1.0
In-Reply-To: <506B660F.7060008@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Can't fetch git SRC_URI via HTTP
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
X-List-Received-Date: Tue, 02 Oct 2012 22:20:47 -0000
X-Groupsio-MsgNum: 9763
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LZFKeWUZP29EKQNE"
Content-Disposition: inline

--LZFKeWUZP29EKQNE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 02, 2012 at 03:09:19PM -0700, Scott Garman wrote:
> On 10/02/2012 02:17 PM, Evade Flow wrote:
> > I'm trying to build core-image-sato for my Pandaboard ES, following the
> > instructions posted here:
> >
> >    - http://maniacbug.wordpress.com/2012/08/03/pandayocto/
> >
> > Thus, my OE build configuration looks like this:
>=20
> I just would like to comment that this is one of the best requests for=20
> help I've seen on this mailing list. Kudos for including all the=20
> relevant information!

Well except that important part, that he has changed git:// to http://
in SRC_URI..

It would be even easier to help him if he says only:
"I've changed git:// to http:// in SRC_URI and now bitbake cannot fetch
it anymore" :)

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--LZFKeWUZP29EKQNE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlBraLUACgkQN1Ujt2V2gBx4mQCeL3wl6ztiVrhrCwdkKfUrJmN2
Q6cAoJ69snSI0OjyC/LD/HUF7uJAXfjA
=yWEy
-----END PGP SIGNATURE-----

--LZFKeWUZP29EKQNE--
