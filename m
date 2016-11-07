Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CF7DE00C25; Sun,  6 Nov 2016 22:10:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D0B4E006C7
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 22:10:55 -0800 (PST)
Received: by mail-pf0-f173.google.com with SMTP id 189so86102808pfz.3
	for <yocto@yoctoproject.org>; Sun, 06 Nov 2016 22:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=F6m7eDYo3C2tyRhzrGT1VhdAP3EJMRTJ9w4MOKmq9N0=;
	b=kK6j5tyxmh4LO2geC8nnsq4f0WyaeEdKXj2G6BBJbZoK1vA+HtitUBpDy/ubUVDMxG
	lpoWoK5yxJyITWU2nUtMSDDQM1f1KcC/nzTPxWmtG3TfXGKSg1T8cfEN2I66EFaiQ5oA
	lAo/Iu/bBGZyVRk2mD3JqTmx9HHL/i4qKrTidne3aITqPhNZTnvsla4+k7oPcfNEZ3qp
	pc0I6RZyc8kT7iYilbcmjBF7YLwmwn+z8HAYiTZaSYwtJwHj4hVgisWc29rFUiCSQmzA
	e0n1nDHgLylluDQTpUQrDM4MA5IYJOLUNWXOGjj5M26BakVyOgj3LhHzMBClxxeX7gbl
	S2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=F6m7eDYo3C2tyRhzrGT1VhdAP3EJMRTJ9w4MOKmq9N0=;
	b=LarcKhL09tdTYjtoHKFFvZ4uNi2YUq3PXWnWyavz3QAAsUXkawFWhwv/W3khFlAE7M
	2U9taGSxY/zK23oSx4Ai5TK561qwLPZk5GA/gQccD7FwQ8cAt6StJWMaQp3lYlnIPFm4
	s+oZAIt0QBNqGdRkA1vVsvTQ8D8vIXaH0spjNRkmskevZ/ZeWHTYXanLzOl2earmlAft
	869d4YLjeDUNwDxF/6N7cwRo4ZrhlcbVSdWkbyBYaNaQhpgU06pZM47Zzuo/46EOylRu
	0RL/r1CN6G3gCaXfe2ZwD4v1b9IBcXAVMGptOeItu6alYsFh7zQpUtYF6ET8ChfFGlt1
	MLVg==
X-Gm-Message-State: ABUngveQsJId8vo43mm+EgzjP/xqv/g/4xrqXrqgttN/QvrRuoGaMIcMI8VhMWyNCD+AVw==
X-Received: by 10.98.14.197 with SMTP id 66mr10499012pfo.123.1478499055316;
	Sun, 06 Nov 2016 22:10:55 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:c539:1af8:77b0:6537])
	by smtp.gmail.com with ESMTPSA id
	n7sm36818405pfn.62.2016.11.06.22.10.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 06 Nov 2016 22:10:54 -0800 (PST)
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <F38A866CD026F746A3BF0928A84397BE3E7E956A@AZ-FFEXMB01.global.avaya.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <115636bc-cef6-5b05-7e3d-552c2f3f879f@gmail.com>
Date: Sun, 6 Nov 2016 22:10:48 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7E956A@AZ-FFEXMB01.global.avaya.com>
Subject: Re: How to build a recipe having two versions
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
X-List-Received-Date: Mon, 07 Nov 2016 06:10:59 -0000
X-Groupsio-MsgNum: 32886
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="TGtuiQ4m98KkcQqepnosAcCbUxoESiFwQ"

--TGtuiQ4m98KkcQqepnosAcCbUxoESiFwQ
Content-Type: multipart/mixed; boundary="DUBfKcj9CDO3374421rTLiEAsLJI08rcO";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <115636bc-cef6-5b05-7e3d-552c2f3f879f@gmail.com>
Subject: Re: [yocto] How to build a recipe having two versions
References: <F38A866CD026F746A3BF0928A84397BE3E7E956A@AZ-FFEXMB01.global.avaya.com>
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7E956A@AZ-FFEXMB01.global.avaya.com>

--DUBfKcj9CDO3374421rTLiEAsLJI08rcO
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 11/6/16 9:53 PM, Bipnesh, Abhinav (Abhinav) wrote:
> Hi,
>=20
> =20
>=20
> I was looking into a way to build an recipe which has two version files=
=2E For
> the xerces-c we have two version of files. Below is the list of the sam=
e
>=20
> ./customlayer/xerces-c/xerces-c_2.8.0.bb
>=20
> ./meta-openembedded/meta-oe/recipes-devtools/xerces-c/xerces-c_3.1.2.bb=

>=20
> =20
>=20
> Now as the code we are using need to use xerces-c_2.8.0.bb and not the
> xerces_3.1.2.bb files. So when we try to fire command as bitbake xerces=
-c it
> always tries to build 3.1.2 and not 2.8.0 files. So is there a way we c=
an
> explicitly call the older version file for building instead of the new =
version.

you can pin versions of packages e.g. using PREFERERRED_VERSION_xerces =3D=

"2.8.0" in local.conf also read the relevant section in manual

https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user=
-manual.html#var-PREFERRED_VERSION

>=20
> =20
>=20
> Please let me know if you need more information.
>=20
> =20
>=20
> Thanks,
>=20
> Abhinav
>=20
>=20
>=20


--DUBfKcj9CDO3374421rTLiEAsLJI08rcO--

--TGtuiQ4m98KkcQqepnosAcCbUxoESiFwQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlggGuwACgkQuwUzVZGdMxTdlwCfTuSQHIeuddzjaHd+1KTiMilZ
3QsAoJFMzzEWpo9b+MmIx/CUJpb/odm1
=6GxQ
-----END PGP SIGNATURE-----

--TGtuiQ4m98KkcQqepnosAcCbUxoESiFwQ--
