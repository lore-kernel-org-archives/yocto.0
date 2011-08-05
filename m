Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 193AFE011B7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 17:05:36 -0700 (PDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p7505clj017549;
	Thu, 4 Aug 2011 19:05:38 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1312469410.14274.0.camel@rex>
Date: Thu, 4 Aug 2011 19:05:40 -0500
Message-Id: <F2101BA1-133A-4FBB-9CB8-A4A85413233C@kernel.crashing.org>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<D778EEB2-3D41-4E3C-A27B-F725748E8BCC@kernel.crashing.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237913700F07@ORSMSX101.amr.corp.intel.com>
	<39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
	<1312381376.2344.671.camel@rex>
	<6A516D77-2A23-4163-BF82-2E05D67AC50D@kernel.crashing.org>
	<1312384349.2344.677.camel@rex>
	<FB790EA9-69A9-4C7E-98BE-C21A7F256878@kernel.crashing.org>
	<1312469410.14274.0.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Subject: Re: examples / docs on utilizing an external toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Aug 2011 00:05:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

>>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1323
>>>>>>=20
>>>>>> My question still stands even w/o it being in formal docs.
>>>>>=20
>>>>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core =
changes.
>>>>> I'd be interested to know where we've missed the references to it =
and
>>>>> get to get those references fixed.
>>>>=20
>>>> Ok, but how does one use TCMODE?  :)
>>>>=20
>>>> is there an example around anywhere?
>>>=20
>>> I'll explain on the condition that someone actually documents this =
;-).
>>>=20
>>> TCMODE determines which of the files in
>>> meta/conf/distro/include/tcmode-* is used. It defaults to "default" =
and
>>> our default toolchain definition is in tcmode-default.inc.
>>>=20
>>> There is another example there which is "external-csl2008q3". As you =
can
>>> see from the tcmode-external-csl2008q3 file, it sets up the system =
to
>>> use an external toolchain instead.
>>>=20
>>> So you can define one of these files in your layer and then the =
system
>>> can select alternative toolchain configurations.
>>>=20
>>> Does that help? :)
>>>=20
>>> There is a similar TCLIBC variable which controls which libc is used
>>> (eglibc or uclibc).
>>=20
>> Yes that helps.  So it looks as if today there is not a means to =
point
>> to SDK prebuilt toolchain via this means.
>=20
> We have supported this in the past but it got messy and I'd really
> prefer people to use sstate for this.
>=20
> You obviously can use the SDK toolchain as a prebuilt external =
toolchain
> though since its no different from any other external toolchain.


What got mess about it?  Seems like a poky built sdk toolchain should =
work as an external toolchain w/o too much issue.

- k=

