Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2535BE00B88; Fri, 30 Oct 2015 17:39:50 -0700 (PDT)
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
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3B1AE00B5D
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 17:39:45 -0700 (PDT)
Received: by pasz6 with SMTP id z6so88228484pas.2
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 17:39:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=a7czA5bMl4kmQmf4OqPB+aHBPxOe7C0q+oMHmXbUE1c=;
	b=f43q1r+MSdC1Hahki0mps43Io6cR24/5czushR9DErDzQEqFpVSzwfnz5biiPFUZAc
	cYD0S75b3/FPL0UVMo018QqhyBuzylNi+tl8HSU9hQGnB51Pr2OzV7nFBi127suYPZWC
	mOPt2AAjnreQgm/efuxk7gTGzX9b3TV1sMjvmaIXLV2WnuvjH53gru20yanfrGYuBHzR
	uZ7fm53q8nC95vZgcTNcGxjRynAaj/kBE7dMkzKUWKZekQYDMx2f+S5hGNpBDXpCpRwa
	taY3xjjWR/zi2g9VfGP/fMZgkyYgYEoYo65FTtzPxr9WhnSPRPjs23mVcMY+Db0syU7H
	Bb4g==
X-Received: by 10.66.157.36 with SMTP id wj4mr11991666pab.36.1446251984693;
	Fri, 30 Oct 2015 17:39:44 -0700 (PDT)
Received: from ?IPv6:2601:641:c000:1d0:9139:22be:56a:125d?
	([2601:641:c000:1d0:9139:22be:56a:125d])
	by smtp.gmail.com with ESMTPSA id
	db8sm10375450pad.43.2015.10.30.17.39.43
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 30 Oct 2015 17:39:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.1 \(3096.5\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <alpine.LFD.2.20.1510300734560.24819@localhost>
Date: Fri, 30 Oct 2015 17:39:41 -0700
Message-Id: <5217F08A-8EC2-442E-8503-C2AAC59C1DA7@gmail.com>
References: <alpine.LFD.2.20.1510300734560.24819@localhost>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Mailer: Apple Mail (2.3096.5)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "bitbake meta-toolchain", QA Issue, library in wrong location
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
X-List-Received-Date: Sat, 31 Oct 2015 00:39:50 -0000
X-Groupsio-MsgNum: 27105
Content-Type: multipart/signed;
	boundary="Apple-Mail=_FAAA1DE2-C42C-4E66-B63E-8EB68FF2D441";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_FAAA1DE2-C42C-4E66-B63E-8EB68FF2D441
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 30, 2015, at 4:36 AM, Robert P. J. Day <rpjday@crashcourse.ca> =
wrote:
>=20
>=20
>  goofing around, did a "bitbake meta-toolchain" for my BBB
> configuration and, toward the end, got:
>=20
> WARNING: QA Issue: gcc-cross-canadian-arm-dbg: found library in wrong
> location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1.so.0.0.0
> gcc-cross-canadian-arm-dbg: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0
> gcc-cross-canadian-arm-dbg: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so
> gcc-cross-canadian-arm: found library in wrong location:
> =
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnu=
eabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so
> [libdir]
> WARNING: QA Issue: nativesdk-qemu rdepends on nativesdk-libbz2, but it
> isn't a build dependency? [build-deps]
>=20
>  is the above anything i need be concerned about? it's still baking
> so i haven't had a chance to test it yet.

I think it should be ok. For cross canadian may be this check should be =
disabled.

>=20
> rday
>=20
> --
>=20
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Robert P. J. Day                                 Ottawa, Ontario, =
CANADA
>                        http://crashcourse.ca
>=20
> Twitter:                                       =
http://twitter.com/rpjday
> LinkedIn:                               =
http://ca.linkedin.com/in/rpjday
> =
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_FAAA1DE2-C42C-4E66-B63E-8EB68FF2D441
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlY0DdEACgkQuwUzVZGdMxS2SACfUG1lDnTNda9rXDZZAbsAPP8M
+9UAniINu/JcPLXfze+JWQT1U7zlCfBc
=NOa7
-----END PGP SIGNATURE-----

--Apple-Mail=_FAAA1DE2-C42C-4E66-B63E-8EB68FF2D441--
