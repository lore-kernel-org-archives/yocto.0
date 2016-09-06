Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 409A7E00D4A; Tue,  6 Sep 2016 10:12:27 -0700 (PDT)
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
	*      [209.85.220.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f65.google.com (mail-pa0-f65.google.com
	[209.85.220.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1731E00D33
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 10:12:25 -0700 (PDT)
Received: by mail-pa0-f65.google.com with SMTP id h5so853136pao.0
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 10:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=FjaYTF2TY2/fPDlL/tPhmOb/0uTBPGiBbnWPCGDkeus=;
	b=Q47L8edNWvZr+reYypMyiKj219VMglS61oLpOd9FEKnincCU2f23RbC6HWsBW0k7Tx
	9RK2MjfRLt4kdkbFhgsP7WxBgwQ/rLx66mRQCaDtKn+NeATih2cX6q18bl6GoMMM8xGG
	iWJv/cPQlC1yT+hdsH2tT7NckE7enAKv5rWXYbTvQbfUBFHXUnLVkE3mQMREh1T7Iq1i
	JJ9T8+xFx+DYtE5I7ybgrCveKx0f4sTlRkaPbJbY0EXF3I64lj+T7Fc/osKnZSSoMJag
	umTAbNURd5wr66lJMjtzw+tf/VfeyTNQUpE3KAFtBQpg5pccSxJxzvw52awrUX0QNeEF
	gUQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=FjaYTF2TY2/fPDlL/tPhmOb/0uTBPGiBbnWPCGDkeus=;
	b=VtBQJdE7sAp8Bpn8aTL9BlCZLxYTMpTcpgrWeL1qiLED9L83QsBdWEzSmOVZPOCknn
	V/Wz17kSPX0g1cb6TU4FMMuopeC3Hyev7871hE4viuDq5tfXWkD/7UnLghXYK9PWDbmv
	Q9tB0gLUyv3TVX+UevhHipW6T68G4vP9rOsgjt2tQNV/7ZnlRNsg69aYx2/jbrz/4HnY
	cYwHg8FGOWsaHT+bu53u7dSAKwM60LzJkwcBoGGWfSmu8GFDVvFaF8pqdR7BtejlZzf1
	UZv3hQCWKO8rQxABfYdtCKjJVRsG7Ket8I3YoRaT7mVebv11r+x5Z4OkUuibfuYuJ+pS
	tbNw==
X-Gm-Message-State: AE9vXwMCWQefEsAh7qfJUmHS5kw2Q0tpDCL7ryUKkUVBqJjZ0D+iYKHad/Kaqek7UoRRqQ==
X-Received: by 10.66.216.130 with SMTP id oq2mr74564078pac.89.1473181944662;
	Tue, 06 Sep 2016 10:12:24 -0700 (PDT)
Received: from ?IPv6:2601:647:4c00:3edf:99d4:c55f:fbd3:66fa?
	([2601:647:4c00:3edf:99d4:c55f:fbd3:66fa])
	by smtp.gmail.com with ESMTPSA id
	p4sm42390037pfp.60.2016.09.06.10.12.22
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Sep 2016 10:12:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5637116E3E13BE46B0D936BF364783C1F694D2@MAIA.sede.videotec.com>
Date: Tue, 6 Sep 2016 10:12:20 -0700
Message-Id: <0A389ECF-0B5C-4312-BB42-97EF21996E4B@gmail.com>
References: <5637116E3E13BE46B0D936BF364783C1F694D2@MAIA.sede.videotec.com>
To: Ottavio Campana <o.campana@videotec.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel with non standard source structure
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
X-List-Received-Date: Tue, 06 Sep 2016 17:12:27 -0000
X-Groupsio-MsgNum: 31803
Content-Type: multipart/signed;
	boundary="Apple-Mail=_3FCC3B87-4CDC-467F-924F-0040DE4E9770";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_3FCC3B87-4CDC-467F-924F-0040DE4E9770
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 29, 2016, at 11:41 PM, Ottavio Campana <o.campana@videotec.com> =
wrote:
>=20
> Hello,
>=20
> I'm trying to port the kernel compilation of a bsp to yocto. My =
problem is that this kernel has a bunch of drivers that are out of the =
kernel sources tree and all the includes are hard coded with an uncommon =
structure.
>=20
> To give you the idea, the source is organized in this way
>=20
> kernel/linux/ # Where the kernel sources are (there are pointers to =
the other directories)
> gpldrivers/ # Some drievrs with GPL license (there are pointers to the =
other directories)proprietarydrivers/ # Some drivers wit non free =
license (there are pointers to the other directories)
>=20
> Kernel and drivers are in git repository.
>=20
> I started to develop a recipe inhering from kernel, I am having doubts =
about setting the S and B variables
>=20
> S =3D "${WORKDIR}/git"
> B =3D "${WORKDIR}/git/kernel/linux"
>=20
> By using this settings, if I run bitbake -c devshell I enter into a =
kernel-source directory that has the directories kernel, gpldrivers and =
proprietarydrivers correctly copied.
>=20
> My problem is that at this point if I try to compile the kernel I get =
the error that in kernel-source there is no way to a make oldconfig.
>=20
> How can I have the recipe entering into kernel/linux before copying =
defconfig and starting compilation?


One option perhaps is that you write a recipe for your kernel proper and =
then write several recipes for your external modules.
this is a well known model in yocto world, you might even find examples =
in metadata on external kernel module recipes. This however would mean =
that you will have to do some cleanups in your kernel source =
organization which seems quite monolithic and entangled
as you describe it.

Other option would be to write your own do_compile and do_install steps =
and make the assumptions of source code locations
w.r.t. ${S}


>=20
> Thank you
>=20
> Ottavio
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_3FCC3B87-4CDC-467F-924F-0040DE4E9770
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlfO+PgACgkQuwUzVZGdMxRfTgCfZ2tjXZPXgprYd3Thc8Ias3UA
xYQAnj20EYSGncO+IdU3oP+T2AsrxwfT
=50r0
-----END PGP SIGNATURE-----

--Apple-Mail=_3FCC3B87-4CDC-467F-924F-0040DE4E9770--
