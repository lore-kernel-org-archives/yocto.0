Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web12.3507.1618878212076281677
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 17:23:32 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: redrectangle.org, ip: 217.70.183.197, mailfrom: robert.joslyn@redrectangle.org)
X-Originating-IP: 173.197.191.182
Received: from macbook-air.localdomain (rrcs-173-197-191-182.west.biz.rr.com [173.197.191.182])
	(Authenticated sender: robert.joslyn@redrectangle.org)
	by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 0C2CD1C0004;
	Tue, 20 Apr 2021 00:23:28 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Subject: Re: [yocto] [meta-gplv2] [PATCH] conf/distro: Add removal of btrfs-tools from util-linux ptest depends
From: "Robert Joslyn" <robert.joslyn@redrectangle.org>
In-Reply-To: <CAAnfSTsgWjNbpQHZs9wzL2T_3+Mi4FhngP23A8rBMgUur2Sayg@mail.gmail.com>
Date: Mon, 19 Apr 2021 17:23:25 -0700
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
Message-Id: <9C8F19BA-B505-43D5-8FA2-C4A643361C9C@redrectangle.org>
References: <20210419204657.1477082-1-richard.purdie@linuxfoundation.org>
 <CAAnfSTsgWjNbpQHZs9wzL2T_3+Mi4FhngP23A8rBMgUur2Sayg@mail.gmail.com>
To: Ross Burton <ross@burtonini.com>
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Just to clarify, btrfs-tools has always had an LGPL-3.0 library (libbtrfsut=
il), the recipe just never declared it before. Upstream is relicensing that=
 library to LGPL-2.1+, which should be done for the next release.

Sorry about this, I sent the update and didn=E2=80=99t realize it broke th=
e non-gplv3 builds. I=E2=80=99ll keep an eye out for the next upstream rele=
ase which should allow this patch to be reverted.

Thanks,
Robert

> On Apr 19, 2021, at 2:29 PM, Ross Burton <ross@burtonini.com> wrote:
>=20
> +1.
>=20
> Ross
>=20
> On Mon, 19 Apr 2021 at 21:47, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>>=20
>> btrfs-tools has changed to LGPL-3.1 so to allow util-linux to build,
>> remove the dependency from its ptest package. This may regress some
>> ptests but keeps the gplv2 layer working.
>>=20
>> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
>> ---
>> conf/distro/include/disable-gplv3.inc | 1 +
>> 1 file changed, 1 insertion(+)
>>=20
>> diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/includ=
e/disable-gplv3.inc
>> index bded378..3285543 100644
>> --- a/conf/distro/include/disable-gplv3.inc
>> +++ b/conf/distro/include/disable-gplv3.inc
>> @@ -1,3 +1,4 @@
>> INCOMPATIBLE_LICENSE =3D '*GPLv3*'
>> WARN_QA_remove =3D 'incompatible-license'
>> RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 =3D "python3-dbusmock"
>> +RDEPENDS_${PN}-ptest_remove_pn-util-linux =3D "btrfs-tools"
>> --
>> 2.30.2
>>=20
>>=20
>>=20
>>=20
>=20
>=20

