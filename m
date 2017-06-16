Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56C55E00B51; Thu, 15 Jun 2017 19:33:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DEAR_SOMETHING,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  2.0 DEAR_SOMETHING BODY: Contains 'Dear (something)'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A1BE00A38
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 19:33:46 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id 83so15949892pfr.0
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 19:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=Y00buSjUrrtVFgb7CQQFb17ZQH6BEmZkFIdXdANBbY0=;
	b=dotDrK+uh0YLgQnNa8JrKT4AqK8r73Q3ZkCNXDfk0TPvy0C9EzOuSM9lWhmfm6Tzp5
	+mdfIFGHqkRTQRI/FQ0VVOyKKEPC3oPIPWWrlobvQueulmyhZ44HgUrRIZeJFtSSP2JS
	hxL3Qb+8D1YEcSOc4DIB3HeG7e2vjk9GnTBtGgi2QDQ9GjmRe5AeNv5wNL80XEkFRz6/
	+Dwf6nPz02/VAF0dIxgYuX3lUwEOzfEi335bEBHfg423VGYrRLB3DooEuP4rvpg/iPu6
	aYylUSiHXWMDHhKVz7aUvPCsosz/+5GyGgSA3PNG3Lmh+yA5nTB3CagZqg+X65ZuVHua
	Uo/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Y00buSjUrrtVFgb7CQQFb17ZQH6BEmZkFIdXdANBbY0=;
	b=PXVsBiCgtU6fsvcJ91LkSnJRR+/l49MV038sUxQ3rGX493A9aBRXacuxcnt4SSn1v3
	iOJHUIqH3lCuPsattfdDnwMwQoI88vknUIOp241gKOIIUDBaQsLepaYrHncXxof6+Bou
	nJ1VdLtLj5yYY3nETIhhknN7oeIorWvTPQSsh0GqfBtJNogocvRHoui3Z5iWYXdQkR7O
	ZOwbtNvd2r8K91CsxII2syI/DxGpagGgUZymdW9lBm8Tc+jKNoO3e8nLhQ1AYhyxJgf1
	Zew79ocSC/jlgbpbjqqqtanY7cXu9s6V86BkUMyfG/yHptPZL96D51j6qPQVVciEimup
	ar4w==
X-Gm-Message-State: AKS2vOywkE8cWE3JY5UqeyoZnX5My39xMGddK9aeHvKWyWdIvByOJmA/
	cXDyVAuMrRAya7c2IOA=
X-Received: by 10.98.144.132 with SMTP id q4mr8364662pfk.8.1497580425321;
	Thu, 15 Jun 2017 19:33:45 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:745f:c6ab:d92d:5f3f?
	([2601:646:8882:b8c:745f:c6ab:d92d:5f3f])
	by smtp.gmail.com with ESMTPSA id a2sm1068956pfj.8.2017.06.15.19.33.43
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jun 2017 19:33:44 -0700 (PDT)
To: yocto@yoctoproject.org
References: <20170615113537.Horde.hjFj5nLVyrJpB5nf2tI3-z8@linux8.hostguy.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <2890c4d2-9e0c-9a9c-571d-43d15d718349@gmail.com>
Date: Thu, 15 Jun 2017 19:33:36 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <20170615113537.Horde.hjFj5nLVyrJpB5nf2tI3-z8@linux8.hostguy.com>
Subject: Re: sqlite in yocto1.8-fido
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
X-List-Received-Date: Fri, 16 Jun 2017 02:33:56 -0000
X-Groupsio-MsgNum: 36603
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="RSv7Lg37Ac8CWs0XgcBUAfqhMfPac16aC"

--RSv7Lg37Ac8CWs0XgcBUAfqhMfPac16aC
Content-Type: multipart/mixed; boundary="opWtPjg4lHt6gSTFDspWRvUuaCp2meGrk";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <2890c4d2-9e0c-9a9c-571d-43d15d718349@gmail.com>
Subject: Re: [yocto] sqlite in yocto1.8-fido
References: <20170615113537.Horde.hjFj5nLVyrJpB5nf2tI3-z8@linux8.hostguy.com>
In-Reply-To: <20170615113537.Horde.hjFj5nLVyrJpB5nf2tI3-z8@linux8.hostguy.com>

--opWtPjg4lHt6gSTFDspWRvUuaCp2meGrk
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 6/14/17 11:05 PM, balaji.p@easyarm.com wrote:
>=20
> Dear sir
>=20
>  I enabled sqlite in qtbase-native ,but iam not able to get sqlite
> related libraries.


how did you enabled it ?

>=20
>  Any suggestion would be appreciable.
>=20
>=20
> Thanks
> Balaji
>=20
>=20
>=20



--opWtPjg4lHt6gSTFDspWRvUuaCp2meGrk--

--RSv7Lg37Ac8CWs0XgcBUAfqhMfPac16aC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAllDQ4YACgkQuwUzVZGdMxQE9QCfUqDslhcu9FWTsrQNHCVCdFb+
2i8An0nR2MTLJCHXz4gHHUgMexn5UjvL
=N7rE
-----END PGP SIGNATURE-----

--RSv7Lg37Ac8CWs0XgcBUAfqhMfPac16aC--
