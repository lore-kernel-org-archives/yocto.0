Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3612CE0044D
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 13:16:31 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:27103
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SOx1I-0006NF-Eb; Mon, 30 Apr 2012 21:16:28 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F9EA067.5030806@windriver.com>
Date: Mon, 30 Apr 2012 21:16:25 +0100
Message-Id: <D98BDF90-3361-4255-BE28-F53A645862CD@keylevel.com>
References: <82CCA538-B495-44B3-8E06-F13282FAC541@keylevel.com>
	<4F9EA067.5030806@windriver.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1257)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: BSP kernel configuration redefines config options
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
X-List-Received-Date: Mon, 30 Apr 2012 20:16:31 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 30 Apr 2012, at 15:23, Bruce Ashfield wrote:

> On 12-04-30 10:20 AM, Chris Tapp wrote:
>> I've got a BSP that has the following kernel configuration =
linux-yocto_3.0.bbappend:
>>=20
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>=20
>> COMPATIBLE_MACHINE_mybsp =3D "mybsp"
>> KMACHINE_mybsp  =3D "yocto/standard/common-pc/base"
>>=20
>> SRC_URI +=3D " file://defconfig"
>>=20
>> SRCREV_machine_pn-linux-yocto_mybsp ?=3D =
"d7e81e7f975c57c581ce13446adf023f95d9fd9f"
>> SRCREV_meta_pn-linux-yocto_mybsp ?=3D =
"d386e09f316e03061c088d2b13a48605c20fb3a6"
>>=20
>> This builds ok, but I get a note that says "There were 43 kernel =
config options redefined during processing this BSP". I assume this is =
because the defconfig file is at odds with the kernel I've selected as =
the base for the BSP. Is it possible to get this note to 'go away' ?
>=20
> Yes, that's exactly what would be triggering it. It's currently
> not controlled via a flag, since it is technically a value add :)

Yes, I suspected a 'conflict of interest' here ;-)

> But to make it go away, I'd just suggest overriding =
do_kernel_configcheck()
> in your layer.

Is that all that happens in here, or would I be losing something I may =
want to know about as well?

> Cheers,
>=20
> Bruce
>=20
>>=20
>> I'm running under 6.0.1 and haven't spotted anything in the user =
manuals that I think would help.
>>=20
>> Chris Tapp
>>=20
>> opensource@keylevel.com
>> www.keylevel.com
>>=20
>>=20
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20


