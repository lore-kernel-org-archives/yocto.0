Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E60AE008C8; Mon, 30 Nov 2015 15:22:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4DFFE00855
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 15:22:51 -0800 (PST)
Received: by padhx2 with SMTP id hx2so199624650pad.1
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 15:22:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=yekR3iFeMoxUQZSmWGXFRGQ+i46QVKkCTKn0mzategI=;
	b=HfYmjfbUg+lqKxfLQBRqP9VuedyMNwuferbKoRKANT5IlHs91WdMYBQMJeLWn0gjGJ
	QAF8JTPKQ324Ik2YM2Nso8+klWv7/RQM8UtTCbtQ9kRnG5tqLvqoVkwycHm8y+TmiJUW
	Ncje0H0KSSh+MaIybDiBVeMxsj7wi/NRdt4XpCc8wXjXhCsdxQXHMI3jAa4gA4PSIn1s
	YNXAqByCjlw6sDO4DSnCrwF8vuFYi2p9KT+5hVFcxZ4DSMssTTo5W1djrYLogT9GtucQ
	+R+QZ0H5zWi+08XBvvMJ8gGR8+KGc1Fjl8800hFsim//O3xb/OtUa2uRtATJ21hbZndd
	P68w==
X-Received: by 10.66.132.37 with SMTP id or5mr95705018pab.5.1448925771027;
	Mon, 30 Nov 2015 15:22:51 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:611f:d505:13d0:657f?
	([2601:646:8802:5d5c:611f:d505:13d0:657f])
	by smtp.gmail.com with ESMTPSA id
	y83sm7033053pfi.85.2015.11.30.15.22.50
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Nov 2015 15:22:50 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <565CD888.1090501@tibbo.com>
Date: Mon, 30 Nov 2015 15:22:50 -0800
Message-Id: <50087579-C0CA-4263-AA43-BBB28642E158@gmail.com>
References: <1448920985-995-1-git-send-email-alejandro.franco@linux.intel.com>
	<2603447.ByLEse0mF5@peggleto-mobl.ger.corp.intel.com>
	<565CD0DB.6010900@tibbo.com>
	<1EA640BB-A2C0-4B9C-93B0-0FC36DB98525@gmail.com>
	<565CD888.1090501@tibbo.com>
To: Dvorkin Dmitry <dvorkin@tibbo.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: strange QA issue - how to ignore automatic so dependency
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
X-List-Received-Date: Mon, 30 Nov 2015 23:22:52 -0000
X-Groupsio-MsgNum: 27527
Content-Type: multipart/signed;
	boundary="Apple-Mail=_5A573AE7-CC62-4870-BCF1-766F41F6042E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_5A573AE7-CC62-4870-BCF1-766F41F6042E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 30, 2015, at 3:15 PM, Dvorkin Dmitry <dvorkin@tibbo.com> wrote:
>=20
> I know. But
> it really does not require to have libX* in the system to successfully =
run JDK+our software
> We're using simple tar xvzf jdk-...tar.gz in all of our embedded =
systems, so I know what I'm talking about, sorry.

you are walking muddy water, I will caution you before I hand a chainsaw =
to you as I suggest something as below.
you can use patchelf or something like that on these binaries and remove =
the dependencies after unpacking them
run the .so in question via patchelf --remove-needed <deplib-to-remove>
and that will make shlibs code in OE not flag them

> This feature blocks my efforts to have a well-designed system with =
Poky/Yocto... :(

Well designed would mean to adhere to prerequisites as needed by =
prebuilt software you are using

>=20
>=20
> On 01.12.2015 02:06, Khem Raj wrote:
>>> On Nov 30, 2015, at 2:42 PM, Dvorkin Dmitry <dvorkin@tibbo.com> =
wrote:
>>>=20
>>>=20
>>> I'm trying to include binary JDK into my linux image.
>>> just unpacking jdk-...tar.gz into recipe image and packing it into =
RPM (I'm using RPM as base of my distribution).
>>>=20
>>> after adding
>>> INSANE_SKIP_${PN} =3D "file-rdeps ldflags dev-so build-deps"
>>> into recipe I've got no errors or warning while building recipe =
itself,
>>> RPM is created and it contains some dynamic libraries =
dependencies....
>>>=20
>>> but I've got error building rootfs with this recipe:
>>>=20
>>> ....(skipped)...
>>> Updating cache... ######################################## [100%]
>>>=20
>>> Computing transaction...error: Can't install =
tps-jdk-7u60+linux+arm+vfp+hflt-r0@cortexa8hf_vfp_neon: no package =
provides libXrender.so.1
>>>=20
>>> I can't include libXrender.so.1 into my image, I can't remove =
libraries from JDK.
>>>=20
>>> Is there any way to ignore this dependency?
>> No, and if you ignored it then this binary won=E2=80=99t function as =
expected on the system. So you should find out providers of missing
>> rdeps and add them to your image via depends
>>=20
>>> something like RPM_LDD_IGNORE_CHECK=3D"libX*"
>>>=20
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>=20


--Apple-Mail=_5A573AE7-CC62-4870-BCF1-766F41F6042E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZc2k0ACgkQuwUzVZGdMxS/eQCdHPvm0Qz5Vx1rT/cuM5C94y6P
8wUAnjJDIdP61Zloo2Cj5izvpT9GPBoX
=Oyw2
-----END PGP SIGNATURE-----

--Apple-Mail=_5A573AE7-CC62-4870-BCF1-766F41F6042E--
