Return-Path: <rudolf.streif@ibeeto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78BF8E00D75; Wed, 31 Jul 2019 17:10:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47CB2E00BEB
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 17:10:10 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id y8so31194260plr.12
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 17:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=IANrutZDsEcrjxgi11GjM44hgrvAaaKE6zd0bB8fuPg=;
	b=iT3+l5JxVXR6xECNtd/Ip4cocxGBtXjWuyEFtlx6WEVOKxWyuUmBc7l0qiONyhn/2G
	6LRQfBRyC9uLBTk3rqt7/lvuL0X+r6z3E6kk9QFkpKQRVikEtkqZ4VQSSzE9ik4iG3Sr
	DFJXSmAy7S+GZ0IsNeoBgjL5PW0WZmcjJddSKbMSoF6ujzLnOvQyzdlPubsJ1JvciG5B
	UD4lvxjdk9hHCoSf6Jb+JKfJ8bKURY0J8r9MzxIEItQwsDa8AqNK/GvYQWJ66sJZ+YId
	mVrQri/V0bdjsUL/mgykaKTPF3L/ZfulqgLYI2ojuJZTk6zWajbD5hHonaAhR7xTNkck
	whmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=IANrutZDsEcrjxgi11GjM44hgrvAaaKE6zd0bB8fuPg=;
	b=dyRDbVRiDWbb/9a+V1Or7BNEhM0T6Yolh6UXwEcYF+1IfO/TMGvpbh2p4BO8EMXSCh
	egq8djs3iIj6pAIyjSN2dE8GgK29ZKwfQhfFdKo9OSXulnkBxJScn+CRYW8I18GiHg9g
	GXdRT+1KRN2ufojjnw//4+RS8bl6OO1Uve+fhkZ9KKmqY/OG+V4w5klX248Bj+pMHBES
	AqisehnV6yFVx0PsKbZPRRdY2pOhl31nIA2jMYY+r2Cu6fIsH42WrZpcCDFO/58Pi+lB
	AzT11PR+PitEYiOCUlhLOt2F4n/2H+wNUI+conpnRZ3lOWvnVBL0+0LzpvqQt7bumP/U
	WR2g==
X-Gm-Message-State: APjAAAVNNqnRlEjNGBVjJsMm6zrl8k9oEWghUvukqHrKk/774efRfdKk
	pz4CLPohYmWhxyJ7TdQR6EtVpMFZ
X-Google-Smtp-Source: APXvYqyixFT+gvY6pmRxyBSHlBvRLM7GBZk1OCsuFA40ZPha6/TTASZbvghRvcuZdZov2VbiWmMSMg==
X-Received: by 2002:a17:902:f095:: with SMTP id
	go21mr125169985plb.58.1564618209834; 
	Wed, 31 Jul 2019 17:10:09 -0700 (PDT)
