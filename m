Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C4CE00C75; Fri, 15 Jun 2018 14:39:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D220E00791
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 14:39:08 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id a63-v6so5445425pfl.1
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 14:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=+UhN0NamphcaW8vO/5kTHKEY5eX8H6pxIEYuf9+yWxg=;
	b=H0FV4vecp0DDkx6F2ZBVoq5CFwIDiLYPoPFm01BUQck+2aTahc4s7zyngPhl+0C6hH
	1fgALtDNg9w6rCQ9eSSLLpV8vVeWWZWlc8E5vJJ9j76Rjsa97JTJdc5k8YFlEZNrmw5a
	6+AzLc6LtmGjiOcpppmyj87UUxmaVD76qOHqSIDsVXbgm4DyVwPZMWlQ18jtLRau4nvE
	Sok/Jn5XU0maAUyyqF8PcSiiBCcE9CxYbXbhnoSRkI/DapYCimHigEpNB+dDgpTa5NsC
	u1fXfSKnfSxhNjdaF47cVmUoKnzIZ7ngGHNb52XF9QETUJAFuyqOYentM7BQz13sh+DF
	LdAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=+UhN0NamphcaW8vO/5kTHKEY5eX8H6pxIEYuf9+yWxg=;
	b=MPEmvvFotLu3XQFZBhijanj1cYkziA+hqmwC5AGUTTVAcLt/9I4LrJsaOFxzyxLdB8
	JeBqaAquahEl/9Ak0SmJGBPihQ+CBGTWsT5cDf6zAlgtVI2IAQd7gvFIscoxIYqeqfWQ
	EYLGrdpvwNnZ0t1zaQAb7SMg3XHnGUjbsnqp7fzSfbVl6b/YzMqGWiENwtrhEsmXRjJv
	BxeihCpY+iSqr5fPcnltmY41fAjFiF7IHUSI+p7fnl6fZwn5IML8ILMXFr0tpR9jxuVT
	T6FAXoh24jjCejDYrA3ExNVKEqhGlVQCJ5KFnd2tjKcmc6+GT0YnvyowV5pkkMK5RVKR
	Q1aw==
X-Gm-Message-State: APt69E28N2JmfvWyQA2rT7fak4s3O1osvv3r77XhuihP25Q6OVAmSy99
	xGsfvgh/DQ7wlZ4WBbFzjZy2YEla
X-Google-Smtp-Source: ADUXVKIQYJiO4O4AqxQEI/pskwUctTOT8sTQBYvlh9DmZDv89b5NC3FKLaplWkxq9XeRS4SCmQZq4Q==
X-Received: by 2002:a62:a21b:: with SMTP id
	m27-v6mr3701774pff.248.1529098747942; 
	Fri, 15 Jun 2018 14:39:07 -0700 (PDT)
Received: from ?IPv6:2601:646:877f:9499:786c:2eeb:1e5f:66e8?
	([2601:646:877f:9499:786c:2eeb:1e5f:66e8])
	by smtp.gmail.com with ESMTPSA id
	y23-v6sm19171882pfa.73.2018.06.15.14.39.06
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 15 Jun 2018 14:39:07 -0700 (PDT)
To: "Maas, Jonas" <Jonas.Maas@vector.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
From: Khem Raj <raj.khem@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=raj.khem@gmail.com; prefer-encrypt=mutual; keydata=
	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
Message-ID: <e13a37bd-9eb6-abb6-11de-3564520cc22e@gmail.com>
Date: Fri, 15 Jun 2018 14:39:00 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
Subject: Re: Yocto not fetching unzip
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
X-List-Received-Date: Fri, 15 Jun 2018 21:39:09 -0000
X-Groupsio-MsgNum: 41480
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="QFoNUmPfA3pBmf02upvPFbM98NpYqA0JM"

--QFoNUmPfA3pBmf02upvPFbM98NpYqA0JM
Content-Type: multipart/mixed; boundary="ju6dnU8w7GTUIOPHjnGknefDBqxDS53yf";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: "Maas, Jonas" <Jonas.Maas@vector.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <e13a37bd-9eb6-abb6-11de-3564520cc22e@gmail.com>
Subject: Re: [yocto] Yocto not fetching unzip
References: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
In-Reply-To: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>

--ju6dnU8w7GTUIOPHjnGknefDBqxDS53yf
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Jonas

On 6/11/18 6:33 AM, Maas, Jonas wrote:
> Hello everyone,
>=20
> =A0
>=20
> I am experiencing an issue with yocto-2.1.2:
>=20
> I am trying to prefetch all needed sources for a certain image, let=92s=

> say =93my-image=94, by calling:
>=20
> =A0
>=20
> $ bitbake -c fetchall my-image
>=20
> =A0
>=20
> Next I am archiving the whole Yocto system (including the downloads
> directory) to a tar.gz file and unpack it on another system.
>=20
> Now when I set BB_NO_NETWORK=3D=941=94 in the local.conf and try to bui=
ld using
>=20
> =A0
>=20
> $ bitbake my-image
>=20
> =A0

I you built image on the machine where fetchall was done, do you see it
building unzip ?

>=20
> the package =93unzip=94 is missing. I can fetch it manually by temporar=
ily
> switching to online build an calling
>=20
> =A0
>=20
> $ bitbake -c fetch unzip
>=20
> =A0
>=20
> However I want to be able to build completely from the generated tar.gz=
=2E
>=20
> =A0
>=20
> Is this a bug in Yocto or intended behavior? If it is intended: Is ther=
e
> a proper setting to solve this or do I have to fetch unzip manually
> bevor packing the archive?
>=20
> Thanks in advance!
>=20
> =A0
>=20
> =A0
>=20
> Kind regards,
>=20
> =A0
>=20
> Jonas
>=20
>=20



--ju6dnU8w7GTUIOPHjnGknefDBqxDS53yf--

--QFoNUmPfA3pBmf02upvPFbM98NpYqA0JM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQSPpVvapDR0rgZCCc27BTNVkZ0zFAUCWyQx9AAKCRC7BTNVkZ0z
FOv5AJ0U+MBFy7P79VBqKB/zD5qI0A2rDgCfcRefh+9qTzGtcqNKNuJMD3eyzAA=
=isDS
-----END PGP SIGNATURE-----

--QFoNUmPfA3pBmf02upvPFbM98NpYqA0JM--
