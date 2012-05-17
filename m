Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F640E01421
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 14:07:54 -0700 (PDT)
Received: from [109.224.129.17] (port=64453
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SV7vN-0006hj-4j; Thu, 17 May 2012 22:07:53 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4904220.mFpDsjEpuq@helios>
Date: Thu, 17 May 2012 22:07:50 +0100
Message-Id: <850EEF2D-6A67-4987-B202-A24461737544@keylevel.com>
References: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
	<4904220.mFpDsjEpuq@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Per-machine DEPENDS
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
X-List-Received-Date: Thu, 17 May 2012 21:07:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 17 May 2012, at 21:27, Paul Eggleton wrote:

> On Thursday 17 May 2012 21:10:10 Chris Tapp wrote:
>> Is it possible to have the (R)DEPENDS list vary depending on the =
machine
>> being built?
>>=20
>> For example, I want 'this-bit' to be included for a 'machine-1' =
build, but
>> not 'machine-2'.
>>=20
>> Something like:
>>=20
>> DEPENDS =3D "common-stuff"
>>=20
>> DEPENDS_machine-1 =3D "${DEPENDS} this-stuff"
>=20
> Yes, that will work. If the DEPENDS change implies some different =
configuration=20
> I'd recommend being explicit about it as well e.g. via EXTRA_OECONF or=20=

> whatever is appropriate; this is particularly important for the case =
where the=20
> extra dependency is not included and the configure script for the =
application=20
> would auto-detect the presence of the additional dependency in the =
absence of=20
> an explicit configure option.

Thanks. Is there some documentation that explains how the suffixes are =
build up, when they are used, etc. ?

> Also, ideally these machine-specific bits should live in a bbappend =
within the=20
> BSP for that machine, thus keeping the recipe itself more or less =
generic.

Yes, that makes sense. I'll give it a go.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




