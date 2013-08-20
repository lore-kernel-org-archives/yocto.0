Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF512E013DF
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 16:42:39 -0700 (PDT)
X-ASG-Debug-ID: 1377042158-0499bf3773094a0001-yzSStA
Received: from MAGNI.atmoss (magni.atmoss [10.10.20.112]) by email.taser.com
	with ESMTP id 4FiUnEdLvHxe4lts; Tue, 20 Aug 2013 16:42:38 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.112) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Tue, 20 Aug 2013 16:42:38 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Tue, 20 Aug 2013 16:42:37 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.112
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] What are _virtual providers? and other Suffixes?
X-ASG-Orig-Subj: Re: [yocto] What are _virtual providers? and other Suffixes?
Thread-Index: AQHOnS6V/to3o0BtQkmd1sK54dxWKJmfJAIAgAANsoCAAASYAIAAApOA
Date: Tue, 20 Aug 2013 23:42:36 +0000
Message-ID: <2C678312-32B2-4184-9839-73D77D06525A@taser.com>
References: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
	<2234378.IGkL2KjiRV@helios>
	<78289786-2223-441A-B086-7E71B1314168@taser.com>
	<7610515.7dZZ0L6LcG@helios>
In-Reply-To: <7610515.7dZZ0L6LcG@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: magni.atmoss[10.10.20.112]
X-Barracuda-Start-Time: 1377042158
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
X-List-Received-Date: Tue, 20 Aug 2013 23:42:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <ABB76CA92203BD44B145B690A3AAA78A@taser.com>
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Thanks - that makes it clearer.  But now I have one other question to ask:

if  virtual/xyz is added to overrides when the item is dealt with, then in =
that case P_P_virtual/xyz_am335 has two overrides hanging off of the base v=
ariable PREFERRED_PROVIDER.

You also said earlier that the latest override applies, so is there some ru=
le for multiple conditionals on a variable?

E.g. What happens in a case like the following?

OVERRIDES=3D"foo1:bar2:car3"

VARIABLE_foo1_bar2 =3D "both"
VARIABLE_car3 =3D "last one"

what does VARIABLE wind up?  The first is "more specific" in that it matche=
s two values in overrides, whereas car is last, but less specific.

Thanks & sorry if I'm missing something simple.

Brad



On Aug 20, 2013, at 4:33 PM, Paul Eggleton <paul.eggleton@linux.intel.com>
 wrote:

> On Tuesday 20 August 2013 23:16:56 Brad Litterell wrote:
>> Thanks for taking the time to explain, very enlightening.  I think I
>> understood it, please allow me to play back my understanding:
>>=20
>> 1.  _virtual is part of the variable name, and is not a special type of
>> override.=20
>=20
> Actually, virtual/kernel is an override as well. The way a few variables,=
=20
> including PREFERRED_PROVIDER, are used is that OVERRIDES is set to includ=
e the=20
> item being dealt with when the variable is read, thus specifically with=20
> PREFERRED_PROVIDER you always override it with the name of the target you=
 wish=20
> to select the provider for.
>=20
>> 2.  PREFERRED_PROVIDER_virtual/kernel_am335x-evm breaks into:
>> "PREFERRED_PROVIDER_virtual/kernel" with an override condition of=20
>> "am335x-evm"
>=20
> Outside of the part of the code where it's actually read, yes. Within tha=
t=20
> code the override "virtual/kernel" will be applied when it's looking to s=
ee=20
> what the provider for "virtual/kernel" should be, and thus it will get th=
e=20
> appropriate value for the PREFERRED_PROVIDER variable. So technically the=
=20
> variable is just PREFERRED_PROVIDER.
>=20
>> 3. So for the jpeg case:
>>>> PREFERRED_PROVIDER_jpeg =3D "libjpeg-turbo"
>>>>=20
>>>> PREFERRED_PROVIDER_jpeg_armv5te =3D "jpeg"
>>=20
>> Could this have also been _virtual/jpeg?  It's just that some components=
 use
>> the _virtual convention and others don't?
>=20
> The prefix is virtual/ not _virtual, and as I mentioned earlier virtual/ =
is=20
> just a convention (although there are a few isolated parts of the code th=
at=20
> specifically look for the virtual/ prefix). The mechanism will work in th=
e same=20
> way here; recipes that need jpeg decoding have "jpeg" in DEPENDS and prov=
iding=20
> libjpeg-turbo has jpeg in its PROVIDES, which it does, we can select betw=
een=20
> two different recipes providing that - jpeg and libjpeg-turbo (where the =
latter=20
> is provided at all of course, i.e. when you have the meta-oe layer in you=
r=20
> configuration).=20
>=20
> I don't think there's any special reason we don't have virtual/jpeg rathe=
r=20
> than jpeg here other than that having multiple jpeg decoding libraries is=
 a=20
> relatively new situation compared to others such as virtual/kernel, and t=
here=20
> are already a bunch of recipes out there referring to "jpeg" in their DEP=
ENDS.=20
> (One wonders why there is a need for multiple jpeg decoding libraries in =
the=20
> first place, but that's a different can of worms...)
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


