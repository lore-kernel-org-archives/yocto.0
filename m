Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0C1BE0094C; Tue, 14 Mar 2017 09:39:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f42.google.com (mail-pg0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E170FE00724
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 09:39:46 -0700 (PDT)
Received: by mail-pg0-f42.google.com with SMTP id 77so92968242pgc.1
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 09:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=1/WE5nC+XKKuT2meK6i0OBPLrXPMJYnMzRXgQlYcBPU=;
	b=eTVTK2f3sJnimq8Qj5ifIKOrBIIS1Wj1HJg2feWBvPgaEbGfGqD9GnZgTCEb6GaWqg
	Tj8+8eYbp7WBcnnORlR0A/SI52zEWKIy/k+SD74/f8o3yiXd5mvrUE3m8CbchUVjiwJu
	uhx74McD8ke1XMfwZMYnJ+ieyp8jiEsD5iKFyMpSp2p3qfwSQJxXtXFTVP7oHtJvCjRJ
	GRMqHR4zZaciGdY5d3T9o0WVeES0EisYcGvv46igQnXfb8NIpRCayJfCjkUuhfmEN8BH
	G9G8GQhKbskjwCo2kT8lq88oNoZEJVSGxcd3s89YKRIgthrXUD8sjKUPO1bhQK1PLTQQ
	vATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=1/WE5nC+XKKuT2meK6i0OBPLrXPMJYnMzRXgQlYcBPU=;
	b=Xyn+Qt9tFwhN/0ErRS9rtj18IFFq2nw0F4G6OrAT6+KTw+KqR9fD8oROsxTH1SdwAx
	O+StRdOJM9OA2e59nVoEqGGxzAxk0Pz6cLvz8A9LGOFcjViEJ4qOEoTUfnNDRjzDFJAO
	yct5vHjhE4okDNMux2nIZpzJADi1HraH3soivZPaHwphpFwnpD1XNv3atXoAdu872Ra4
	qNtYcIpbUD6iCjLRnHVlqvfebFCO2S+PpkopaZ7EeMMoY/3wBMF7fAvkV4/szz2SdC7D
	XeVBZGMJpW9iR981sMU9kmjecaVBj/ezAYP+di9xDFKztgp6vI+uqSeYrX0lwQ/tiaa2
	/wXA==
X-Gm-Message-State: AMke39lb/vxXI/oLAQGwWJk8hHD01QXSixJhMgOynzSJ3aKrqynLx1iSZvoi/XAMLo031A==
X-Received: by 10.98.80.93 with SMTP id e90mr44860007pfb.7.1489509585610;
	Tue, 14 Mar 2017 09:39:45 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:18ae:f8ee:7d8b:705c])
	by smtp.gmail.com with ESMTPSA id
	e68sm39522110pfa.85.2017.03.14.09.39.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Mar 2017 09:39:44 -0700 (PDT)
To: Fabio Emiliani <fabio.emiliani@artgroup-spa.com>, yocto@yoctoproject.org
References: <91899dc0-59a7-29e4-79bb-48af94b68437@artgroup-spa.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <28663559-f42a-71f3-a9ca-d9cbee5267c3@gmail.com>
Date: Tue, 14 Mar 2017 09:39:38 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <91899dc0-59a7-29e4-79bb-48af94b68437@artgroup-spa.com>
Subject: Re: Why generated locales does not have .UTF-8 suffix?
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
X-List-Received-Date: Tue, 14 Mar 2017 16:39:50 -0000
X-Groupsio-MsgNum: 35050
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="D3pItIoxq5FoBKaBP35lpTFhoWBOg9psv"

--D3pItIoxq5FoBKaBP35lpTFhoWBOg9psv
Content-Type: multipart/mixed; boundary="nFW1hFFq2VApXapdAa9vd82ka5xB94Gpt";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Fabio Emiliani <fabio.emiliani@artgroup-spa.com>, yocto@yoctoproject.org
Message-ID: <28663559-f42a-71f3-a9ca-d9cbee5267c3@gmail.com>
Subject: Re: [yocto] Why generated locales does not have .UTF-8 suffix?
References: <91899dc0-59a7-29e4-79bb-48af94b68437@artgroup-spa.com>
In-Reply-To: <91899dc0-59a7-29e4-79bb-48af94b68437@artgroup-spa.com>

