Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id A217AE01465
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 14:42:28 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id kp1so802402pab.17
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2013 14:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=GBm4iaW9kTKMq0L6MYcEuuhfuY3DMqspEE6xCdsY9Ts=;
	b=hgbWJM0s0MgsOXRfnkIXozNdfgNFU2KZkKqNxZhDUUyyjXd55z10DRU3seCOH/v0pj
	TA4SCP2QdG4o5aIsk2HKgqTSiwB+oq72Yuzr3ISR3PWhZOrsojns7DXBU2Ssd78h1mYa
	/fijv1bciglOKLcEfrYaa4+rRNRP1394KZkLsXEYWPWQTgsb3Vi+p7lnDcRFxq4cDnII
	uiEnwUtcFSozLRZAucxQomeEdRHoNqeaFGzFWQBMoLbEOZqPN3+8MH3xjfFSQxXrf9Up
	MlOe0GWZuWcBbAyyVN3jO8AWe48f6/BBegMEiQodmB0cyhAR2/AUWjWb+qb5preImaYs
	Ym2A==
X-Received: by 10.66.229.4 with SMTP id sm4mr729877pac.114.1362696148485;
	Thu, 07 Mar 2013 14:42:28 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id ix6sm3083951pbc.17.2013.03.07.14.42.25
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 07 Mar 2013 14:42:27 -0800 (PST)
Date: Thu, 7 Mar 2013 23:42:23 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Message-ID: <20130307224223.GU32228@jama.dyndns-home.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
	<20130307182933.GS32228@jama.dyndns-home.com>
	<50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
MIME-Version: 1.0
In-Reply-To: <50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
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
X-List-Received-Date: Thu, 07 Mar 2013 22:42:28 -0000
X-Groupsio-MsgNum: 12423
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="zmbF4WfaG2f6E7cU"
Content-Disposition: inline

--zmbF4WfaG2f6E7cU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 07, 2013 at 02:29:08PM -0800, Paul D. DeRocco wrote:
> > From: Martin Jansa [mailto:martin.jansa@gmail.com]=20
> >=20
> > No, adding extra layer is pretty basic operation and should=20
> > be properly
> > documented. Can you send some pointers what have you read=20
> > about adding a
> > layer and what wasn't easy to understand?
>=20
> How to theoretically add a layer was easy enough to understand, but when =
it
> failed to work, I came to a dead end.
>=20
> I'm trying to make a basic non-GUI image based on the Atom cedartrail-nop=
vr
> machine, plus Samba, so I began with the following items in BBLAYERS:
>=20
>   meta
>   meta-yocto
>   meta-yocto-bsp
>   meta-intel
>   meta-intel/meta-cedartrail
>=20
> and I built core-image-base. That worked fine, but of course it had no Sa=
mba
> in it, nor is Samba anywhere to be found within the Yocto stuff. So I
> downloaded meta-openembedded from their GIT server, which I know from my
> Gumstix experience contains Samba in its meta-oe layer, added
> meta-openembedded/meta-oe to the end of BBLAYERS, and tried bitbaking both
> core-image-base and samba. I quickly got the following error:
>=20
>=20
> ERROR: ParseError at
> /home/pauld/yocto-atom/poky-danny-8.0/meta-openembedded/meta-oe/recipes-g=
rap
> hics/ttf-fonts/ttf.inc:12: Could not inherit file classes/fontcache.bbcla=
ss

=46rom those errors I guess you're trying to add meta-oe from master
branch which indeed is not compatible with danny release, use meta-oe
=66rom danny branch.

> (And why doesn't Yocto include Samba anyway? It seems more of a common
> standard package than a lot of the stuff I see included.)

That's why it's called oe-core. uncommon stuff should be moved to more
specific layers.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--zmbF4WfaG2f6E7cU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlE5F88ACgkQN1Ujt2V2gBxigQCeMw4YBMN0sluSew5WS2pL8I/5
8S4Amwac1TmSlq5BQbGvyRBrOhpmdF9O
=tT5c
-----END PGP SIGNATURE-----

--zmbF4WfaG2f6E7cU--
