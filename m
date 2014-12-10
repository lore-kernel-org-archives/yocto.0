Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92070E0082F; Wed, 10 Dec 2014 11:00:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_WEB autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [69.241.105.242 listed in dnsbl.sorbs.net]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E4BE00461
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 11:00:17 -0800 (PST)
Received: by mail-pa0-f45.google.com with SMTP id lf10so2744085pab.18
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 11:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=XgtLpw+cwIa7TGLEwlYwyL4aDqbm23YLmVE9Ug0W/tk=;
	b=WTBSCmW9JEqzdJONRiBJhkTShOs0GBDD1iPWgTv5NIxGQmUndBI1GrmzUTSUGdRo8H
	dV03Eh4dC3X/Doy16YQ3zrQ1cWVgqj0oSIFhCyCB//uxDe5KmH4vIg/xxb8fGDxHsZRL
	OmliP1LoS3Fix2bCk60BEXGWeyCWgDNgAVlCneaHEeYoLYr25prgIOsHhcHBKKeRDV1g
	Ym0YkvO05oIOsqGlISR88V7jBdqWAz3Wgs5w+boLA4keZQTlrMI4Fp9qqc4wFrkt9P0V
	iABkjOfA+HsxTQa/dxnNmPdeNWXnpFd1Dim4I6QdI1KMOFUK/+Lh/dzs4+EH625wZ6AB
	4Smw==
X-Received: by 10.70.101.97 with SMTP id ff1mr9782447pdb.142.1418238016872;
	Wed, 10 Dec 2014 11:00:16 -0800 (PST)
Received: from 10.177.195.168-ra01.everett.wa.seattle.comcast.net
	(fw01.everett.wa.seattle.comcast.net. [69.241.105.242])
	by mx.google.com with ESMTPSA id my2sm4864330pdb.86.2014.12.10.11.00.15
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Dec 2014 11:00:16 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.1 \(1993\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>
Date: Wed, 10 Dec 2014 11:00:14 -0800
Message-Id: <FABD1EBC-088D-41C9-8CD0-F7D2D4493896@gmail.com>
References: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
X-Mailer: Apple Mail (2.1993)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: parallel build of multiple machine/os?
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
X-List-Received-Date: Wed, 10 Dec 2014 19:00:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Dec 10, 2014, at 10:52 AM, Koehler, Yannick (HP Networking) =
<yannick.koehler@hp.com> wrote:
>=20
> Can Yocto build for example in a single bitbake call an image for x86, =
ppc, arm, others?  Or is the call to bitbake limited to a single =
architecture?  And if so, how?
>=20
> I see that lots of *-native package are built, and I guess is that for =
each machine/os those would be reused, as such, it appears it would be a =
benefit to be able to build multiple package version for different =
architecture/distro/machine in a single invocation of bitbake.
>=20

parallel multi-machine builds have been discussed but not thought of =
worth doing. you could however share
lot of common packages among machines sequentially.

MACHINE=3Dfoo bitbake x
MACHINE=3Dbar bitbake y

the second invocation would be able to share many artifacts from first =
builds e.g. native packages
and nativesdk packages etc. so its generally faster than first build.


> --
> Yannick Koehler
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


