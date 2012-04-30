Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE57E013FF
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 07:20:47 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:29309
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SOrT3-0005qU-UE
	for yocto@yoctoproject.org; Mon, 30 Apr 2012 15:20:46 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 30 Apr 2012 15:20:43 +0100
Message-Id: <82CCA538-B495-44B3-8E06-F13282FAC541@keylevel.com>
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
Subject: BSP kernel configuration redefines config options
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
X-List-Received-Date: Mon, 30 Apr 2012 14:20:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a BSP that has the following kernel configuration =
linux-yocto_3.0.bbappend:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE_mybsp =3D "mybsp"
KMACHINE_mybsp  =3D "yocto/standard/common-pc/base"

SRC_URI +=3D " file://defconfig"

SRCREV_machine_pn-linux-yocto_mybsp ?=3D =
"d7e81e7f975c57c581ce13446adf023f95d9fd9f"
SRCREV_meta_pn-linux-yocto_mybsp ?=3D =
"d386e09f316e03061c088d2b13a48605c20fb3a6"

This builds ok, but I get a note that says "There were 43 kernel config =
options redefined during processing this BSP". I assume this is because =
the defconfig file is at odds with the kernel I've selected as the base =
for the BSP. Is it possible to get this note to 'go away' ?

I'm running under 6.0.1 and haven't spotted anything in the user manuals =
that I think would help.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




