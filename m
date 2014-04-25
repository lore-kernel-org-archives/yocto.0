Return-Path: <tobias.blom@techne-dev.se>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC6B5E00BBF
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 02:16:24 -0700 (PDT)
Received: by mail-lb0-f182.google.com with SMTP id l4so2929131lbv.27
	for <yocto@yoctoproject.org>; Fri, 25 Apr 2014 02:16:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:message-id:mime-version
	:subject:date:references:to:in-reply-to;
	bh=ksG8Uduxk5gXicxe7AYD8EsXk9V/Rw0VMWgj/801T/0=;
	b=XWf/5zfm0TnNPnZFRJjIK+tulhRYm1+1gLpZigKjvzUTzZhVY0Hbr/VJmEI4QZ7b6k
	SWJ3nTwnCPWZ91ChL2X+Tmp50+fVPDD51u+tdHHgp4p/DkjoLy7Lz+ziLY6W8glREuk8
	/LROi2WGSx1+1258lzJGs3TlaK8PcoZ95Lm0LQltfJICfWoE3T+gkjpbBUVnb82D/tSI
	6q5A5+3jza/jmib7ZW0AkQj/zJwMOTFot6UdD1i9O0V5ozEE8fTsu7r2je5WreCbxr97
	RbSExF26EdU6KmMVC4TxHkrUucsWPf14PrqXgXTVTnknumTSb+IHaQm/1jzrHEWEZkK9
	ZoZg==
X-Gm-Message-State: ALoCoQl+WrQ9/5AtNU+VvJFjQxHcU6l1PKEPxluskKTJhceePRHP2sQMCLjYbIDrVUufYDKyx4Cy
X-Received: by 10.112.35.202 with SMTP id k10mr4674029lbj.14.1398417382537;
	Fri, 25 Apr 2014 02:16:22 -0700 (PDT)
Received: from [192.168.4.10] ([62.63.211.71])
	by mx.google.com with ESMTPSA id ms3sm7483301lbb.17.2014.04.25.02.16.21
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 25 Apr 2014 02:16:21 -0700 (PDT)
From: Tobias Blom <tobias.blom@techne-dev.se>
Message-Id: <B5D983FF-3763-41F5-ADD7-E56C1CA5B697@techne-dev.se>
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
Date: Fri, 25 Apr 2014 11:16:20 +0200
References: <9E5EB55B-A539-4A2C-AD5C-719137E4C1C9@techne-dev.se>
To: yocto@yoctoproject.org
In-Reply-To: <9E5EB55B-A539-4A2C-AD5C-719137E4C1C9@techne-dev.se>
X-Mailer: Apple Mail (2.1874)
Subject: Re: Modify RFS before final image is created
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
X-List-Received-Date: Fri, 25 Apr 2014 09:16:25 -0000
X-Groupsio-MsgNum: 19212
Content-Type: multipart/signed;
	boundary="Apple-Mail=_693EF74F-9DF7-4053-9C8E-EAFF9B5DE569";
	protocol="application/pgp-signature"; micalg=pgp-sha512

--Apple-Mail=_693EF74F-9DF7-4053-9C8E-EAFF9B5DE569
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

Hi all,

I=92ll answer my own question. It seem ROOTFS_POSTPROCESS_COMMAND or =
ROOTFS_POSTINSTALL_COMMAND is the way to go.

I did however run into a problem when running my script. Using variable =
${D} in my ROOTFS_POSTINSTALL_COMMAND gives the =93wrong=94 path - it =
points to =85/image and I=92d expect it to contain the path to =85/rootfs.=
 It seem the variable is replaced before my function is executed.

I solved this by using variable ${IMAGE_ROOTFS} instead.

/Toby

On 25 apr 2014, at 09:22, Tobias Blom <tobias.blom@techne-dev.se> wrote:

> Hi all,
>=20
> I have run into a problem that I=92m not able to figure out how to =
solve, and turn to the list to ask for general directions.
>=20
> I need to modify my root FS just before the final image is created. =
The problem is that I do now know where to implement my code.
>=20
> More specific, I want to copy a couple of RPM-packages to the final =
RFS, packages that have just been installed. The reason is to be able to =
perform a rollback later on.
>=20
> Any help and general pointing in the right direction would be much =
appreciated.
>=20
> Kind regards,
> Toby


--Apple-Mail=_693EF74F-9DF7-4053-9C8E-EAFF9B5DE569
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQEcBAEBCgAGBQJTWifkAAoJEBL2XAZ72QZbnpsH/j5N234m/V9KeDFu3ytDPfsN
r3c5WMBSp4LDhZGt+Fbhgo/fyAURKpslXcs6mZhp1sgnY/BKwcemOU2mylHXbADe
yE05e34yqBkdXrx8gtJxOpGYavYqzfZ4TOizMPnB4+HMn46uBkuyUU1oCSLzndQy
KwyCQMLFPtPA7en4QWNk0XTuZpED25pO75Kt2XpX19213EcsjpVBjYwAk/z3UtJF
1IijD/wWiZTSeAJHxxRDQQAmDOe4CAb25oQKzvdIY+Y3aziv/Tep5wGe++covZOm
Muskue2DZlhYFUS1XZd7h5v2lg5jP7y369ypM/cT4zZEz916KWDGQR5lR0YqV00=
=UtlD
-----END PGP SIGNATURE-----

--Apple-Mail=_693EF74F-9DF7-4053-9C8E-EAFF9B5DE569--
