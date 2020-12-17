Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
 by mx.groups.io with SMTP id smtpd.web09.3652.1608239096768056085
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Dec 2020 13:04:57 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: herbrechtsmeier.net, ip: 85.13.157.12, mailfrom: stefan@herbrechtsmeier.net)
Received: from [192.168.178.45] (i59F77EC5.versanet.de [89.247.126.197])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 071F911A1C88;
	Thu, 17 Dec 2020 22:04:53 +0100 (CET)
Subject: Re: [yocto] Cross compiler which runs on the target architecture
To: Peter <peteasa@gmail.com>, yocto@lists.yoctoproject.org
References: <129586ad-8b40-3b2b-c81f-b53ef3a54950@herbrechtsmeier.net>
 <13792.1608231552106661417@lists.yoctoproject.org>
From: "Stefan Herbrechtsmeier" <stefan@herbrechtsmeier.net>
Message-ID: <15af761e-9004-fa5e-6338-9eadcc7987b8@herbrechtsmeier.net>
Date: Thu, 17 Dec 2020 22:04:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <13792.1608231552106661417@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi Peter,

Am 17.12.20 um 19:59 schrieb Peter:
>     I dont think there were further discussions.
>=20
> The proof of concept layer is=20
> http://layers.openembedded.org/layerindex/branch/master/layer/meta-exot=
ic/=20
> - https://github.com/peteasa/meta-exotic/wiki.=C2=A0 I created a set of=
 cross=20
> compilers for the Epiphany processor=20
> http://www.adapteva.com/epiphanyiii/ using this layer and the layer=20
> https://github.com/peteasa/meta-epiphany that builds the specific cross=
=20
> compilers for that processor.=C2=A0 It worked quite well with yocto-1.7=
.1 so=20
> it's quite an old bit of code, however the ideas could work in a more=20
> recent versions of Yocto.
>=20
> In summary the yocto-1.7.1 code had three variables of interest - BUILD=
:=20
> for example the system of the build machine; HOST: for example the host=
=20
> system on which the executable will run; TARGET: for example the system=
=20
> that the compiler output will be created for.=C2=A0 The meta-exotic lay=
er=20
> introduces a fourth EXOTIC_TARGET and this allows us to differentiate=20
> between the build machine, host system and the system that the compiled=
=20
> Linux kernel runs on.=C2=A0 I called it EXOTIC because if the compiled =
Linux=20
> kernel and applications needs to communicate with a remote accelerator=20
> with a different system then as far as most of the Yocto build is=20
> concerned this fourth system is foreign to the embedded product (ie=20
> exotic) that the Linux kernel and applications are built on.
>=20
> I call it a proof of concept because at the time it seemed to me that=20
> the sensible "fix" would be to introduce these four macro's into Yocto=20
> itself so that Yocto had 4 rather than 3 selectable system (build=20
> machine, host machine, target machine and exotic machine).=C2=A0 In the=
=20
> absence of full Yocto support for these 4 I used the Yocto parser rules=
=20
> to update the --target, --host variables in cross compilers to match th=
e=20
> appropriate specification.=C2=A0 See=20
> https://github.com/peteasa/meta-exotic/wiki/Introducing-EXOTIC-defines=20
> for a more detailed discussion with examples.
>=20
> I know that Yocto has moved on a lot since I produced the EXOTIC layer=20
> so if there is a good way to handle the creation of the various cross=20
> compilers that that is a good thing.=C2=A0 In my case my Exotic target=20
> allowed me to create both code that ran directly on the Epiphany=20
> processor (an accelerator attached to the arm-poky-linux-gnueabi=20
> embedded system) and a cross compiler environment that allowed me to=20
> build code for both the Epiphany accelerator and the=20
> arm-poky-linux-gnueabi embedded system from the same SDK running on the=
=20
> SDK machine of my choice.=C2=A0 Use of the four variables allowed me to=
 make=20
> gcc / applications for any of the following combinations:
>=20
> --host=3Dbuild_machine --target=3Dbuild_machine
>=20
> --host=3Dbuild_machine --target=3DSDK_machine
>=20
> --host=3Darm_target --target=3Darm_target
>=20
> --host=3DSDK_machine --target=3Darm_target
>=20
> --host=3Dbuild_machine --target=3DEpiphany_accelerator
>=20
> --host=3DSDK_machine --target=3DEpiphany_accelerator
>=20
> --host=3Darm_target --target=3DEpiphany_accelerator
>=20
> Yes it complex, but these are the necessary combinations if you want to=
=20
> create a complete system that provides support for an embedded product=20
> with an accelerator and provides an SDK environment so that you can=20
> build locally and then download the binary to the embedded systems.
>=20
> All I can say is it worked for me!

Thanks for the detail explanation of your solution.

The problem I see is that your solution doesn't scale. What happens if=20
your system have a second not Linux system beside the accelerator like a=20
power management unit?

Why you doesn't use multilib? It looks like the only missing part is the=20
combination of host=3Dmachine and target=3Dmultilib.

Regards
   Stefan
