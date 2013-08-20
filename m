Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6F24E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 16:16:58 -0700 (PDT)
X-ASG-Debug-ID: 1377040617-0499bf377208e40001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id HyRrZAHJjs0MyGIx; Tue, 20 Aug 2013 16:16:57 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 20 Aug 2013 16:16:57 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Tue, 20 Aug 2013 16:16:56 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] What are _virtual providers? and other Suffixes?
X-ASG-Orig-Subj: Re: [yocto] What are _virtual providers? and other Suffixes?
Thread-Index: AQHOnS6V/to3o0BtQkmd1sK54dxWKJmfJAIAgAANsoA=
Date: Tue, 20 Aug 2013 23:16:56 +0000
Message-ID: <78289786-2223-441A-B086-7E71B1314168@taser.com>
References: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
	<2234378.IGkL2KjiRV@helios>
In-Reply-To: <2234378.IGkL2KjiRV@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1377040617
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.138950
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: "<yocto@yoctoproject.org>" <yocto@yoctoproject.org>
Subject: Re: What are _virtual providers? and other Suffixes?
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
X-List-Received-Date: Tue, 20 Aug 2013 23:17:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A6BBF1F089D2B241BE1F78B29D7A4EA8@taser.com>
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Thanks for taking the time to explain, very enlightening.  I think I unders=
tood it, please allow me to play back my understanding:

1.  _virtual is part of the variable name, and is not a special type of ove=
rride.
2.  PREFERRED_PROVIDER_virtual/kernel_am335x-evm breaks into: "PREFERRED_PR=
OVIDER_virtual/kernel" with an override condition of  "am335x-evm"
3. So for the jpeg case:

>> PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"
>>=20
>> PREFERRED_PROVIDER_jpeg_armv5te =3D "jpeg"

Could this have also been _virtual/jpeg?  It's just that some components us=
e the _virtual convention and others don't?


Do I have it right?

Thanks,
Brad



On Aug 20, 2013, at 3:27 PM, Paul Eggleton <paul.eggleton@linux.intel.com>
 wrote:

> Hi Brad,
>=20
> On Monday 19 August 2013 22:51:04 Brad Litterell wrote:
>> I searched the Yocto Mega Manual, but am still somewhat mystified by the
>> suffix formatting of various variable - especially virtual ones like thi=
s:
>>=20
>>=20
>> PREFERRED_PROVIDER_virtual/gettext =3D "gettext"
>>=20
>> PREFERRED_PROVIDER_virtual/kernel_am335x-evm =3D "linux-ti-staging"
>>=20
>> PREFERRED_PROVIDER_virtual/bootloader_am335x-evm =3D "u-boot-ti-staging"
>=20
> These are setting PREFERRED_PROVIDER for a number of targets. "virtual/xy=
z" is
> a convention we use where there are multiple providers for a particular
> component, so a recipe that requires that component can have virtual/xyz =
in
> its DEPENDS, each provider declares virtual/xyz in its PROVIDES, and then=
 in
> configuration the desired recipe to provide that can be selected via=20
> PREFERRED_PROVIDER_virtual/xyz =3D "...".
>=20
> The second two examples have an additional override which makes them only
> applicable for a specific machine (am335x-evm). If you want to know how t=
his
> mechanism works have a look at this:
>=20
> http://docs.openembedded.org/bitbake/html/ch02.html#id439023
>=20
> (We're in the process of updating the BitBake manual, so this old version=
 will have to suffice.)
>=20
>> Also, there seems to be some sort of prioritization going on with the
>> multiple levels underscore characters in places like this:
>>=20
>>=20
>> # Set the PREFERRED_PROVIDER for jpeg functionality based on the MACHINE
>>=20
>> # architecture.  For armv7a devices libjpeg-turbo should be used to take
>>=20
>> # advantage of the SIMD instructions.
>>=20
>> PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"
>>=20
>> PREFERRED_PROVIDER_jpeg_armv5te =3D "jpeg"
>>=20
>>=20
>> (all examples from the arago project in arago-prefs.inc)
>>=20
>> Is there a succinct way of viewing these suffixes that will allow me to =
wrap
>> my head around their various & myriad versions?
>=20
> OVERRIDES is listed in order so that overrides for the later items are
> preferred. If you run bitbake -e | less and search for OVERRIDES (with th=
e /
> key) you can see what the value is for the global environment; here is an
> example for my current configuration:
>=20
> # $OVERRIDES [3 operations]
> #   set conf/bitbake.conf:670
> #     "${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:=
${MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable"
> #   set conf/bitbake.conf:671
> #     [vardepsexclude] "MACHINEOVERRIDES"
> #   postdot /home/paul/poky/poky/meta/conf/distro/include/tclibc-eglibc.i=
nc:9
> #     "${LIBCOVERRIDE}"
> # computed:
> #   "${TARGET_OS}:${TRANSLATED_TARGET_ARCH}:build-${BUILD_OS}:pn-${PN}:${=
MACHINEOVERRIDES}:${DISTROOVERRIDES}:${CLASSOVERRIDE}:forcevariable${LIBCOV=
ERRIDE}"
> OVERRIDES=3D"linux:i586:build-linux:pn-bblayers:x86:qemuall:qemux86:poky:=
class-target:forcevariable:libc-glibc"
>=20
> Putting the values of all these variables into OVERRIDES gives us a way o=
f
> setting variable values per-machine, per-architecture etc. Based on the
> above value, if I had:
>=20
> SOMEVAR =3D "value1"
> SOMEVAR_qemux86 =3D "anothervalue"
> SOMEVAR_i586 =3D "yetanothervalue"
>=20
> The computed value of SOMEVAR would be "anothervalue". If MACHINE were
> changed to, say, "qemumips", then OVERRIDES would change and the value=20
> of SOMEVAR would become "value1".
>=20
>> Am I right in assuming the "variable name" consists of the uppercase par=
se
>> (regardless of number of underscores)?
>=20
> That is our (fairly strict) convention in OpenEmbedded, but FWIW I don't
> think bitbake itself enforces that; it's all dependent on what is in OVER=
RIDES
> and where the _ character appears in the left hand side of the assignment
> statement.
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


