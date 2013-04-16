Return-Path: <martin.jansa@gmail.com>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 503F1E01469
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 14:06:19 -0700 (PDT)
Received: by mail-pd0-f180.google.com with SMTP id q11so495708pdj.11
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 14:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=uVKoNp5p10p4umLQbiGJcX3/RYwm3NYBwUHYLnW12m8=;
	b=Xx7FVfki/RjgESy5kZLY6lHYcCD9FQLFvl92kWfHOjDwESmglrTm9cg3LRueGr61zl
	qbXwvFjn59e3SZ6jBavA3qHkKAYZ09IvhryuxgbmVXymjTCXiMa5IVVd13IdOMYeWGlG
	8e3Se8sXm7s8TUR1HOd0G0DeMphOrlLpt+18H2eIwVBlvHWmqvzTrL+nfuMhV0YZYYWs
	oJV9RX1Wg4i5E9PE1hcRPrVQSxYv/Y9k2A7fzhi4frOZTKDpbdBySxB+uLOUAykeg6D4
	G0Lzp+gunPCO7UJNI8yI7IDsRXvoxjcaHZakY5KOZCQvHwq+SSrSkurGB/UnN4/l3B4Z
	6UhA==
X-Received: by 10.66.14.1 with SMTP id l1mr5319625pac.150.1366146379089;
	Tue, 16 Apr 2013 14:06:19 -0700 (PDT)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id j13sm4035185pat.17.2013.04.16.14.06.15
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 16 Apr 2013 14:06:17 -0700 (PDT)
Date: Tue, 16 Apr 2013 23:06:16 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Message-ID: <20130416210616.GC29302@jama.dyndns-home.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
	<20130416195422.GU10628@jama.dyndns-home.com>
	<CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwz6nxuc1SP_5hw-4E_u6of1f-XvFROKVfO3vxXkT1_zx4Pyg@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 21:06:19 -0000
X-Groupsio-MsgNum: 13202
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5gxpn/Q6ypwruk0T"
Content-Disposition: inline

--5gxpn/Q6ypwruk0T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2013 at 02:40:21PM -0600, Edward Vidal wrote:
> Can you point me to where I can find
>=20
> gnuradio is already in meta-oe and jenkins is building it every day with
> it :).
> I did a search meta-oe jenkins nothing seems to come up I have seen
> meta-gnurado as part 0f Angstrom.  I believe that is for the processor
> in the ettus research board.

I meant this:
http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connecti=
vity/gnuradio/gnuradio_git.bb
not sure what you're looking for.

> On Tue, Apr 16, 2013 at 1:54 PM, Martin Jansa <martin.jansa@gmail.com>wro=
te:
>=20
> > On Tue, Apr 16, 2013 at 01:49:13PM -0600, Edward Vidal wrote:
> > > With that said how does Angstrom which uses opkg upgrades images that=
 are
> > > build with Angstrom.   I prefer Yocto but I had some pre-built image =
that
> >
> > The same mechanism as Ross and Trevor said.
> >
> > > came with my beagleboard and I used opkg upgrade  and opkg install
> > > gfortran.   Also has anyone built gfortran, libgfortran, and numpy?
> > > Currently these are some dependencies that I need for GNURADIO?
> > > Thanks Any and all help is appreciated
> > > Ed
> >
> > gnuradio is already in meta-oe and jenkins is building it every day with
> > it :).
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--5gxpn/Q6ypwruk0T
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlFtvUgACgkQN1Ujt2V2gByT4gCfQGakUTQYn+xEnq3OBHeiSOur
tGwAn3j/FN/ULYSoFOAxeArbpUekEL9A
=lyTH
-----END PGP SIGNATURE-----

--5gxpn/Q6ypwruk0T--
