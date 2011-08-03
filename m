Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id DC4A14C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 09:04:29 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p73E4K2m013981;
	Wed, 3 Aug 2011 09:04:21 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237913700F07@ORSMSX101.amr.corp.intel.com>
Date: Wed, 3 Aug 2011 09:04:23 -0500
Message-Id: <39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<D778EEB2-3D41-4E3C-A27B-F725748E8BCC@kernel.crashing.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237913700F07@ORSMSX101.amr.corp.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
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
X-List-Received-Date: Wed, 03 Aug 2011 14:04:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Bug submitted:

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1323

My question still stands even w/o it being in formal docs.

- k

On Aug 2, 2011, at 11:29 AM, Rifenbark, Scott M wrote:

> Is the problem here that we need better documentation on using a =
prebuilt toolchain?  I will have to learn more about the context of the =
problem from someone.  The bug could just be against documentation in =
general and specify the need for "better documentation using a prebuilt =
toolchain."
>=20
> ScottR
>=20
> -----Original Message-----
> From: Kumar Gala [mailto:galak@kernel.crashing.org]=20
> Sent: Tuesday, August 02, 2011 9:10 AM
> To: Stewart, David C
> Cc: 'yocto@yoctoproject.org'; Rifenbark, Scott M
> Subject: Re: [yocto] examples / docs on utilizing an external =
toolchain
>=20
> I can, but not sure what the bug is.
>=20
> - k
>=20
> On Jul 28, 2011, at 11:39 PM, Stewart, David C wrote:
>=20
>> Scott - I have had a couple of questions about this exact topic. Can =
you please submit a bug on this? Thanks.=20
>>=20
>> Sent from my Blackberry
>>=20
>> ----- Original Message -----
>> From: Kumar Gala [mailto:galak@kernel.crashing.org]
>> Sent: Wednesday, July 27, 2011 08:37 PM
>> To: Yocto discussion list <yocto@yoctoproject.org>
>> Subject: [yocto] examples / docs on utilizing an external toolchain
>>=20
>> It seems like there is a way to use a prebuilt toolchain with poky =
but no real details.
>>=20
>> Some refs in the docs like:
>>=20
>> POKYMODE
>> Toolchain selector. It can be external toolchain built from Poky or =
few supported combinations of upstream GCC or CodeSourcery Labs =
toolchain.
>>=20
>> But grepping the code there doesn't seem to be any actual use of =
POKYMODE.  There seems to be some references even on the autobuilder =
about this 'nightly-external-toolchain'.  So wondering what the details =
where on how to configure things to use an external toolchain.
>>=20
>> - k
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


