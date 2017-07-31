Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 648B1E00C2E; Mon, 31 Jul 2017 11:42:15 -0700 (PDT)
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
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.51 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AEA5E00BAF
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 11:42:13 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id y129so141573725pgy.4
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 11:42:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=wLNh1NKNziOE1H2gadWi026Ru/OS+wHuwUKBrBWCn9M=;
	b=ThIysKHza7AJSplUvv9o5+vu8R5Jwg9kG595hPLrxlDc+FaNv7RuqTkS4qRg5m/y8m
	dVqVl0lTNRv/QMxtbvBz7Ia/f0Ztlas9PNeaFTLLFBYbXtdBEhOYL0JjW17k2IlJ+7uO
	w5n5QDxI5mndBHaa3tCSVrCy/08aIZJef1Cqirf8sC7n7/PmsU0oKThRqNOQutHWeiY/
	B739I8qV2xHD3xi+vD5FtxntMOISjjRQAb9yOE3VI/Ah4+vpQ6/bVQiOdHxeyoG/Xb8q
	EAbBqf/Cv3s6AXOJEE859H+s9aJTz537wkSGICKc9bGCJgBa8U9YUCN4zZC1RhdfBmZA
	AQeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=wLNh1NKNziOE1H2gadWi026Ru/OS+wHuwUKBrBWCn9M=;
	b=J5hat7AS4fn2cO932TXriThF41S6Xg30Ex88BsG82BXtGp4REYr7MC6EGuX7Q+huSt
	qcOwBML3pwdYKdoWBXq5FfgXDHHbFOGQ4UWvtttTHr/tl5T/H+j/YbnAFhvr1Hi9ix36
	MbOnbtFdJ1NSQxVUHdDvd27DXLSJC7b4TlnTczSFdFLnTS2MzxeRqqzE6KT5BqP7zhxy
	7xlsXbYW/8tUnwj629dAKyG6UwstiLRHNHHbYYvLNcCNdGzMauFhhryC3yT8N0dhZeL8
	YZqegu80IA/jvIe0TUrIM4ipymsjxx9m37H/LM1jQfzkOIIGN3m844hrMMZcjmUx3oGl
	etrw==
X-Gm-Message-State: AIVw1128ZZgddM2cO1KhYJ/+AilSaxbmOTbqyeKmll3SXHyskm9uOWxM
	e02Gib3uNsnSqcClowY=
X-Received: by 10.99.0.149 with SMTP id 143mr3765219pga.243.1501526533095;
	Mon, 31 Jul 2017 11:42:13 -0700 (PDT)
Received: from Khems-MacBook-Pro.local
	([2601:646:8882:b8c:30be:1361:6ee4:77cc])
	by smtp.gmail.com with ESMTPSA id
	f64sm20516944pfb.83.2017.07.31.11.42.07
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 31 Jul 2017 11:42:07 -0700 (PDT)
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <38c1a8ab-2ad8-f1e1-c56c-13ec8ace1dd0@gmail.com>
Date: Mon, 31 Jul 2017 11:42:01 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:55.0)
	Gecko/20100101 Thunderbird/55.0
MIME-Version: 1.0
In-Reply-To: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>
Subject: Re: local file update vs rebuild
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
X-List-Received-Date: Mon, 31 Jul 2017 18:42:15 -0000
X-Groupsio-MsgNum: 37243
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="voiG37BwToGhhX8FNstcVrROMxxWlHmBl"

--voiG37BwToGhhX8FNstcVrROMxxWlHmBl
Content-Type: multipart/mixed; boundary="T0O4WebW6wu5KdmsIML5tUto5u7eaWwdd";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <38c1a8ab-2ad8-f1e1-c56c-13ec8ace1dd0@gmail.com>
Subject: Re: [yocto] local file update vs rebuild
References: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>
In-Reply-To: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>

--T0O4WebW6wu5KdmsIML5tUto5u7eaWwdd
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:
> Hello.
> I am uncertain about do_clean behavior with local files.
>=20
>=20
> Say, I have local files referred by my recipe, and I have made changes =
to the files referred.
> (Note, there is no change in my xxxx.bb file itself.)
>=20
>=20
>> SRC_URI +=3D "file://src/*;subdir=3Dlocal"
>=20
>=20
> What makes those changed files reflected to the build?
> Do I need do_cleanall? =C2=A0do_cleansstate or maybe do_clean is enough=
?
>=20
>=20
> According to the document
>=20
>=20
>> do_clean
>> do_unpack task forward (i.e. do_unpack, do_configure, do_compile, do_i=
nstall, and do_package).
>> if no changes have been made and the recipe is rebuilt after cleaning,=
 output files are simply restored from the sstate cache.=C2=A0
>=20
>=20
> I want to avoid doing do_cleanall often, and I would like to tell bitba=
ke that my recipe needs rebuild at the same time not rebuilding others.
> But at the same time I want to avoid building my single explicity.
> I just want to build the image name as target.

I think ccleansstate should be good.

>=20
>=20


--T0O4WebW6wu5KdmsIML5tUto5u7eaWwdd--

--voiG37BwToGhhX8FNstcVrROMxxWlHmBl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAll/ef0ACgkQuwUzVZGdMxRTUgCfWyrH5Vs3mUFEhsW0S4BSaWQh
hgQAn2RMIx1S8wSEFnDH4UUHOj2Ti13A
=8BP0
-----END PGP SIGNATURE-----

--voiG37BwToGhhX8FNstcVrROMxxWlHmBl--
