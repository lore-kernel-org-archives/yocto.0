Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2F1EF4C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 11:29:31 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6FGSpuj012909;
	Fri, 15 Jul 2011 11:28:51 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1310737029.20015.1234.camel@rex>
Date: Fri, 15 Jul 2011 11:28:50 -0500
Message-Id: <B48E0575-508A-46B1-9571-307EBE7E7465@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
	<8719D03F-32DE-4A41-9E6D-06617BD60790@kernel.crashing.org>
	<1310737029.20015.1234.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: toolchain queries
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
X-List-Received-Date: Fri, 15 Jul 2011 16:29:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 15, 2011, at 8:37 AM, Richard Purdie wrote:

> On Fri, 2011-07-15 at 08:33 -0500, Kumar Gala wrote:
>> On Jul 14, 2011, at 9:36 PM, Kumar Gala wrote:
>>=20
>>> Where is the best place to ask questions and try and get support for =
adding some toolchain variations in?
>>>=20
>>> I'm wanting to add support in for a few different flavors of PPC =
that are not currently supported:
>>>=20
>>> * e500v2 (gcc needs --enable-e500_double, eglibc=20
>>> * e5500 (64-bit embedded ppc)
>>> * e5500 - multilib support for 32/64-bit
>>>=20
>>=20
>> The other reason I ask is the recipes today don't seem to use (or =
allow for use of) --with-cpu.
>>=20
>> Wondering who is the expect on these recipes to discuss such issues =
with.
>=20
> The tune files (conf/machine/include/tune*) usually set the march and
> mcpu options which are added to CFLAGS. Does that provide the
> functionality you're looking for?
>=20

No, I'm dealing with different configure issues for gcc, eglibc for =
these targets:

PPC e500v2
PPC e5500 (64-bit, multilib)

- k=

