Return-Path: <martin.jansa@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id C28EBE00515
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 02:40:58 -0800 (PST)
Received: by mail-pb0-f41.google.com with SMTP id um15so289650pbc.0
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 02:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=qkcUfJRmI9awSBEibdsaIG+Jg48LgGPnNCtFTA8K9W4=;
	b=vRI9Z29ZaXYHcxrkHn7R+8MDEBN5lxUOIZfCV6PMgN1EPvgLmAYiPuSXg0E4LP5ifc
	fn34QU8VFYqCsXUdBT/t/IS40sKjYSf3MzvhSluf61GWUiUrIGM7FK6Qt/OIoT7LCSwC
	QxhlvlpRklPY7gImR0JMLJzf+zskS7VJKmeXaBkiCWQwcZLJdauD3oZ9MatpRJ4Bxp27
	+pLvHyv+S5w+1KGowaoLbpRvY6rvu1gUXLpQ20XeFF+gmQnFhY3FFF+6/Rmwpgn8LL4b
	YDxbBZEtG2XXXs18surbOEd3jdrR17a1MDL7LSMmnMMm5Kz4yoboLeER9MZ7/FbldsEP
	Bq2Q==
X-Received: by 10.68.189.234 with SMTP id gl10mr25497088pbc.15.1362652858490; 
	Thu, 07 Mar 2013 02:40:58 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id kb3sm1286077pbc.21.2013.03.07.02.40.55
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 02:40:57 -0800 (PST)
Date: Thu, 7 Mar 2013 11:40:51 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20130307104051.GH32228@jama.dyndns-home.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
MIME-Version: 1.0
In-Reply-To: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 07 Mar 2013 10:40:58 -0000
X-Groupsio-MsgNum: 12384
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="v2Uk6McLiE8OV1El"
Content-Disposition: inline

--v2Uk6McLiE8OV1El
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 06, 2013 at 03:31:03PM -0800, Paul D. DeRocco wrote:
> The poky-danny-8.0 tree doesn't seem to have any Samba stuff in it. Howev=
er,
> openembedded does. My untutored, fumbling efforts to include the relevant
> part of the latter in the former haven't succeeded. Is there an easy way =
to
> do this? I just need the server, not the client.

Are you talking about openembedded as openembedded-classic or
meta-openembedded?

Use samba from meta-openembedded.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--v2Uk6McLiE8OV1El
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlE4brMACgkQN1Ujt2V2gByABgCgqCpSrXJcL9c9j31R1y2Y9e83
DIwAoKp499Bi93OxXolmMr3COq7uAOpf
=SY6f
-----END PGP SIGNATURE-----

--v2Uk6McLiE8OV1El--
