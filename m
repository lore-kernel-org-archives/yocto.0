Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C550E00AB7; Thu, 10 Dec 2015 13:20:45 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 765FDE00718
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:20:39 -0800 (PST)
Received: by pfbg73 with SMTP id g73so55081028pfb.1
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 13:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=LE+g5aTtuIhSXhLUImg3m8IYChkkjKmGbDjKwNFQk/o=;
	b=peVuF9dryiBj7kWqEuCGKRIHhegXJaLJiJSL67q2G8d0yJxfK0hb15KAI1jxtuQIX8
	vi74xpvhYqYySh962sOySecjXRx5gmBdk2D0UqpDhWUHAjWMKuUYukXaD3eu022TpMO/
	pdwS6X1w/rRosoXIaINnQUNIWgtv8PlvTAgzrF9LBsp7YAjPRjLqDotqpZW07BMxwNHV
	diXcCkZYVlz8ykpa5TuSLSvU6GFPd7kKAwKCRzZu4jY/nD1Zw0ovfIy6QOOhretnSzFd
	i0vIC+AZlHcMvB4rAYNE04jr3vJ+WjIVv5yS7ZfkkLLcsyUgulrYMzw0XNDzW60dA2gD
	tv1w==
X-Received: by 10.98.76.23 with SMTP id z23mr5766839pfa.52.1449782439231;
	Thu, 10 Dec 2015 13:20:39 -0800 (PST)
Received: from ?IPv6:2601:647:4c02:370d:8808:cc68:7cdd:e1d?
	([2601:647:4c02:370d:8808:cc68:7cdd:e1d])
	by smtp.gmail.com with ESMTPSA id
	s10sm15476986par.45.2015.12.10.13.20.37
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 10 Dec 2015 13:20:37 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <56698CCE.5010807@tataelxsi.co.in>
Date: Thu, 10 Dec 2015 13:20:33 -0800
Message-Id: <495C9C4B-91D7-4610-A150-7C476FF8112E@gmail.com>
References: <2413401446092375@web22h.yandex.ru>
	<SIXPR04MB0668A492F04048D5C7998873EC200@SIXPR04MB0668.apcprd04.prod.outlook.com>
	<CAMKF1sqfDA_FtZApDAgrB2g3n7peQVVnNWS3cEx1ejX4f_XLMA@mail.gmail.com>
	<566831EB.4050302@tataelxsi.co.in>
	<56698CCE.5010807@tataelxsi.co.in>
To: yukatharsanij@tataelxsi.co.in
X-Mailer: Apple Mail (2.3112)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Computing transaction Error
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
X-List-Received-Date: Thu, 10 Dec 2015 21:20:45 -0000
X-Groupsio-MsgNum: 27679
Content-Type: multipart/signed;
	boundary="Apple-Mail=_89C2F3D6-EFEF-4E8C-8FE2-09B6461709FC";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_89C2F3D6-EFEF-4E8C-8FE2-09B6461709FC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 10, 2015, at 6:31 AM, Yukatharsani Jeyachandra =
<yukatharsanij@tataelxsi.co.in> wrote:
>=20
> Hi All,
>=20
> I am getting the following error while running my bsp image.
>=20
> Loading cache...
> Updating cache... ######################################## [100%]
>=20
> Computing transaction...error: Can't install =
packagegroup-mrvl-bsp-1.0-r17.1@bg4ct: no package provides amp
>=20
> Any idea what might go wrong ?


you have a package called amp which is actually empty so it gets removed =
from final package list but the package group still has the depepndency
so you can use ALLOW_EMPTY in amp recipe or your run time dependency in =
package group is wrong it should probably be some other package coming =
out
of same recipe thats building amp. May be a  library

>=20
> Thanks and Regards,
> Yukatharsani J.
>=20
> On 09-12-2015 19:21, Yukatharsani Jeyachandra wrote:
>> Hi All,
>>=20
>>         I am trying to build my meta-bsp layer using external linaro =
toolchain path.
>>          But i am getting some issues since i set EXTERNAL_TOOLCHAIN =
path in local.conf file.
>>          Is there any way to customize my meta layer alone to take =
external linaro tool chain not other general meta layers.
>>=20
>> Thanks and Regards,
>> Yukatharsani J.
>>=20
>>=20
>> On 29-10-2015 11:19, Khem Raj wrote:
>>> On Wed, Oct 28, 2015 at 10:15 PM, YUKATHARSANI JEYACHANDRA
>>> <yukatharsanij@tataelxsi.co.in> wrote:
>>>> Hi,
>>>>=20
>>>> I am trying to build kernel image for new hardware.
>>>>=20
>>>> So, I prefer to use my linux 3.x version with specific changes.
>>>>=20
>>>> I want bitbake to fetch the local path of my linux.
>>>>=20
>>>> Is it possible to specify the local path in SRC_URI.
>>> yes. use file:///path/to/linux.tar or even you can use externalsrc =
and
>>> point it to your tree during development.
>>> read through
>>> =
http://www.yoctoproject.org/docs/1.8/dev-manual/dev-manual.html#building-s=
oftware-from-an-external-source
>>>=20
>>>>=20
>>>> Thanks and Regards,
>>>>=20
>>>> Yukatharsani J.
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>> ________________________________
>>>> From: yocto-bounces@yoctoproject.org =
<yocto-bounces@yoctoproject.org> on
>>>> behalf of Andres Sagot <andres.sagot@yandex.com>
>>>> Sent: Thursday, October 29, 2015 9:49 AM
>>>> To: yocto@yoctoproject.org
>>>> Subject: [yocto] Kernel Version Dependency in BB Recipe
>>>>=20
>>>> Hello Yocto Community,
>>>>=20
>>>> I did a search and found a great deal about layer dependencies, but =
I am
>>>> still not clear on how or if it is possible to add a kernel version
>>>> dependency to a BB recipe. I would like to bitbake to report an =
error if it
>>>> attempts to build my custom package with an unsupported version of =
Linux.
>>>>=20
>>>> Thank you and best regards,
>>>> Andres
>>>>=20
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>=20
>>> .
>>>=20
>>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_89C2F3D6-EFEF-4E8C-8FE2-09B6461709FC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZp7KQACgkQuwUzVZGdMxRkNwCeOlsfGG0rQcofTdqswlX0WU2N
hAcAnj513IAqJstG6YdCMl6souCihf64
=KQsM
-----END PGP SIGNATURE-----

--Apple-Mail=_89C2F3D6-EFEF-4E8C-8FE2-09B6461709FC--
