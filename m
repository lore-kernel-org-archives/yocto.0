Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C350E00B68; Mon, 14 Dec 2015 16:55:29 -0800 (PST)
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
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FD1BE00404
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 16:55:27 -0800 (PST)
Received: by pacwq6 with SMTP id wq6so112526852pac.1
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 16:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ddhS8mlpewCTBcl0lJG7H+kpGGLarrxX2+lFjyqanwc=;
	b=KUYG9r8b84X6KIWzrBY00PwCNVRYmf76LqkXIVJwUtd8GAPpIPYKPY9iTd29CcN5qe
	vjEaerxEI2ZeAx3iUeHYmK5icFU0OLgCmllHNI7Xex+udpSQJZUmJxsW9/LREMP577au
	PInC+OB8n4L7oCsmDENONJD6+lH7g0tL9AbPOboKNvxoEsvRD3No7Z8T1it+aWsBoOsu
	9aDmXE+G5N8PN9OTPpmroITptcgklDrSB1R2kY1Z7jx4eJvZ4HRH6KWD98ueDDPOSl/Z
	JNn5Dn6btMW1aITb2YQq1YExVuXjBO7mv2zSFu3rXeOjQ+6x6SWuytKhNOCv26jqmSpV
	XBbQ==
X-Received: by 10.66.144.65 with SMTP id sk1mr49420465pab.126.1450140926757;
	Mon, 14 Dec 2015 16:55:26 -0800 (PST)
Received: from ?IPv6:2601:646:8802:5d5c:5c4d:b840:1a41:b442?
	([2601:646:8802:5d5c:5c4d:b840:1a41:b442])
	by smtp.gmail.com with ESMTPSA id
	fc6sm42376645pac.44.2015.12.14.16.55.25
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 14 Dec 2015 16:55:26 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <566E94C3.5040206@easyarm.com>
Date: Mon, 14 Dec 2015 16:55:25 -0800
Message-Id: <F749BEFC-511E-4A1E-A446-0175355CAF7F@gmail.com>
References: <566E94C3.5040206@easyarm.com>
To: Surya <surya.n@easyarm.com>
X-Mailer: Apple Mail (2.3112)
Cc: yocto@yoctoproject.org
Subject: Re: Qtmultimedia issue
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
X-List-Received-Date: Tue, 15 Dec 2015 00:55:29 -0000
X-Groupsio-MsgNum: 27713
Content-Type: multipart/signed;
	boundary="Apple-Mail=_01B7DEA6-DB07-47CD-AD2A-BB765591DD37";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_01B7DEA6-DB07-47CD-AD2A-BB765591DD37
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Dec 14, 2015, at 2:06 AM, Surya <surya.n@easyarm.com> wrote:
>=20
> Hello all,
>=20
> I need some help regarding qtmultimedia .Currently i am trying to =
build qt5.3.2 with qtwebengine .It builded properly without any error =
but when i am trying to using the "qmake" of this and build any graphic =
related applications ,it is showing some error as below:
>=20
> Project ERROR: Unknown module(s) in QT: script multimedia
>=20
> I have enabled both qtmultimedia  & qtscript by hob ,,but still no =
idea why its not taking that.
>=20

these need to be enabled and then qtbase needs to be rebuilt.

>=20
> Thanks & Regards
> Surya
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_01B7DEA6-DB07-47CD-AD2A-BB765591DD37
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlZvZP0ACgkQuwUzVZGdMxSvYACfRLzOfUhqnXpMEZs14nIjBhBp
oVQAnA7UijeiQXX6I5ONViNDZMOnYhI1
=C56/
-----END PGP SIGNATURE-----

--Apple-Mail=_01B7DEA6-DB07-47CD-AD2A-BB765591DD37--
