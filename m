Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DC76E00E13; Thu,  8 Oct 2015 08:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C77DE0053A
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2015 08:05:40 -0700 (PDT)
Received: by pablk4 with SMTP id lk4so57371364pab.3
	for <yocto@yoctoproject.org>; Thu, 08 Oct 2015 08:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=6MTjeSDWchkxt64Ay8CvgSQvvwqvFxncThE6UgqkX/A=;
	b=AUbT+Gt8R7nN5d8gDfONzhF7kH/vV8GJOpPor2dGmxwbLP9j12xKTQfhE+E5gTki14
	zhS7UvOA7RpA8Glv6oEbSq1X69TBkkbVyokX54l9rjg1Ru0wRCKgvilMgtwIu96u6d1h
	Z6obnWuw8jipsjYD3YQxIrB9G7+8S+oCSyXBCRWsFmVQ/P0HQcHq3C0TA2KhZHtIgjK2
	bnoV9ew+55G3e/d+3kJkktQRs6hb04sL5BIzJmPL0EFn5lYUerVxJgmZIsUGM06rzdUH
	aFhIezIAROMwxU/jgCTOH4fTKv5qY3PSN/eI0G9HpL/dgUxlb3S7l3ic0C1Hs5F6QlSS
	t3hA==
X-Received: by 10.66.65.228 with SMTP id a4mr8652214pat.19.1444316739918;
	Thu, 08 Oct 2015 08:05:39 -0700 (PDT)
Received: from [192.168.0.4] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by smtp.gmail.com with ESMTPSA id
	hq8sm46348220pad.35.2015.10.08.08.05.39
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 08 Oct 2015 08:05:39 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3095\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <E36BFEC6-6F32-4F29-A200-4CE84A535043@gmail.com>
Date: Thu, 8 Oct 2015 08:05:35 -0700
Message-Id: <FD12338D-82E7-4A3A-84F1-5AA7E9EFA8CD@gmail.com>
References: <1739F874-791D-4371-B60A-B234370430A4@gmail.com>
	<69B07C73-5285-4201-BFEC-0C77E1883E61@gmail.com>
	<E36BFEC6-6F32-4F29-A200-4CE84A535043@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>
X-Mailer: Apple Mail (2.3095)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 5/7][meta-openembedded] Update nginx to 1.9.5
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
X-List-Received-Date: Thu, 08 Oct 2015 15:05:42 -0000
X-Groupsio-MsgNum: 26755
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0902409C-0EAD-4585-9093-E6631DE4BA26";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0902409C-0EAD-4585-9093-E6631DE4BA26
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 8, 2015, at 7:52 AM, Jens Rehsack <rehsack@gmail.com> wrote:
>=20
>=20
>> Am 02.10.2015 um 03:25 schrieb Khem Raj <raj.khem@gmail.com>:
>>=20
>> Jens
>>=20
>>=20
>>> On Oct 1, 2015, at 11:18 AM, Jens Rehsack <rehsack@gmail.com> wrote:
>>>=20
>>>=20
>>> many bux-fixes, optmizations and features added:
>>>=20
>>> Changes with nginx 1.9.5                                         22 =
Sep 2015
>>>=20
>>> [...]
>>>  *) Security: a stack-based buffer overflow might occur in a worker
>>>     process while handling a specially crafted request, potentially
>>>     resulting in arbitrary code execution (CVE-2013-2028); the bug =
had
>>>     appeared in 1.3.9.
>>>     Thanks to Greg MacManus, iSIGHT Partners Labs.
>>>=20
>>=20
>>=20
>> This is good info. Although a link to diff in cgit or web view of =
whatever SCM nginx uses would have done too.
>=20
> That's simply the Changelog. It's an update, not a fix for a critical =
issue.
> Do you really ask me to list each fixed bug from nginx' ticket list?

No, on the contrary, I said if the release published the link for all =
this changes somewhere then just include the link
instead of enumerating changes here.

>=20
>>> Signed-off-by: Jens Rehsack <sno@netbsd.org>
>>> [...]
>>> --- a/meta-webserver/recipes-httpd/nginx/nginx_1.4.4.bb
>>> +++ /dev/null
>>=20
>>=20
>> please user git format-patch -M to let git work harder on detecting =
renames, its way easier to review the changes that way
>> this patch belongs to openembedded-devel list so please resend it =
there with prefixing the layer in meta-openembedded repo =
[meta-webserver] where the patch is applied.
>=20
> Sure, will do when I have feedback regarding above question.
>=20
> Regarding the other 6 patches - is just the right layer and "-M" =
missing?
> Do I have to improve them anyhow (beside what Martin Jansa and Khem =
criticized: missing description here and there)?
>=20
>>> [...]
>=20
> Cheers
> --
> Jens Rehsack - rehsack@gmail.com
>=20


--Apple-Mail=_0902409C-0EAD-4585-9093-E6631DE4BA26
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYWhkIACgkQuwUzVZGdMxTWdQCfb6wdIBuvQhD+f3ML4VbMdFu+
pgYAn0YLmc+nXSnJNNqOBa/rLsxokr9e
=bmNw
-----END PGP SIGNATURE-----

--Apple-Mail=_0902409C-0EAD-4585-9093-E6631DE4BA26--