Received: from rjs-zotac.ibeeto.com (ip68-7-84-58.sd.sd.cox.net. [68.7.84.58])
	by smtp.gmail.com with ESMTPSA id
	l44sm2890765pje.29.2019.07.31.17.10.07
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 31 Jul 2019 17:10:08 -0700 (PDT)
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
References: <CAA=hcWR8QPjhCKJV-Ex1fxrizn1sa8eDEo8HXawVEZaTBkjovg@mail.gmail.com>
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@ibeeto.com; keydata=
	mQENBFhQFAQBCACa5/X8dcYC25ELsL2exFTaf9QV24fFIn64+rXFqDNKuk7xed5kafscejvD
	Qpe+Co1EPSU4ybklzYlvbMvzxKfwLDADKh+HsqmUYrd/l43hbqrPLxfDUhg87WVEhjm0qyYQ
	/Qymy+7Cbh+pVNNlHULUQttkXPl3D+UOMz9se0Ook/HngDIOCyQF4rTyPnGNvd8NJmAng969
	cQD/S9LNndnK5GGrmDDOuMYwoG4qDqWvWEChncgqHfmWK/Z1AvYKdYWe9uh1N4Qb/P5AZxTM
	3sPiHrF+Y2HTdK7j7lWgtu8YzluBHdvzhC+4jUnAKjh8P/N/H6JlE3UC3dwHPOaRsnXBABEB
	AAG0KlJ1ZG9sZiBKIFN0cmVpZiA8cnVkb2xmLnN0cmVpZkBpYmVldG8uY29tPokBNwQTAQgA
	IQUCWFAUBAIbAwULCQgHAgYVCAkKCwIEFgIDAQIeAQIXgAAKCRCNjKgpJzObdabzB/4lFMf0
	3GsVMG6C5QOLaPx6rOgj5qexCH3rfYeI3xkbGuR0a+YByzvSiCc6Ukh7YNn4UwRs6cY0fYBk
	txioE384/51QTIfCmW8ZG5X0cMC5d38LFvd/dj3KBA74HW4GoLt0cIyzy38CCOFmClTNE8xl
	lpeOfKQD3wn99w5dzXYhvajXCWwAjjpWrR84ww6xromQCDj0AubLA6xyk3t8bzFNsRCCFx+w
	Xl7keSggn6ld3f3ySIQyEK2GgZDdw+zQmgVMq4x5LZhUhGYoqbYwNy9imoBkUAZkbbViNOtX
	zaTHX/RzRHErvq56HOVqceJZIpkDnfvB1aXvfvmBhjVLmLHvuQENBFhQFAQBCADXoLKCuF48
	5eCWhnty44o9IZJuOSiX+uVJTgVGNWkZOF61Hs2pieIOmTqk3fb9+Ao6C6IliC9ZRXyAVLD/
	RSGoLiTnWLc1uaK4P/XCM3HZfsi9ueBuNufR8yMy8/8ZqbFwRIFpPBpxHRrZnDdEd5IKsy+z
	w6QChvhpmssZy+UaKfWHILroAoS/7bKGzHo5F/dEJhxVDjgxDUDspJSHWMBh0OMKDeBik5wl
	svtV2yw7ezwWJLRsbaa8TUXd79ZJYYc3FIi0K5aXkMySh+QaQ/bE2Y5A/mCBCZ+IKhBQR36v
	tUAsTCuUAOREwSdPDVwfuoI5gfVxGyz/zrERfnXF4viHABEBAAGJAR8EGAEIAAkFAlhQFAQC
	GwwACgkQjYyoKSczm3W3fgf+NSdojthWWEqfWwym3VHK8955SeOy12xQA4ird2Ca2LYUpLNj
	s4qVFEqXSXZk4rmpGCFlMWwOjcCJOXJLR0ATfmWlvZxp1QL4res/R+SPFEyheu7TTpJ9MbyE
	fxaMSn2xRMA1V2KVJSfDoMacImVRchFclaNU31cEu6tEnNRwVcsWdTlGdA5a1ASGl4CiP8Tz
	Yf9m2KOWGjOmVgGFcIJ2QfIlMglU875YHE3W4u3YOWwUbPEr2Seyb176MvO74CUL/Nlouvce
	P41tsC5daxZnrLBQ3nw4xe4RJSzdPPkY7iF0N5R9NvBJ7WX3dwjMO4EMvdlFuNCQ2ALli/AN
	ROZj4g==
Message-ID: <3cbd7b9c-5040-a9e6-0100-7453e399e067@ibeeto.com>
Date: Wed, 31 Jul 2019 17:10:06 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <CAA=hcWR8QPjhCKJV-Ex1fxrizn1sa8eDEo8HXawVEZaTBkjovg@mail.gmail.com>
Subject: Re: Yocto build failed to include service file in /deplogy/images/image.wic.gz
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
X-List-Received-Date: Thu, 01 Aug 2019 00:10:12 -0000
X-Groupsio-MsgNum: 46143
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="GXVKwOzWNuNLXZyzmuV2hgpz06HE8dfRb"

