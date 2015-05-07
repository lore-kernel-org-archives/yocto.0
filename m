Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD998E008DC; Wed,  6 May 2015 23:35:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8877CE007B6
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 23:35:08 -0700 (PDT)
Received: by pacyx8 with SMTP id yx8so31549723pac.1
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 23:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=QB/x0LpJu1nQkLXNxu3FUZy7yV2d9PBNyf/tyST+e3w=;
	b=Ivv86Lg/clqbSj9kCirauSJXLZU9SLFTHFcddx3JfXFKzSsEBbL/VyWpLReFudTI2n
	VQv3k7Gj1IPqw48+TzYnP3+Ni6uhY+q+DdE6YEQL2SMt4fnED34hQ4QQHu4LTs6GKlQv
	NYVKqJseVzIMbMKynZYtm2YmCa4VxjCqgPMdoaaGjazWTafndjPLPmrSBUYp9K7+9eSU
	WGG/J3ZpmlNzTz0Xz1GtdxSqP+TqUD3ts63u18WZimOfmxrOTkzmoGdNL4OuOoj1hRop
	MoWm+bw7bTfpxmdD/aiiD7MUwymYetFP5w97ZCaX6ZzwiHO3GgZcVO5PAuDD9Wg69QKp
	i1QA==
X-Received: by 10.66.156.198 with SMTP id wg6mr4292394pab.126.1430980508488;
	Wed, 06 May 2015 23:35:08 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:2019:32dd:e815:cffd?
	([2601:9:3580:84c:2019:32dd:e815:cffd])
	by mx.google.com with ESMTPSA id ck4sm966003pbc.67.2015.05.06.23.35.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 06 May 2015 23:35:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
X-Pgp-Agent: GPGMail 2.5b6
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1430942166-22772-1-git-send-email-akuster808@gmail.com>
Date: Wed, 6 May 2015 23:35:06 -0700
Message-Id: <5E5765E1-6304-40B4-A039-37EDBA1F359F@gmail.com>
References: <1430942166-22772-1-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.2098)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] libewf: GCC5.x build fix
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
X-List-Received-Date: Thu, 07 May 2015 06:35:10 -0000
X-Groupsio-MsgNum: 24728
Content-Type: multipart/signed;
	boundary="Apple-Mail=_0BB2FBF8-C2EC-4B43-B7AB-8D91CBBD6BE3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_0BB2FBF8-C2EC-4B43-B7AB-8D91CBBD6BE3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 6, 2015, at 12:56 PM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> +#Needed for gcc 5
> +CPPFLAGS +=3D " -std=3Dgnu89"

thats a workaround. If you are at it then see if you can fix the package =
for it to support proper c99


--Apple-Mail=_0BB2FBF8-C2EC-4B43-B7AB-8D91CBBD6BE3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlVLB5oACgkQuwUzVZGdMxTDJACeOlhh6NwfO4AwMV75773S+VFK
+BYAn01TgDjs/4jbA6J8mnc1yxmprFdn
=RvI6
-----END PGP SIGNATURE-----

--Apple-Mail=_0BB2FBF8-C2EC-4B43-B7AB-8D91CBBD6BE3--
