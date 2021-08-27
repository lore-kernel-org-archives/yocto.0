Subject: Re: Extensible SDK - runtime packages installation
To: yocto@lists.yoctoproject.org
From: "d0ku" <darthtyranus666666@gmail.com>
X-Originating-Location: Luban, Lower Silesia, PL (178.43.56.75)
X-Originating-Platform: Linux Chrome 87
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Aug 2021 08:14:53 -0700
References: <CAAdfB0JOpUsNrn9ouZw45ApXvhkFaFa4P31fW7WF1aX5RgRybg@mail.gmail.com>
In-Reply-To: <CAAdfB0JOpUsNrn9ouZw45ApXvhkFaFa4P31fW7WF1aX5RgRybg@mail.gmail.com>
Message-ID: <31466.1630077293187359377@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PV9zsmAiMtrbgHX3R3AX"

--PV9zsmAiMtrbgHX3R3AX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Ok, I was able to find the answer to the third point:

>=20
>=20
>=20
> Am I possibly missing some configuration steps? *In Yocto environment the
> PATH gets expanded with `bin/perl-native` automatically,* but I wasn't ab=
le
> to pinpoint what file/task actually does it.
>=20
>=20

The *bolded* sentence is not actually true. Adding *perl-native* to the *DE=
PENDS* of a recipe, does not cause it to be automatically picked up during =
the build. For this to happen the *perlnative* bbclass has to be inherited.=
 Same design is in place for at least python, probably more packages.

This brings me to the followup question:
How can I mimic the *perlnative* or *python3native* behaviour on the eSDK l=
evel? Is this only possible via the *devtool* and recipes, and so can't be =
done "outside" of the Yocto environment, e.g. using ${CC} and ${CXX} variab=
les?

Regards,
Jakub

--PV9zsmAiMtrbgHX3R3AX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Ok, I was able to find the answer to the third point:</p>
<blockquote>
<p>&nbsp;Am I possibly missing some configuration steps? <strong>In Yocto e=
nvironment the PATH gets expanded with `bin/perl-native` automatically,</st=
rong> but I wasn't able to pinpoint what file/task actually does it.</p>
</blockquote>
The&nbsp;<strong>bolded</strong> sentence is not actually true. Adding&nbsp=
;<strong>perl-native</strong> to the&nbsp;<strong>DEPENDS</strong> of a rec=
ipe, does not cause it to be automatically picked up during the build. For =
this to happen the&nbsp;<strong>perlnative</strong> bbclass has to be inher=
ited. Same design is in place for at least python, probably more packages.<=
br /><br />This brings me to the followup question:<br />How can I mimic th=
e&nbsp;<strong>perlnative</strong> or&nbsp;<strong>python3native</strong> b=
ehaviour on the eSDK level? Is this only possible via the&nbsp;<strong>devt=
ool</strong> and recipes, and so can't be done "outside" of the Yocto envir=
onment, e.g. using ${CC} and ${CXX} variables?<br /><br />Regards,<br />Jak=
ub

--PV9zsmAiMtrbgHX3R3AX--
