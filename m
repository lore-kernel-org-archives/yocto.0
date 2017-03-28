Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CA33E003E1; Tue, 28 Mar 2017 11:17:32 -0700 (PDT)
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
	*      [74.125.83.49 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.49 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0F86E00349
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:17:29 -0700 (PDT)
Received: by mail-pg0-f49.google.com with SMTP id 81so65501757pgh.2
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 11:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=kOu7SCD4Cg+778Bj9JJMi/Kc0qh71SpTZYssLPrbZZw=;
	b=MXS7wTGdteF9EzJeobopRBKdh1pRwZqfrs/T2DZdR04qhIgJyj61C8r/BvCDH+ru5e
	e0m52h7BmXNLNyOpQ9WsQSeujgMn7TaqI6gHJY3b1e3O+OWNwdasZuK1yIMxlweejsZq
	gmloH4oMjRuwWSxX4yKUdGkORLT5ato305RUeeiOMPhx47BpmO4Dr+C4OnassMS60qPW
	URzEYxre9L++y+ikPWGvIkNV0z3huYRy+LwLbUMAec6Rhvq6Z7HV4a4lBgIwpQ6Jn9Nk
	JZO7I0hzbHyEsE6D9Eapf+qJkOBydTXN2oT7gjsiGf/DgfAEdNltKXJYwIpqwkOmpdHF
	pu8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=kOu7SCD4Cg+778Bj9JJMi/Kc0qh71SpTZYssLPrbZZw=;
	b=sPrLi1hKLPLo5vsEvlABZJGCV2T/9+Xnca1fjVP59NYit9olHVARsFrIPRVYXjtXva
	7GAaLyfHrcniUAGTxMqR/l10oGndRTUR7nFb2ygDqxSPTlS2WzSBYRM2O4vk/4zzvXSg
	xHOQjnNGzc2bXpRJCKn+O5Xw6h1mKB1+pJH56UDgJTEaL4QJUL32M9kL4CiN5xDZaXeB
	kfGtoUmmt8SIRlFRnpc/DhqN1W5pjGA9stKC/xiNULLegJO6hEqFINlqlnm8zMpzeT5K
	Es00+Ed9+ZgRR5spfTaQNLR0dmwDJUMxX5uuzC73MW5U9H7tsvhkErV6iAmqr8exyAEr
	olPw==
X-Gm-Message-State: AFeK/H3RhGS3Z+YbJ+UFdoGmTEAig+S/lzmrqo6QOUkjkgWZzpmyCaJx8XNau1jE6P5l8w==
X-Received: by 10.98.84.67 with SMTP id i64mr32878802pfb.44.1490725048290;
	Tue, 28 Mar 2017 11:17:28 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:1153:8bec:b665:1636])
	by smtp.gmail.com with ESMTPSA id
	q23sm8795088pfg.63.2017.03.28.11.17.26 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 28 Mar 2017 11:17:27 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1eb192a1-60ee-fefc-dd5c-540e48791a46@skidata.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <83afbf1a-33c2-c1d5-6fae-a2bec388c986@gmail.com>
Date: Tue, 28 Mar 2017 11:17:26 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1eb192a1-60ee-fefc-dd5c-540e48791a46@skidata.com>
Subject: Re: multiple, different kernel images in one rootfs
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
X-List-Received-Date: Tue, 28 Mar 2017 18:17:32 -0000
X-Groupsio-MsgNum: 35275
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="enxKQLWn3Pn881WPULNwXQHN8JAuMljeF"

--enxKQLWn3Pn881WPULNwXQHN8JAuMljeF
Content-Type: multipart/mixed; boundary="c2K1dnOUJC2HNQUr4O1eWpGi00oIQolsd";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <83afbf1a-33c2-c1d5-6fae-a2bec388c986@gmail.com>
Subject: Re: [yocto] multiple, different kernel images in one rootfs
References: <1eb192a1-60ee-fefc-dd5c-540e48791a46@skidata.com>
In-Reply-To: <1eb192a1-60ee-fefc-dd5c-540e48791a46@skidata.com>

--c2K1dnOUJC2HNQUr4O1eWpGi00oIQolsd
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/28/17 2:53 AM, Richard Leitner wrote:
> Hi,
> I'm currently using Jethro and like to include multiple, different
> kernel (fit)images (with different source branches/versions) in one
> RootFS. When booting such a system the bootloader (U-Boot) will decide
> which kernel to load.
>=20

There is/was a way to build multiple kernels see something like this

https://git.digitalstrom.org/dss-oe/dss-oe/commit
/1e0c2307a910e8fc7e2482a757c52277c4f4e01e

might help you


> I've already done some searches on the Internet, but found only Bug
> 6945, which seems to be something similar. But I'm unable to find any
> documentation on it, and the commits linked to the bugzilla [1] aren't
> very helpful.
>=20
> Furthermore a similar question on the mailing list in 2015 [2] wasn't
> answered.
>=20
> So does anybody of you know how to implement that or where/how I might
> get started?
>=20
> Thanks & regards,
> Richard L
>=20
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6945
> [2] https://lists.yoctoproject.org/pipermail/yocto/2015-May/025031.html=

>=20


--c2K1dnOUJC2HNQUr4O1eWpGi00oIQolsd--

--enxKQLWn3Pn881WPULNwXQHN8JAuMljeF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljaqLYACgkQuwUzVZGdMxRnPwCfWNG1uA3UW2iQxYWJGJRdFUu1
27IAn3PT8+P+XnnuToQCOH8YcYroBead
=IF13
-----END PGP SIGNATURE-----

--enxKQLWn3Pn881WPULNwXQHN8JAuMljeF--
