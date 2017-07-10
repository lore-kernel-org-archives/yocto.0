Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70598E00BB6; Mon, 10 Jul 2017 10:30:17 -0700 (PDT)
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
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20869E00B76
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:30:15 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id q85so53247063pfq.1
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 10:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=1L+N0DeH/OODBxgaeiECi9gxO8Kan7IVoAjBAzNg2tw=;
	b=kAWLtYULH2Ia59qaHuXPaSFrFtOdDFVbAZjqC/4G8r7m/e5KK6pBzthe9GdppGJm3/
	YM77AXJWr0xiLglVWEl0JeqNUwztDPT5gkmkuoH3a4zJ+DTQZYjpWHwUtOuoxIMT6TMX
	zkxXxSqRCIhjZhW8CiTBJgUN6uuLONjtZ6ycHK2fop7Yb0AhrhfBi58Fs1M6XZmvwxWv
	1g/2i0w6R8l2Zj9aQdZz01iG7ctNxifNhwkNdQls+cn/rDvTraufRcwjBkj65Fhv3jr5
	5ishfbk3bxsLrqmSKpbqqw27xOxnbH8LlMC2LMTdkamu8QvOi6y78jX/iH0WGSdhCIYe
	070A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=1L+N0DeH/OODBxgaeiECi9gxO8Kan7IVoAjBAzNg2tw=;
	b=ujGWzMyOBXUwkYVfam9tP+Hr+XZNFhVaJj0RfSD1CyqUIKC2pyshK3jVC6ui3hhbP4
	uLxwpA3s/hbzz2Pq1HByk0En4yjw6499kXKCIwLyixdpgiKBCxQlttW0R71LS2G7yTPH
	q4KX0UD/WDvkUB4mEs4gQveqmLFOlhweEUCN9pQrh1fd0Qbw+7Iugmjy8pUM1g6pjB6n
	btilnO4FBn5nex2H0svlLiWDwGhkuyW4Yn0IjuV2OlZjqWRNnUaEG9OSJ+x5RIGzfA2H
	OGAZzv/APO8xmBZWiOc4+wFdR9A99yuUib6o2FyCVixAMKxI/iwKs2rzVzhGdSwBtiX4
	8BLg==
X-Gm-Message-State: AIVw1108T29UxWwPZQOvs6jfaWNx1R3L5gidPijYuOi202wMr61owQjO
	jWqfnXalfGvo5LECS1I=
X-Received: by 10.98.20.21 with SMTP id 21mr46161163pfu.29.1499707814500;
	Mon, 10 Jul 2017 10:30:14 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:916c:598f:a4d5:4c49?
	([2601:646:8882:b8c:916c:598f:a4d5:4c49])
	by smtp.gmail.com with ESMTPSA id
	m68sm25041697pfi.12.2017.07.10.10.30.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jul 2017 10:30:13 -0700 (PDT)
To: Dennis Menschel <menschel-d@posteo.de>, yocto@yoctoproject.org
References: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <558509cb-5d67-fa25-29c8-2725bad6b592@gmail.com>
Date: Mon, 10 Jul 2017 10:30:11 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:54.0)
	Gecko/20100101 Thunderbird/54.0
MIME-Version: 1.0
In-Reply-To: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
Subject: Re: New software layer for the barebox bootloader
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
X-List-Received-Date: Mon, 10 Jul 2017 17:30:17 -0000
X-Groupsio-MsgNum: 36981
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="HTW82IBSXgSB4GdlV5lSuKtSLbTIx0hBI"

--HTW82IBSXgSB4GdlV5lSuKtSLbTIx0hBI
Content-Type: multipart/mixed; boundary="o9WKPH7DLgTN393Tt3a8lIRsAvLl2wcjn";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Dennis Menschel <menschel-d@posteo.de>, yocto@yoctoproject.org
Message-ID: <558509cb-5d67-fa25-29c8-2725bad6b592@gmail.com>
Subject: Re: [yocto] New software layer for the barebox bootloader
References: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>
In-Reply-To: <c8e75209-3fd2-925c-9245-3db1876b8bdc@posteo.de>

--o9WKPH7DLgTN393Tt3a8lIRsAvLl2wcjn
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

On 7/10/17 9:51 AM, Dennis Menschel wrote:
> Hi all!
>=20
> I have created a new software layer named meta-barebox that provides
> support for the barebox bootloader.
>=20

Thanks, I see there are many other layers providing barebox of their
own. Next step is to coverge them so that they are can use meta-barebox.

> The layer has already been added to the OpenEmbedded Layer Index:
> https://layers.openembedded.org/layerindex/branch/master/layer/meta-bar=
ebox/
>=20
> The layer features its own reference manual that describes the interfac=
e
> of meta-barebox and provides a usage example.
> Last but not least, it also answers the question why I have created a
> separate layer for the barebox bootloader.
> The reference manual can be found here:
> https://github.com/menschel-d/meta-barebox/blob/master/doc/ref-manual.m=
d
>=20
> Have fun!
>=20
> Best regards,
> Dennis Menschel
>=20



--o9WKPH7DLgTN393Tt3a8lIRsAvLl2wcjn--

--HTW82IBSXgSB4GdlV5lSuKtSLbTIx0hBI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAlljuaMACgkQuwUzVZGdMxR80gCdEksqsIT0UqzhbsaTxrVPlCkW
+GUAoInsbCEN36paUmhBhrktqhzelqaY
=qzXO
-----END PGP SIGNATURE-----

--HTW82IBSXgSB4GdlV5lSuKtSLbTIx0hBI--
