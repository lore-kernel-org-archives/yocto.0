Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83185E00CA5; Sat,  2 Apr 2016 01:13:10 -0700 (PDT)
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
	*      [209.85.220.43 listed in list.dnswl.org]
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52494E00BB9
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 01:13:04 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id tt10so107579527pab.3
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 01:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=KGcMjt5t5mOTWq0WGkVjjEm75844OT4TRsA3b73loa4=;
	b=GVnVy7PBH+n0rDRAdKxzxmH2zGFnQSs0nM+ki4p0G42syjBNHiuweEkXgnJXhT4/Oy
	IsyEdW5U7RYXqSOEq9+/js9M5B5qyR+gnO6/g0OqquBSO1WuCa15uyFuEPkMEOjTj1+G
	/+CmX0HY/Ule9n6jYgv7MAwYx4N26g26L5+xvj0DKPAMjXecCVLw3YGNKWplYM2XcNag
	RE6hobgBwXq/Hc6eo0NoBUeQF7sH+I3rPGKcambvPqzuygH+KMDeMI3cY9PhbyKLI4rG
	RGrDFpJFaS33N4uZGXYQKVpN3sTP9BAE1o8r0TQljNFW3Bh/Ci6H6B0ha2WG5xfwDFXE
	M8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=KGcMjt5t5mOTWq0WGkVjjEm75844OT4TRsA3b73loa4=;
	b=mUBJZZ/ib60lxlSDB60zEJuRyk/OUvo6GfgDIQE4XW9B9U71AN9L1p+jeB+SgF764f
	08SvzngTTeGlb4qFe9t2MeUYe4q2LSXYOiYajetJh4bTNbmDdyfZtTABQpcLyhqS3wf4
	jNTkjutZh7XTkSU9sVFYnN55BaB2mICmLtt0pWWY33ADg4HHT5+h0dg5mWXHPbu+XQE4
	Hd1ZM8qOYgS9fFYnnzzb0IV5P7eQAxchFEkWPN+MBQwB7cS1+j55PzMpjmSZcAAWOOz5
	ODw5Vr4ztPJNW6Xez79GEJ4qFAn2ewbXDjI/Xx06Jla6fZkGLJ8K1Ogsr6Xwgr0LtDe/
	iLew==
X-Gm-Message-State: AD7BkJIxPVIAtQ5CkHFEAakTJ5YCAFWps8/tduW4pekALdlRFQq9wD6yVkO4CfsyoMzsBQ==
X-Received: by 10.66.249.166 with SMTP id yv6mr34053063pac.91.1459584784096;
	Sat, 02 Apr 2016 01:13:04 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:1156:ef7c:5e3a:2bb9?
	([2601:646:8800:5a9a:1156:ef7c:5e3a:2bb9])
	by smtp.gmail.com with ESMTPSA id
	ml5sm27038637pab.2.2016.04.02.01.13.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 02 Apr 2016 01:13:03 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828C1F@kihagwinex01.int.kistler.com>
Date: Sat, 2 Apr 2016 01:12:58 -0700
Message-Id: <4D44EDDF-E832-4E62-AB3A-AE560D9B0F7C@gmail.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E6680194828956@kihagwinex01.int.kistler.com>
	<F6CD090A69E64C4289DC608E1C5D2024253C7ACB@DE08W1305.global.ds.honeywell.com>
	<91B4C1B91AAEFD42AC985EA0F3D4E6680194828C1F@kihagwinex01.int.kistler.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to enforce installation of image specific config file/package
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
X-List-Received-Date: Sat, 02 Apr 2016 08:13:10 -0000
X-Groupsio-MsgNum: 29251
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9D73285F-C4EA-4CD6-A04B-C3D13924A3E2";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_9D73285F-C4EA-4CD6-A04B-C3D13924A3E2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


> On Apr 1, 2016, at 5:38 AM, Isak Lichtenstein =
<Isak.Lichtenstein@kistler.com> wrote:
>=20
> Hi Jo=EBl,
>>=20
>> Hi,
>>=20
>> One idea may be to create one recipe per configuration file.
>> So in each image recipe, you would add one of those recipes to
>> IMAGE_INSTALL_append.
>=20
> That's exactly what I'm doing now. But as my base package "A" is in a
> layer that is used by other developers, I would like to enforce =
somehow
> that every image containing this package also provides a config =
package
> for it.

you can use bitbake diagnostics in a image post process function to =
implement this logic
or in a bbclass which is inherited by every image you build.

--Apple-Mail=_9D73285F-C4EA-4CD6-A04B-C3D13924A3E2
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb/fw8ACgkQuwUzVZGdMxTOcACfbuia1ABqS8vJg1WuC8dP62LK
R9MAn3Y63mLy9xf1fFZ1Z2UATrw9z1n0
=0JNd
-----END PGP SIGNATURE-----

--Apple-Mail=_9D73285F-C4EA-4CD6-A04B-C3D13924A3E2--
