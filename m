Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC105E00C92; Mon, 21 Sep 2015 22:27:54 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A664EE00978
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 22:27:49 -0700 (PDT)
Received: by padbj2 with SMTP id bj2so12478113pad.3
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 22:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=d3XdR+nNdI6wT5f3qDKU+OggSYzHjQZiySY9Pd1nCFE=;
	b=iPOizIjYfcobbC5Cqn9W8Zp5CePWT6I38rumP/qfKYDbkoItDlQL4MCehLc4i56S0M
	Zif5fmYW55p4xm39IONJx4AzoGmStaqeO7t73CiaN3pyIUp9Eq43dL+bvQKAZdRvaPL2
	j2ZA7ETWOiBX4uQ+829wV31ODgad5i2Wcr35gi7+S9hRE9g7JpdCCcD+WGIR7bBumMqw
	GbUrV6Mrf0OBlBVtJb1fwP/wdArT0e+c0QNTvUJB08rNlHnRMkikkrGw3eoJM3GrylRQ
	GTrc3In4ecmnDf4wzh6pgjtm6sItQtEU+ufAWBF8KsLtxXKt8TqvHULAfVPcuPMlJS1f
	3Zaw==
X-Received: by 10.68.218.104 with SMTP id pf8mr29388268pbc.31.1442899669466;
	Mon, 21 Sep 2015 22:27:49 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:1d30:3dc9:9cc5:501d?
	([2601:646:8601:4580:1d30:3dc9:9cc5:501d])
	by smtp.gmail.com with ESMTPSA id
	vw7sm28010785pab.15.2015.09.21.22.27.48
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 21 Sep 2015 22:27:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5600C15B.2020908@gmail.com>
Date: Mon, 21 Sep 2015 22:27:47 -0700
Message-Id: <417BEB52-B48B-43DC-BEFF-C0D1475399B4@gmail.com>
References: <5600C15B.2020908@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: specify compiler version in recipe
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
X-List-Received-Date: Tue, 22 Sep 2015 05:27:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Sep 21, 2015, at 7:47 PM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> Hello,
>=20
> It looks like I already know the answer to this one... ;-)
>=20
> I'm guessing it isn't possible to specify the compiler version in a
> recipe? That's probably way too late in the parse stage?
>=20
> There are some vendor Linux kernels for some BSPs that are old enough =
to
> pre-date the:
>=20
>    fatal error: linux/compiler-gcc5.h: No such file or directory

back port the needed patch from upstream kernel. No other solution will =
be comprehensive.

>=20
> issue. Which means we have to rely on users reading the README and
> updating their conf/local.conf files to include
>=20
>    GCCVERSION =3D "4.9%"
>=20
> Unfortunately that process is error-prone. It would be great to have
> that occur automatically. In other words: if you want to use the
> community/default/upstream kernel then use the latest compiler (but =
you
> won't have accelerated graphics). If you want accelerated graphics =
then
> you have to PREFER an older kernel *and* specify which version of gcc =
to
> use in your conf/local.conf.
>=20
> Can anyone think of a clever trick for this one?
>=20
> Are BSP maintainers patching their old kernels to support post-gcc-5.0
> versions?
>=20
> Best regards,
>    Trevor
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


