Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9829BE003D7; Sat,  8 Aug 2015 12:37:29 -0700 (PDT)
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
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7636CE00349
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 12:37:23 -0700 (PDT)
Received: by pabxd6 with SMTP id xd6so92267552pab.2
	for <yocto@yoctoproject.org>; Sat, 08 Aug 2015 12:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=foaqMwg8tBBjwKuAskjdvgokotPQkS8718LVf7qOV9Q=;
	b=QpAaYr/pvulSZmCy14xWgIG47A9oKhsd+a2uZjjFe3BGnQSPIj0u6n2PdMlbIaRyJL
	hkAapFBp+0YdjllG8C62B2vxxRv2fciC1qYBW70j3BeR/yk6IMRdYGLGFqJfe82MrRVT
	PY3eRdVLHdkt1IRniFN0e3ACwWUchR3yBgpNPGTNAWaoQXXmes1iRzcLGsLVgHTZ1fjI
	X+lFqFtXNTWF/BBu7a2RBbsN0LkH7DT6b73xQ6o1uxOUiyd35tu00j/wjsubndBCfEuH
	bewkh5AptdrdBw1My5qH+5oSIweJSPeZ1te+lv4yr9bW7qgAsnoWLFdJFLReMhlDTeU/
	RUJA==
X-Received: by 10.69.2.34 with SMTP id bl2mr28577123pbd.165.1439062642851;
	Sat, 08 Aug 2015 12:37:22 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:61b5:b56b:3665:2b08?
	([2601:646:8601:4580:61b5:b56b:3665:2b08])
	by smtp.gmail.com with ESMTPSA id p1sm14442903pdb.3.2015.08.08.12.37.22
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 08 Aug 2015 12:37:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAPzboycMBBs_d+06jX+CWCZ_9yaxvEbPOBzQrxDu6i3cEOgsLA@mail.gmail.com>
Date: Sat, 8 Aug 2015 12:37:21 -0700
Message-Id: <18E70ED4-2470-4A3D-ACCD-6C3590FCDDC1@gmail.com>
References: <CAPzboycMBBs_d+06jX+CWCZ_9yaxvEbPOBzQrxDu6i3cEOgsLA@mail.gmail.com>
To: Adam Rossi <ac.rossi@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: autotools --prefix ignored?
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
X-List-Received-Date: Sat, 08 Aug 2015 19:37:29 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Aug 7, 2015, at 7:28 AM, Adam Rossi <ac.rossi@gmail.com> wrote:
>=20
> Hi folks. I have tried a number of different ways to control the
> installation location of an auto tools-based project. =46rom the =
command
> line I would run:
>=20
> ./bootstrap
> ./configure --prefix=3D/opt/myfolder
> make
> make install
>=20
> In my recipe I tried a number of ways to keep the binary out of
> /usr/bin, but none seem to work. Relevant parts of the recipe:
>=20
> inherit autotools
> EXTRA_OECONF =3D "--prefix=3D${D}/opt/myfolder=E2=80=9D

you should look into the build scripts run.do_configure for this recipe
and see if its honoring your =E2=80=94prefix and ${D} in there is wrong =
since this
is the prefix you want it to appear in on target which usually is =
relative to /
>=20
> The above is ignored, auto tools puts the results in /usr/bin
>=20
> I also tried to override the do configure:
>=20
> do_configure() {
>        oe_runconf --prefix=3D${D}/opt/myfolder
> }
>=20
> But I get complaints that the configure script is not found. I realize
> I am trying to swim upstream by controlling this location, but the
> heart wants what the heart wants. Any ideas?
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


