Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D94D4E0027F
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 11:55:33 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1TDgTV-0000Z0-Ow; Mon, 17 Sep 2012 19:55:17 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAJTo0LYTX-GODP55NMJWJs5x7BjKeq94zdBVDLHr=Uc4TpvgNA@mail.gmail.com>
Date: Mon, 17 Sep 2012 19:55:16 +0100
Message-Id: <BF8FAF1E-ACFC-4997-BD83-69B23C7559E2@keylevel.com>
References: <9FB2A3C0-3081-424E-BC26-002559D3EA83@keylevel.com>
	<CAJTo0LYTX-GODP55NMJWJs5x7BjKeq94zdBVDLHr=Uc4TpvgNA@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
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
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: bbappends for MESA
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
X-List-Received-Date: Mon, 17 Sep 2012 18:55:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On 17 Sep 2012, at 09:29, Burton, Ross wrote:

> On 17 September 2012 09:09, Chris Tapp <opensource@keylevel.com> =
wrote:
>> I want to enable glut in mesa from within a layer so I can run with =
an unmodified brach (e.g Denzil). All I need to do is:
>>=20
>> 1) Add the SRC_URI to mesa-7.11.inc;
>> 2) Add a couple of LIB_DEPS, add a couple of packages and modify =
EXTRA_OECONF (it has --disable-glut) in mesa-common.inc
>>=20
>> Can I do this using .bbappend files? I can see a couple of issues:
>>=20
>> 1) The SRC_URI checksum currently in mesa-7.11.inc doesn't specify a =
filename. I suspect this isn't going to work too well if I add a =
specific for the glut download. Or will the generic checksum still match =
against the existing (non-named) file?
>>=20
>> 2) How do I modify EXTRA_OECONF to change the --disable-glut in =
mesa-common to --enable-glut?
>=20
> GLUT isn't part of Mesa since 6.4 (released 2005), and Mesa recommend
> to use freeglut:
>=20
> "2.3 Where is the GLUT library?
>=20
> GLUT (OpenGL Utility Toolkit) is no longer in the separate
> MesaGLUT-x.y.z.tar.gz file. If you don't already have GLUT installed,
> you should grab freeglut."

Will, it's still there for 7.11 as that's what I've been building ;-) =
However, it certainly looks to have gone in 8.x, so thank's for the =
heads-up !

> Freeglut can be build standalone and won't need any bbappends.


Yes, that works perfectly. Thanks again.

Chris Tapp

opensource@keylevel.com
www.keylevel.com


