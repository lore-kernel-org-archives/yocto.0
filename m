Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AECC0E003D7; Sat,  8 Aug 2015 12:02:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E399DE00343
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 12:02:48 -0700 (PDT)
Received: by pdrh1 with SMTP id h1so38594292pdr.0
	for <yocto@yoctoproject.org>; Sat, 08 Aug 2015 12:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=3iu/7/HsKEbq0azajufFtXNQhkF5IQZptnXk9ZhVSEA=;
	b=rMt35eMnLBysAYQUmmDdoOxHEV06l6lAweRCuDBMTdzXK9BFkteYz9ieWK19ieOMpi
	NGRKrsVgYQEhTT90/hNEfJ4A8KYxjhYo7CbjRDEEE/g6JALWkl8Vnd7VVUHiIV5V2ZJq
	khKdsRIoz+/j+x6ggF3JxiK9RzNA/404uCPpkk/k1Iapef99+T/RgbdIP7MkVTpUhfAb
	ofGhY3Zn2/g6pBvry7+uHO6IEuBhoh5pMxeulgZbwvqhjzgqncpbtPvaPKcF5gw2KRdZ
	P+nOV7vwLF+ee4aOHB1Zm1Cl3t06tndzYI2rK8AmZaXNLRRjK5tpu9ucsxD6NbuinKoB
	lL+g==
X-Received: by 10.70.103.172 with SMTP id fx12mr28884082pdb.150.1439060567902; 
	Sat, 08 Aug 2015 12:02:47 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:61b5:b56b:3665:2b08?
	([2601:646:8601:4580:61b5:b56b:3665:2b08])
	by smtp.gmail.com with ESMTPSA id
	iw2sm14301857pbb.67.2015.08.08.12.02.46
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 08 Aug 2015 12:02:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <55BA6B07.3070905@balister.org>
Date: Sat, 8 Aug 2015 12:02:42 -0700
Message-Id: <7F3866E8-1A53-4BBF-99ED-95C746BDD543@gmail.com>
References: <2238EDC6081C944E97E4EE915AE5CBEC5476A872@EXCHANGE-B.raylase.de>
	<81e2e36e8df04c9584ea5a9ca8afa303@googlemail.com>
	<2238EDC6081C944E97E4EE915AE5CBEC5476EED6@EXCHANGE-B.raylase.de>
	<7861693.hW9MCO2lEF@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1soKnb5LR7pkiXW2=o0hjA4iVx_803yO3P=2vEc_85Y0gQ@mail.gmail.com>
	<55BA6B07.3070905@balister.org>
To: Philip Balister <philip@balister.org>
X-Mailer: Apple Mail (2.2104)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yves Vandervennet <yvanderv@opensource.altera.com>,
	"rfi@lists.rocketboards.org" <rfi@lists.rocketboards.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Dalon Westergreen <dwesterg@gmail.com>,
	"enak999@googlemail.com" <enak999@googlemail.com>
Subject: Re: Which repo for meta-altera ?
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
X-List-Received-Date: Sat, 08 Aug 2015 19:02:52 -0000
X-Groupsio-MsgNum: 25937
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0147846F-755B-4C99-8562-8EF3F38A19AE";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0147846F-755B-4C99-8562-8EF3F38A19AE
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Jul 30, 2015, at 11:20 AM, Philip Balister <philip@balister.org> =
wrote:
>=20
> On 07/30/2015 01:02 PM, Khem Raj wrote:
>> On Thu, Jul 30, 2015 at 12:50 AM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>>> (Adding Khem and Yves, the maintainers of the github repo, to CC)
>>>=20
>>> In the interests of keeping the layer index accurate, can we get =
some
>>> clarification on which repo is the official BSP?
>>=20
>> Please use github.com/kraj/meta-altera as mentioned in layerindex as
>> well. This is the community supported BSP
>=20
> What are the differences, shouldn't th ecommunity send in updates to =
the
> vendor BSP?

In this case, github.com/kraj/meta-altera is upstream moving forward and
https://github.com/altera-opensource/meta-altera will be more of staging =
area for Altera

documentation for this has been updates to clear the confusion see
http://rocketboards.org/foswiki/view/Documentation/MoveToGitHub

Hope that helps
-Khem


--Apple-Mail=_0147846F-755B-4C99-8562-8EF3F38A19AE
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXGUlUACgkQuwUzVZGdMxSneACgh2aurG9Cvn78vYeRFHx/O8Em
VUUAmgOLBP47ZJeQO9itS/4ZI3zCxEYi
=PnJt
-----END PGP SIGNATURE-----

--Apple-Mail=_0147846F-755B-4C99-8562-8EF3F38A19AE--
