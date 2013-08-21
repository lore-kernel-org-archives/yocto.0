Return-Path: <bradl@taser.com>
Received: from email.taser.com (email.taser.com [74.206.119.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABAC8E01562
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 09:27:15 -0700 (PDT)
X-ASG-Debug-ID: 1377102433-0499bf377117410001-yzSStA
Received: from LOKI.atmoss (loki.atmoss [10.10.20.113]) by email.taser.com
	with ESMTP id ymWRmM5kXffVvFT2; Wed, 21 Aug 2013 09:27:13 -0700 (MST)
X-Barracuda-Envelope-From: bradl@taser.com
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
Received: from TI-THOR.tasernet.com (172.16.1.113) by email.taser.com
	(10.10.20.113) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Wed, 21 Aug 2013 09:27:13 -0700
Received: from TI-ODIN.tasernet.com ([fe80::64ff:7320:e6e7:27c8]) by
	TI-THOR.tasernet.com ([fe80::7c49:ae21:6650:2789%22]) with mapi id
	14.02.0342.003; Wed, 21 Aug 2013 09:27:13 -0700
X-Barracuda-RBL-Trusted-Forwarder: 10.10.20.113
From: Brad Litterell <bradl@taser.com>
X-Barracuda-BWL-IP: fe80::64ff:7320:e6e7:27c8
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] What are _virtual providers? and other Suffixes?
X-ASG-Orig-Subj: Re: [yocto] What are _virtual providers? and other Suffixes?
Thread-Index: AQHOnS6V/to3o0BtQkmd1sK54dxWKJmfJAIAgAANsoCAAASYAIAAApOAgAD23QCAACHYAA==
Date: Wed, 21 Aug 2013 16:27:12 +0000
Message-ID: <BFFC4468-023C-4575-9BDD-EBA6C1C5A401@taser.com>
References: <66996BFE-C7A8-4986-9D47-B1EF6827AD1A@taser.com>
	<7610515.7dZZ0L6LcG@helios>
	<2C678312-32B2-4184-9839-73D77D06525A@taser.com>
	<11108180.KlZSWrBJZD@helios>
In-Reply-To: <11108180.KlZSWrBJZD@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.1.103]
MIME-Version: 1.0
X-Barracuda-Connect: loki.atmoss[10.10.20.113]
X-Barracuda-Start-Time: 1377102433
X-Barracuda-URL: http://10.10.20.59:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at taser.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.139018
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
X-List-Received-Date: Wed, 21 Aug 2013 16:27:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9020B5765022DC468DEFA0930F5463DB@taser.com>
Content-Transfer-Encoding: quoted-printable

Paul, thanks so much!=20

On Aug 21, 2013, at 7:26 AM, Paul Eggleton <paul.eggleton@linux.intel.com> =
wrote:

> Hi Brad,
>=20
> On Tuesday 20 August 2013 23:42:36 Brad Litterell wrote:
>> Thanks - that makes it clearer.  But now I have one other question to as=
k:
>>=20
>> if  virtual/xyz is added to overrides when the item is dealt with, then =
in
>> that case P_P_virtual/xyz_am335 has two overrides hanging off of the bas=
e
>> variable PREFERRED_PROVIDER.
>>=20
>> You also said earlier that the latest override applies, so is there some
>> rule for multiple conditionals on a variable?
>=20
> Yes, effectively all must be in OVERRIDES for the assignment statement to=
 take=20
> effect.
>=20
>> E.g. What happens in a case like the following?
>>=20
>> OVERRIDES=3D"foo1:bar2:car3"
>>=20
>> VARIABLE_foo1_bar2 =3D "both"
>> VARIABLE_car3 =3D "last one"
>>=20
>> what does VARIABLE wind up?  The first is "more specific" in that it mat=
ches
>> two values in overrides, whereas car is last, but less specific.
>=20
> I would have thought that the value would have been "last one" however=20
> experimentation shows that "both" is what you actually get. I'm not exact=
ly=20
> sure why. In practice I don't think we hit this kind of situation too oft=
en=20
> though, i.e. a mix of double and single overrides where the single overri=
de=20
> needs to take precedence.
>=20
> Cheers,
> Paul
>=20
> --=20
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


