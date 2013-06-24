Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95056E014BF
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 02:04:12 -0700 (PDT)
Received: from ad.chargestorm.se (193.235.91.228) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Mon, 24 Jun 2013 11:04:08 +0200
Date: Mon, 24 Jun 2013 11:04:58 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20130624090457.GA22807@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
	<51C7BD29.6060607@windriver.com>
	<CACzyEJ-A-U=0XV3qUxV-14+Cxn+r8aZOrM+g7EKBXJWdHD=T=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACzyEJ-A-U=0XV3qUxV-14+Cxn+r8aZOrM+g7EKBXJWdHD=T=A@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: How NOT to include kernel image to the rootfs?
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
X-List-Received-Date: Mon, 24 Jun 2013 09:04:15 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Insop Song <insop.song@gmail.com> [130624 10:56]:
> I've tried=A0
> - by commenting "RDEPENDS_kernel-base ?=3D "kernel-image"" from kernel.bb=
class
> - and/or adding=A0"RDEPENDS_kernel-base =3D "" in my image definition

You should add this line in either your local.conf, or in a .bbappend
for the kernel recipe in question.

> But neither worked.

That should make it work.


Cheers,
Anders


--=20
Anders Darander
ChargeStorm AB / eStorm AB

