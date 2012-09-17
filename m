Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2227E0049B
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2012 01:10:13 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1TDWP0-0006J2-7H
	for yocto@yoctoproject.org; Mon, 17 Sep 2012 09:09:58 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 17 Sep 2012 09:09:57 +0100
Message-Id: <9FB2A3C0-3081-424E-BC26-002559D3EA83@keylevel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
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
Subject: bbappends for MESA
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
X-List-Received-Date: Mon, 17 Sep 2012 08:10:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I want to enable glut in mesa from within a layer so I can run with an =
unmodified brach (e.g Denzil). All I need to do is:

1) Add the SRC_URI to mesa-7.11.inc;
2) Add a couple of LIB_DEPS, add a couple of packages and modify =
EXTRA_OECONF (it has --disable-glut) in mesa-common.inc

Can I do this using .bbappend files? I can see a couple of issues:

1) The SRC_URI checksum currently in mesa-7.11.inc doesn't specify a =
filename. I suspect this isn't going to work too well if I add a =
specific for the glut download. Or will the generic checksum still match =
against the existing (non-named) file?

2) How do I modify EXTRA_OECONF to change the --disable-glut in =
mesa-common to --enable-glut?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




