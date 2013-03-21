Return-Path: <anders@chargestorm.se>
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D7F0E01471
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 12:07:25 -0700 (PDT)
Received: from ad.chargestorm.se (83.252.253.85) by stoexhub03.domain01.net
	(10.12.10.3) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Thu, 21 Mar 2013 20:07:22 +0100
Date: Thu, 21 Mar 2013 20:08:20 +0100
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20130321190816.GA16977@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <65D9329CA2AF94438F542D48F2A42E8317717841FB@GOT-SRV-005.QMATIC.local>
MIME-Version: 1.0
In-Reply-To: <65D9329CA2AF94438F542D48F2A42E8317717841FB@GOT-SRV-005.QMATIC.local>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Subject: Re: Creating tailored image without standard rootfs files
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
X-List-Received-Date: Thu, 21 Mar 2013 19:07:25 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

* Peter Bergin <Peter.Bergin@qmatic.com> [130321 16:10]:
> for my Yocto build I want to create two separate images as output because=
 in my
> system I have two separate partitions. One partition containing the root =
file
> system and one partition containing configuration and application data. W=
hat I
> want is to create an image only containing data and applications from my
> recipes that I can apply to my data partition.

Intresting question. Maybe someone will have a simpler answer than me,
as I might have some uses for this also.

> I have tried this approach:
> my-data-image.bb
> -------------------------------------------------------------------
> IMAGE_INSTALL =3D "my-application1-data \
>                               my-application2-data"
> IMAGE_FEATURES =3D ""
> IMAGE_LINGUAS =3D ""
> IMAGE_TYPES =3D =E2=80=9Ctar.gz=E2=80=9D

> inherit image
> ------------------------------------------------------------------

> When building this image the rootfs will contain /etc /dev /lib /var and =
init,
> directories that I do not want. I only want an output with my files from
> =E2=80=98my-application1-data=E2=80=99 and =E2=80=98my-application2-data=
=E2=80=99. Can anyone suggest me the
> best way forward?

I would probably approach this by creating a post-processing script,
that removes these automatically created directories. This is probably
the easiest and fastest way to fix this.

Another, slightly more interesting approach would be to patch up the
image creation, to allow for images like this by setting some extra flag
or EXTRA_IMAGE_FEATURE...

Cheers,
Anders

--=20
Anders Darander
ChargeStorm AB / eStorm AB

