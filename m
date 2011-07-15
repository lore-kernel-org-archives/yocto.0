Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 282484C80836
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 16:13:10 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6FLD5vB024379;
	Fri, 15 Jul 2011 16:13:06 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <CAMKF1sp701jBJ3zX-bGURsdf0=wOJw3+rjw8sEEM3Gs5NfERUg@mail.gmail.com>
Date: Fri, 15 Jul 2011 16:13:06 -0500
Message-Id: <AC4E5BFF-54F0-4FDB-8F7F-BC8D519C12CF@kernel.crashing.org>
References: <04B51588-62E1-4D77-8BB4-5EF0FB3DC73D@kernel.crashing.org>
	<CAMKF1sp701jBJ3zX-bGURsdf0=wOJw3+rjw8sEEM3Gs5NfERUg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Fri, 15 Jul 2011 21:13:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 15, 2011, at 2:28 PM, Khem Raj wrote:

> On Thu, Jul 14, 2011 at 7:36 PM, Kumar Gala =
<galak@kernel.crashing.org> wrote:
>> Where is the best place to ask questions and try and get support for =
adding some toolchain variations in?
>>=20
>> I'm wanting to add support in for a few different flavors of PPC that =
are not currently supported:
>>=20
>> * e500v2 (gcc needs --enable-e500_double, eglibc
>=20
> this means ABI change especially due to double formats. This should be
> doable in machine.conf
> files or tune files.

how so?  What can I set in there that would actually get passed into =
gcc's configure (not really seeing anything).  Also what exactly do you =
mean by a machine.conf

>> * e5500 (64-bit embedded ppc)
>=20
> this is new I guess. Its like adding a new arch to OE. See around
> =
http://lists.linuxtogo.org/pipermail/openembedded-devel/2010-September/024=
661.html
> is roughly what can be helpful in getting ppc64 going

Thanks, will take a look at that.

- k=

