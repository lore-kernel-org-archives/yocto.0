Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 937D6E0070B
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 11:47:32 -0700 (PDT)
Received: from [109.224.129.17] (port=55102
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1Sh3Sa-0003WE-5K; Tue, 19 Jun 2012 19:47:28 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <2266259.lx4CelsjGA@helios>
Date: Tue, 19 Jun 2012 19:47:24 +0100
Message-Id: <17553E0E-7415-401A-A91F-5406EAB6193A@keylevel.com>
References: <alpine.DEB.2.02.1206190818420.30655@oneiric>
	<2266259.lx4CelsjGA@helios>
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
Subject: Re: is it "IMAGE_INSTALL +=" or "IMAGE_INSTALL_append ="?
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
X-List-Received-Date: Tue, 19 Jun 2012 18:47:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 19 Jun 2012, at 18:52, Paul Eggleton wrote:

> On Tuesday 19 June 2012 08:22:00 Robert P. J. Day wrote:
>>  currently, the dev manual (Section 4.2.1) proposes the use of
>>=20
>>  IMAGE_INSTALL +=3D "strace"
>>=20
>> but the poky ref manual in the variable glossary explicitly
>> discourages that form, and instead recommends
>>=20
>>  IMAGE_INSTALL_append =3D " package-name"
>>=20
>>  can we agree that the "_append" form is preferred?  thoughts?
>=20
> The reference manual is a little unclear on what "ordering issues" =
means. +=3D=20
> works just fine, it's just that if you happen to use it at some point =
before=20
> core-image.bbclass line sets it with ?=3D (i.e. either in local.conf =
or before=20
> the "inherit core-image" line in your image recipe) the ?=3D line in =
core-
> image.bbclass will do nothing and you'll end up with much less in the=20=

> IMAGE_INSTALL list than you expected. If you use _append, you can have =
that=20
> anywhere you like and it will always work, with the caveat that if you =
forget=20
> to add a leading space in the value to be appended, things will break.
>=20
> Note that the part of 4.2.1 in the dev manual you refer to is =
specifically=20
> talking about making a copy of an image recipe and putting the =
IMAGE_INSTALL=20
> +=3D at the end, which will always work and won't suffer from any =
leading space=20
> issues. I'm not sure what we should change to improve this...

Is there a section that explains the order in which all these things =
happen? i.e. items in local.conf happen before/after...

Chris Tapp

opensource@keylevel.com
www.keylevel.com