--GXVKwOzWNuNLXZyzmuV2hgpz06HE8dfRb
Content-Type: multipart/mixed; boundary="l74t3lJwVOPZ9y2bo1K5MCQPYD97BRkEv";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@ibeeto.com>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <3cbd7b9c-5040-a9e6-0100-7453e399e067@ibeeto.com>
Subject: Re: [yocto] Yocto build failed to include service file in
 /deplogy/images/image.wic.gz
References: <CAA=hcWR8QPjhCKJV-Ex1fxrizn1sa8eDEo8HXawVEZaTBkjovg@mail.gmail.com>
In-Reply-To: <CAA=hcWR8QPjhCKJV-Ex1fxrizn1sa8eDEo8HXawVEZaTBkjovg@mail.gmail.com>

--l74t3lJwVOPZ9y2bo1K5MCQPYD97BRkEv
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

JH,

To enable systemd service for your application your=C2=A0 recipe needs to=

inherit the systemd class and install the service file in the proper
directory. Here is what it should look like:

inherit systemd

SYSTEMD_SERVICE_${PN} =3D "my-app.service"
SYSTEMD_AUTO_ENABLE =3D "enable"

do_install_append () {
=C2=A0=C2=A0=C2=A0 install -d ${D}${systemd_system_unitdir}
=C2=A0=C2=A0=C2=A0 install -m 0644 ${S}/my-app.service ${D}${systemd_syst=
em_unitdir}
}

SYSTEMD_AUTO_ENABLE =3D "enable" is not strictly required as it is the
default. If you don't want to enable your service by default set the
variable to "disable".

:rjs

On 7/31/19 4:04 PM, JH wrote:
> HI,
>
> I have been struggling to find a fix for missing service file, I found
> another solution posted from the Internet to use FILES_${PN} +=3D
> "${systemd_system_unitdir}/dl-mgr.service" at the end of the bb file:
>
> install -d ${D}${systemd_system_unitdir}
> install -m 0644 ${WORKDIR}/dl-mgr.service ${D}${systemd_system_unitdir}=

>
> As well as this to the end of the .bb file
>
> FILES_${PN} +=3D "${libexecdir}/dl-mgr.sh"
> FILES_${PN} +=3D "${systemd_system_unitdir}/dl-mgr.service"
>
> But I could not build it "unprased line FILES_${PN} +=3D
> "${systemd_system_unitdir}/dl-mgr.service", could anyone help please?
>
> Thank you.
>
> Kind regards,
>
> - JH

--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3396 x700



--l74t3lJwVOPZ9y2bo1K5MCQPYD97BRkEv--

--GXVKwOzWNuNLXZyzmuV2hgpz06HE8dfRb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEVg4uKeQrdCNuC2kVjYyoKSczm3UFAl1CLd4ACgkQjYyoKScz
m3VX/gf/fN1ghVY8X2M6CLyhDDC+0Zct5qG3Lvf47r+hMBl6JfZ/GTtIlUcTydp3
whyX6/Adeucg0z4pnP7agngicBS7gf+Ho84vDMn4RgTwv7kU8l3fj5K4jArm+a9Q
0iOGVTEk01rf/45LocetUxrzS0qABzXXJDisQmSzKpPwXpEKprfp29wFyR8KN+Bo
QrXtP5l/qbTnJU8wyMmiJM6JfRjgl1CWyUuHA06aW7IpxKc8l+gqG1TG1mfSU4Nf
eVHy+9XUu/vSciG+F9FDQ807YhiCfM4fWeYRye2s39RBp4QgQCVZ9g79SIpqOIkm
ljDvorBED2cITZpvuiOkaJhgP7HMgQ==
=N+O/
-----END PGP SIGNATURE-----

--GXVKwOzWNuNLXZyzmuV2hgpz06HE8dfRb--
