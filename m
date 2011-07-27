Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 709464C803E4
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 09:14:19 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6REDil0015892;
	Wed, 27 Jul 2011 09:13:45 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1311775601.3739.57.camel@elmorro>
Date: Wed, 27 Jul 2011 09:13:45 -0500
Message-Id: <2DB3E1E0-792B-42A6-8858-CD20970EB9DB@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
	<1311756356.2344.332.camel@rex>
	<66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
	<1311774620.3739.49.camel@elmorro>
	<05457C84-88D1-4D72-99B2-A750AFD52895@kernel.crashing.org>
	<1311775601.3739.57.camel@elmorro>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 14:14:19 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 27, 2011, at 9:06 AM, Tom Zanussi wrote:

> On Wed, 2011-07-27 at 06:53 -0700, Kumar Gala wrote:
>> On Jul 27, 2011, at 8:50 AM, Tom Zanussi wrote:
>>=20
>>> Hi Kumar,
>>>=20
>>> For meta-intel, it's pretty simple and is summarized by this blurb =
from
>>> the meta-intel MAINTAINERS file:=20
>>>=20
>>> "Please submit any patches against meta-intel BSPs to the Yocto =
mailing
>>> list (yocto@yoctoproject.org)."
>>>=20
>>> Basically, new patches get submitted to the mailing list, go through =
the
>>> standard on-list comment and review process, and then get pulled =
into
>>> master by whoever maintains the BSP when everything looks good.
>>>=20
>>> Hope that helps,
>>>=20
>>> Tom
>>=20
>> Ok, same model would work for meta-fsl-ppc.  The one question I have =
is if it make sense to migrate such patches over to =
'yocto-bsp@yoctoproject.org' list.
>>=20
>=20
> Hmm, I completely forgot about that list, and apparently everybody =
else
> has too (no messages in it).  It's also not linked to from anywhere on
> the Yocto site that I can see e.g. Community | Mailing Lists.
>=20
> Personally I'd prefer less fragmentation of lists, and think it would
> get better review and exposure on the yocto list, but if it makes more
> sense to people to start using the yocto-bsp list, fine with me...
>=20
> Tom
>=20
>> - k
>=20

I'm good w/just using the main yocto list for now until traffic gets to =
a point we think it makes sense to split it off

- k


