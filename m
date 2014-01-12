Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D2B3E00832
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 05:38:43 -0800 (PST)
Received: by mail-ee0-f47.google.com with SMTP id e51so2235611eek.6
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 05:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=O+si3IA9bboL7ByaeQWarnWnL1+5XquuiDroAzNRoxY=;
	b=LOD9pytvBtV6QBySO9TG3knmfQnod6VVRpiQyAAsYCgD00tVVR8cIoTjyK58y2mxWA
	U6aHdeRZMcwp+d4waw3tnlOlsj5tWP/a6CKGi+miERcAoztO72fsr1txYL1Pj8VlPWs0
	8IVuFjyFPFbYOwkOqpKyILL5qNm7AxOHby5kw/t4jpq6Aj0RipO8hXUvrLn5UiRn0Vnm
	2R/VDtRzFWHh26NaiXAKIrHRUPxf+yDI+cPvXyHzzswZrQkELDXxy0ZTk1jglEYrHAff
	a+UvnMEIfaKbC20PN5lqrF7Xkhfyc0PO4j2SrgbDtupC/fSSNETuX77U4PD3qbmzHjc7
	0dCg==
X-Received: by 10.15.43.10 with SMTP id w10mr21817307eev.13.1389533922537;
	Sun, 12 Jan 2014 05:38:42 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id l4sm31133400een.13.2014.01.12.05.38.41
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 12 Jan 2014 05:38:41 -0800 (PST)
Date: Sun, 12 Jan 2014 14:38:57 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: =?iso-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
Message-ID: <20140112133857.GE16995@jama>
References: <2423322.zFb14inlks@koontz>
MIME-Version: 1.0
In-Reply-To: <2423322.zFb14inlks@koontz>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: Constant linux-yocto rebuild
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
X-List-Received-Date: Sun, 12 Jan 2014 13:38:44 -0000
X-Groupsio-MsgNum: 17752
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xA/XKXTdy9G3iaIz"
Content-Disposition: inline

--xA/XKXTdy9G3iaIz
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jan 12, 2014 at 02:19:51PM +0100, S=F8ren Holm wrote:
> Hi
>=20
> I'm having a weird issue with dora. After having rebuild everything from=
=20
> scratch I usually rebuild some of my own applications and rebuild the ima=
ge=20
> recipe to create the image. This all works great. But then after some num=
ber=20
> of rebuild linux-yoc suddenly gets rebuild every time. Even two consequti=
ve=20
> builds of my image recipe give me two linux-yocto rebuild.
>=20
> Any hint on what might happen or what I can do to debug it?

You need patch 3 and 4 from
http://lists.openembedded.org/pipermail/openembedded-core/2014-January/0880=
74.html

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--xA/XKXTdy9G3iaIz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLSmvEACgkQN1Ujt2V2gBwohQCgmjdd4SdSUGakJSOmC4VJiwSa
ZZUAoKcf1xz3mlnb9YEl4RrxbZNAMbnw
=TnvN
-----END PGP SIGNATURE-----

--xA/XKXTdy9G3iaIz--
