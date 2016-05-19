Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1156E00DCA; Wed, 18 May 2016 22:26:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f68.google.com (mail-pa0-f68.google.com
	[209.85.220.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 735FFE00D3D
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 22:26:21 -0700 (PDT)
Received: by mail-pa0-f68.google.com with SMTP id yl2so6781590pac.1
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 22:26:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=yrNVaI4dnrHB/zdI0ThuqVtG6esXRH8IaJl/GTz7FM8=;
	b=dm+wLYZaowtq5PxCY0WRO9gNcDlzASHULHy3pnR1KCm2OxRmZWs2Q2/S+U+h0+/7j7
	RUAUQ9GY39tOO+SBuGQ9gcCgkrn7d/5GhLbjjKxrlvCbQDiU4BpHEMIMfsmfwdcgybEQ
	eSjWRspSF+0RLRpyNqmt5/DB+X6j5OKNkD2Xwy5vDJuT2h91tzmsqIepN7EJDRbp3dNK
	rJVYYD4+4kjrWoGR0S7fVRUCikpgpKv5y06aJwE1EA7A4rFj1lyW5/ceBAni77KpHFNr
	DwSTA5CtjhLiOIxt+Zy7AdydZuJfbOaM5FckTRr+2UVBBJaAd7R/joP41fEYj0Dc9oPo
	upXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=yrNVaI4dnrHB/zdI0ThuqVtG6esXRH8IaJl/GTz7FM8=;
	b=IuynhlvKJYiuYvo10OmcYNKUwOc4sjTflEw1haLM6x29yA5RKIrHlolkQGeyKYlupg
	bzQZJWkyrDDZGyweDjdpXETJyeQal6mfwdFVIhQc3uoF9Cqmvq1XXHyT9pAWSZwYNwdt
	dB0oOULDSZ7aF2xpBwNLKwMWCa6TTxJZxD8tzhFju5a2Lw4xOYj8i2Tgj9kCg+GUouLJ
	j/35RsSc8rXCCQYDNNbFzBpkwvmotpUBIphT6K6C2r+UKUVcLO14+tqPwsFQJJouQ1QG
	dJUeOCbVBRldK3naJ1jY+B/RCPvDb8LNWYq3Mro6BtTr4mn2fLnioZUS3ZF648oCLOGv
	6mRg==
X-Gm-Message-State: AOPr4FWXh4Xhw8WdM3YtkOl3uetddn8c0I7D3TtFdiktjsACRWugSXAQzrT5UhCKlgKDPQ==
X-Received: by 10.66.78.73 with SMTP id z9mr16580035paw.4.1463635580727;
	Wed, 18 May 2016 22:26:20 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:9d0a:713a:62de:261f?
	([2601:646:8800:5a9a:9d0a:713a:62de:261f])
	by smtp.gmail.com with ESMTPSA id
	l123sm16202723pfl.36.2016.05.18.22.26.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 May 2016 22:26:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <d9108ecb-9554-821f-8641-4e5df9c399df@windriver.com>
Date: Wed, 18 May 2016 22:26:14 -0700
Message-Id: <7588F45E-E6BD-4445-8CF5-2EDE4DDFA790@gmail.com>
References: <1463602296-7061-1-git-send-email-raj.khem@gmail.com>
	<d9108ecb-9554-821f-8641-4e5df9c399df@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org, paul.eggleton@linux.intel.com
Subject: Re: [meta-qt4][PATCH 1/2] layer.conf: Use immediate expansion
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
X-List-Received-Date: Thu, 19 May 2016 05:26:23 -0000
X-Groupsio-MsgNum: 30063
Content-Type: multipart/signed;
	boundary="Apple-Mail=_77FACD4C-B6A9-4C6A-AAE6-F3CAACFF41E0";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_77FACD4C-B6A9-4C6A-AAE6-F3CAACFF41E0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On May 18, 2016, at 1:23 PM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>=20
> On 5/18/16 3:11 PM, Khem Raj wrote:
>> Matches most of layers defaults
>>=20
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>> conf/layer.conf | 2 +-
>> 1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/conf/layer.conf b/conf/layer.conf
>> index 62ce9cc..39c2421 100644
>> --- a/conf/layer.conf
>> +++ b/conf/layer.conf
>> @@ -5,6 +5,6 @@ BBPATH .=3D ":${LAYERDIR}"
>> BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb"
>>=20
>> BBFILE_COLLECTIONS +=3D "qt4-layer"
>> -BBFILE_PATTERN_qt4-layer =3D "^${LAYERDIR}/"
>> +BBFILE_PATTERN_qt4-layer :=3D "^${LAYERDIR}/"
>=20
> This is really strange.  ${LAYERDIR} always immediate expands.  So =
there should
> be no ifferences between the two.
>=20

As I said, I was just matching to some other layers conventions =
functionally it works either way


> --Mark
>=20
>> BBFILE_PRIORITY_qt4-layer =3D "6"
>>=20
>>=20
>=20


--Apple-Mail=_77FACD4C-B6A9-4C6A-AAE6-F3CAACFF41E0
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlc9TnoACgkQuwUzVZGdMxRtfACdGGEN8NYcpuigMoiQNzvfNAVq
wL0An3B0zzJ47hvv/s5Z/3hBrGO+U+5/
=FaL4
-----END PGP SIGNATURE-----

--Apple-Mail=_77FACD4C-B6A9-4C6A-AAE6-F3CAACFF41E0--