--nFW1hFFq2VApXapdAa9vd82ka5xB94Gpt
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/14/17 8:36 AM, Fabio Emiliani wrote:
> Dear all,
>=20
> I've generated several locales specifying, in the local.conf file, the
> variable:
>=20
>> |IMAGE_LINGUAS =3D "de-de fr-fr en-gb en-gb.iso-8859-1 en-us
>> en-us.iso-8859-1 zh-cn"|
> inspecting the target file system, both in: /usr/share/locale and
> /usr/lib/locale, generated locales does not have the .UTF-8 suffix.
>=20

Perhaps adding en-gb.utf8 to IMAGE_LINGUAS might help you.

> See:
>=20
>> |/usr/share/locale/ drwxr-xr-x 6 root root 416 Nov 17 2016 . drwxr-xr-=
x
>> 30 root root 2056 Nov 17 2016 .. drwxr-xr-x 4 root root 296 Nov 17
>> 2016 de drwxr-xr-x 3 root root 232 Nov 17 2016 en_GB drwxr-xr-x 4 root=

>> root 296 Nov 17 2016 fr drwxr-xr-x 4 root root 296 Nov 17 2016 zh_CN|
> |and|
>=20
> ||
>=20
>> |/usr/lib/locale/ drwxr-xr-x 9 root root 640 Mar 13 2017 . drwxr-xr-x
>> 32 root root 40000 Mar 13 2017 .. drwxr-xr-x 3 root root 1016 Mar 13
>> 2017 de_DE drwxr-xr-x 3 root root 1016 Mar 13 2017 en_GB drwxr-xr-x 3
>> root root 1016 Mar 13 2017 en_GB.ISO-8859-1 drwxr-xr-x 3 root root
>> 1016 Mar 13 2017 en_US drwxr-xr-x 3 root root 1016 Mar 13 2017
>> en_US.ISO-8859-1 drwxr-xr-x 3 root root 1016 Mar 13 2017 fr_FR
>> drwxr-xr-x 3 root root 1016 Mar 13 2017 zh_CN|
> What is the character encoding of the following locales: de_DE, en_GB,
> en_US, fr_FR, zh_CN?
>=20
> Thanks in advance for your time
>=20
> Best regards,
>=20
> Fabio Emiliani
>=20
> --=20
>=20
> *Fabio Emiliani*
>=20
> */Software Engineer/*
>=20
> /Ph. +39 075 8298 530  /
>=20
> /fabio.emiliani@artgroup-spa.com/ <mailto:fabio.emiliani@artgroup-spa.c=
om>
>=20
> DISCLAIMER
> This email and any attachment may contain confidential information. If
> you are not the intended recipient you are not authorised to copy or
> disclose all or any part of it without the prior written consent of ART=
 SpA.
>=20
> =20
>=20
> /ART SpA =96 Step Forward With US - //www.artgroup-spa.com/logo_ART_fir=
ma-1//
>=20
> /Ph. +39 075 8298 501 =96 Fax +39 075 8298 525 /
>=20
> P*Please consider our environment  before printing this e-mail***
>=20
> =20
>=20
>=20
>=20


--nFW1hFFq2VApXapdAa9vd82ka5xB94Gpt--

--D3pItIoxq5FoBKaBP35lpTFhoWBOg9psv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljIHM8ACgkQuwUzVZGdMxQNbACfceQBfAZ91cF/vwLVJgtra9nP
4bQAn1PSUJU1lsc0Oq6cWw0IApz+i6Lr
=2u5u
-----END PGP SIGNATURE-----

--D3pItIoxq5FoBKaBP35lpTFhoWBOg9psv--
