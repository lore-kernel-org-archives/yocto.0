Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC71E0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 12:30:08 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:14281
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1SFsNh-0005iS-Dw; Thu, 05 Apr 2012 20:30:05 +0100
Mime-Version: 1.0 (Apple Message framework v1257)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <4F7D0834.3050907@windriver.com>
Date: Thu, 5 Apr 2012 20:30:01 +0100
Message-Id: <8A705AA7-3C70-49FE-B860-1851DBB07612@keylevel.com>
References: <09F81BC0-4DBE-4792-9B3E-E68510C3A28C@keylevel.com>
	<4F7D0834.3050907@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Edison BSP SRCREV
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
X-List-Received-Date: Thu, 05 Apr 2012 19:30:09 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

On 5 Apr 2012, at 03:49, Bruce Ashfield wrote:

> On 12-04-04 6:36 PM, Chris Tapp wrote:
>> I've been following the "BSP Development Example" section of the =
"Yocto Project Development Manual" for a new BSP called "mybsp". This =
results in the following in linux-yocto_3.0.bbappend:
>>=20
>> COMPATIBLE_MACHINE_mybsp =3D "mybsp"
>> KMACHINE_mybsp  =3D "yocto/standard/common-pc/base"
>> KERNEL_FEATURES_append_mybsp +=3D " cfg/smp.scc"
>>=20
>> SRCREV_machine_pn-linux-yocto_mybsp ?=3D =
"f153b0eb8264dc1e69f59d4c9173619feb4d5bd9"
>> SRCREV_meta_pn-linux-yocto_mybsp ?=3D =
"a4ac64fe873f08ef718e2849b88914725dc99c1c"
>>=20
>> as I'm trying to base the BSP on common-pc/base.
>>=20
>> However, when I build I get an error telling me that the machine =
SRCREV is not valid:
>>=20
>> Log data follows:
>> | ERROR f153b0eb8264dc1e69f59d4c9173619feb4d5bd9 is not a valid =
commit ID.
>> | The kernel source tree may be out of sync
>> | ERROR: Function 'do_validate_branches' failed (see ...
>>=20
>> The value is the commit tag I get at =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=3Dyoct=
o/standard/common-pc/base
>>=20
>> I'm guessing I've got the wrong commit ID here ;-) What should I be =
using? Do I need the commit ID for the 3.0.18 tagged commit at
>> =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tag/?h=3Dyocto/s=
tandard/common-pc/base&id=3Dv3.0.18 or something else ?
>>=20
>> I'm using the tarball method described in the example, not local git.
>=20
> It's like that in edison we switched to a kernel repo that only takes
> -stable updates (not unlike the upstream -stable).
>=20
> So look for the commit IDs here:
>=20
> git://git.yoctoproject.org/linux-yocto-3.0-1.1.x.git
>=20
> Sounds like a doc might need a tweak.

Thanks, that's got it sorted. And yes, it would be nice if the doc =
explained how to get the IDs for a base kernel :-)

Just need to go through the kernel configuration steps now...

Chris Tapp

opensource@keylevel.com
www.keylevel.com=

