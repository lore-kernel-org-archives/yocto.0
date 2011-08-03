Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id EAE544C800E5
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 09:49:46 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p73EnfPB004439;
	Wed, 3 Aug 2011 09:49:41 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <201108031529.17776.paul.eggleton@linux.intel.com>
Date: Wed, 3 Aug 2011 09:49:44 -0500
Message-Id: <BAE8F4D8-4A85-435C-93DC-1DD174DA9AFE@kernel.crashing.org>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4B7@orsmsx501.amr.corp.intel.com>
	<39D3DACD-5A1F-4992-BB52-C581EAD4B17C@kernel.crashing.org>
	<1312381376.2344.671.camel@rex>
	<201108031529.17776.paul.eggleton@linux.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 03 Aug 2011 14:49:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Aug 3, 2011, at 9:29 AM, Paul Eggleton wrote:

> On Wednesday 03 August 2011 15:22:56 Richard Purdie wrote:
>> On Wed, 2011-08-03 at 09:04 -0500, Kumar Gala wrote:
>>> Bug submitted:
>>>=20
>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1323
>>>=20
>>> My question still stands even w/o it being in formal docs.
>>=20
>> FWIW, POKYMODE was replaced by TCMODE as part of the OE-Core changes.
>> I'd be interested to know where we've missed the references to it and
>> get to get those references fixed.
>=20
> git grep tells me we still have it in local.conf.sample in meta-yocto, =
as well=20
> as in the reference manual.

Yep, and not sure if the online docs:

=
http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html

are generated nightly or not?

- k=

