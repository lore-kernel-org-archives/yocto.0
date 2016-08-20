Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E139DE00C35; Fri, 19 Aug 2016 19:56:06 -0700 (PDT)
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
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BE81E00C0E
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 19:56:03 -0700 (PDT)
Received: by mail-pa0-f45.google.com with SMTP id ti13so21093694pac.0
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 19:56:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=8oNDwn1MW1svwMt5s5g8LCbUA5+7TEv0++9ztPTur0k=;
	b=a7E8ZsEx4J8NP/lNf/PkPxjhOVXkHJ0moiV7oPh/MAMSIpseR7jig+jPrHuxV1bC5V
	O4LjwzVcd/KO8Af5dSJYxe829j7W/KrBts1UMFmyS4SBaCjLR+k3ovepLjeJzBWHFHw5
	xuzaABRWi9xhmJJ0QOuvSXif+YkY7XSrfe0WTfmlQsaIpncQvea8dGmYdcJz+Q6cGbCD
	kWQ+QHAsGxkZMsmIMrLGbCngiwq3DcQuhrJP0vWfv8jP6g7spoSTxMBhjL5lI68kW182
	7XN9HljnVXQg/Vo9cBxlGPvZMwKYlr5/AMy8FAYjkE/bXHNyqCs8jgheQN/ihXLPA+io
	nNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=8oNDwn1MW1svwMt5s5g8LCbUA5+7TEv0++9ztPTur0k=;
	b=JGOE2Ip93Y5kEMBHW4VKBm2Rr62kQADExdizQtMHkzq6bs1jyxE1wAei7JxkcLd4Rp
	a5PJpiJi9tt7hf0lI9uJ5IjQ4E2vTNdP2rUcC7B9+rzAwerYQ4nZflFGKxHu2v2F9NuM
	/NRvWwjPgr4QAayIRtxKQoVOwt2S+VnH0n3iMMVM0cxn3IJQS/4gT5zPpPB3Z/rGCjaq
	UrkFBw6lNv+j3EXSrAiYq4mADTH28OOWIMKN+rI+9GM61s/XB9h+y4AD4BXEc9fYroMl
	uAgozyUi0ap1qhYelaMOi9Sq9F7IG/CkYkbfPDNEOa5bf+MZKWb8tqni8+P8qiFpMoLn
	/lBw==
X-Gm-Message-State: AEkoout+NkHkbUYrhREEp7qLMwbxK6OHj6MRvaZjLvyEaJ6iswUCUK/KM+cy9qmAwdptuA==
X-Received: by 10.67.13.196 with SMTP id fa4mr20053277pad.115.1471661763427;
	Fri, 19 Aug 2016 19:56:03 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:8da:4485:6211:8316?
	([2601:646:8882:b8c:8da:4485:6211:8316])
	by smtp.gmail.com with ESMTPSA id e68sm9617528pfk.1.2016.08.19.19.56.01
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 19 Aug 2016 19:56:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <e0446c96-4d86-7169-2c35-87bd04373496@windriver.com>
Date: Fri, 19 Aug 2016 19:56:01 -0700
Message-Id: <BA001D6E-F3F7-4E50-B7F9-EE8476019427@gmail.com>
References: <bd977914-50f2-b44a-b592-925f168ac199@windriver.com>
	<e0446c96-4d86-7169-2c35-87bd04373496@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: New prelink version
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
X-List-Received-Date: Sat, 20 Aug 2016 02:56:06 -0000
X-Groupsio-MsgNum: 31562
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C60E4A9A-CBDE-4D9B-912E-9D2924E52087";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C60E4A9A-CBDE-4D9B-912E-9D2924E52087
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 19, 2016, at 6:39 PM, Mark Hatle <mark.hatle@windriver.com> =
wrote:
>=20
> On 8/18/16 10:33 AM, Mark Hatle wrote:
>> I have issued a new prelink release today.
>>=20
>> git://git.yoctoproject.org/prelink-cross
>>=20
>> master branch: target based prelink
>> new release tag: 20160818
>>=20
>> cross_prelink branch: prelink w/ emulated 'rtld' (ld.so)
>> new release tag: 20160818_cross
>>=20
>>=20
>> =46rom the README file there are a few known issues:
>>=20
>> * The --preload option does not always work.  The preload1 test =
currently fails.
>>=20
>> * quick2 test will fail if you do not have static libc installed.
>>=20
>> * IFUNC on glibc.  glibc appears to have a bug related to specific =
IFUNC
>> ordering.  build_local_scope in glibc is processing depth first =
instead of
>> breadth-first processing as it should be.  The prelink-rtld version =
works
>> around this issue.  (Prelink-rtld is only available in the cross =
compile
>> version.)  See: =
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D9131
>>=20
>> * ARM & PPC: both are currently failing the reloc8 and reloc9 test
>> Further investigation is in progress on these items.  Until an =
explanation
>> is found, you should hold off using this for ARM and PPC.
>=20
> It was determined the above items are related to a bug most likely in =
binutils.
> The components failed to execute even before they were prelinked.  The =
prelinker
> is safe to use on ARM and PPC.

Do you have failing samples that are due to ld issues ?

>=20
> --Mark
>=20
>>=20
>> Changelog for the cross_prelink follows:
>>=20
>> Common changes:
>>=20
>> * Update configure.ac, libelf.m4 and */Makefile.am to avoid various =
auto* warnings
>> * Fixed a few compile warnings
>> * Add testcase for YP 9131 - IFUNC problem
>> * Fix LD_PRELOAD issues
>> * Fix section ordering problem (required for binutils-2.22)
>>=20
>> Cross prelink specific changes:
>>=20
>> * rtld: resync to glibc-2.23
>> * rtld: add additional debug scope support
>> * rtld: Add fix for YP 9131, IFUNC problem
>>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_C60E4A9A-CBDE-4D9B-912E-9D2924E52087
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAle3xsUACgkQuwUzVZGdMxSeAACeLeqnw54uzHl2L6kgoQdbgD49
YO8AoIX37JJYxQRZvJ2SGunUByB027cr
=rs5c
-----END PGP SIGNATURE-----

--Apple-Mail=_C60E4A9A-CBDE-4D9B-912E-9D2924E52087--
