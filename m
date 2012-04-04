Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49AB4E0044D
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2012 15:36:15 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:10836
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SFYoI-0004pH-6x
	for yocto@yoctoproject.org; Wed, 04 Apr 2012 23:36:14 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 4 Apr 2012 23:36:11 +0100
Message-Id: <09F81BC0-4DBE-4792-9B3E-E68510C3A28C@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
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
Subject: Edison BSP SRCREV
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
X-List-Received-Date: Wed, 04 Apr 2012 22:36:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've been following the "BSP Development Example" section of the "Yocto =
Project Development Manual" for a new BSP called "mybsp". This results =
in the following in linux-yocto_3.0.bbappend:

COMPATIBLE_MACHINE_mybsp =3D "mybsp"
KMACHINE_mybsp  =3D "yocto/standard/common-pc/base"
KERNEL_FEATURES_append_mybsp +=3D " cfg/smp.scc"

SRCREV_machine_pn-linux-yocto_mybsp ?=3D =
"f153b0eb8264dc1e69f59d4c9173619feb4d5bd9"
SRCREV_meta_pn-linux-yocto_mybsp ?=3D =
"a4ac64fe873f08ef718e2849b88914725dc99c1c"

as I'm trying to base the BSP on common-pc/base.

However, when I build I get an error telling me that the machine SRCREV =
is not valid:

Log data follows:
| ERROR f153b0eb8264dc1e69f59d4c9173619feb4d5bd9 is not a valid commit =
ID.
| The kernel source tree may be out of sync
| ERROR: Function 'do_validate_branches' failed (see ...

The value is the commit tag I get at =
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/commit/?h=3Dyoct=
o/standard/common-pc/base

I'm guessing I've got the wrong commit ID here ;-) What should I be =
using? Do I need the commit ID for the 3.0.18 tagged commit at
=
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/tag/?h=3Dyocto/s=
tandard/common-pc/base&id=3Dv3.0.18 or something else ?

I'm using the tarball method described in the example, not local git.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




