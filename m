Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77FC4E00769
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 13:06:39 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1T1jrR-0003D8-TW
	for yocto@yoctoproject.org; Wed, 15 Aug 2012 21:06:37 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 15 Aug 2012 21:06:36 +0100
Message-Id: <073A7998-3D05-4835-AA03-113960D00553@keylevel.com>
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
Subject: yocto-bsp create
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
X-List-Received-Date: Wed, 15 Aug 2012 20:06:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've been looking at using yocto-bsp to create a BSP. Good job! Looks =
like it's going to be much easier to do it this way :-)

I've got a few questions/comments:

1) The documentation (7.0.1) says that the machine branch defaults to =
standard/default, but that is not an option that gets presented when I =
created a BSP. Should that be standard/base, standard/default/base, or =
something else? Master shows this as standard/default/common-pc, but =
that still isn't one of the listed options =
(standard/default/common-pc/base ?).

2) What are these machine branches anyway? As in, how do I decide which =
one I should choose? For an ALIX 3D3 system I used =
standard/default/common-pc/base. Is that reasonable?

3) I selected core2 as the tune option and then had to change this in =
the created meta-data as I needed i586 tuning and this was not given as =
a tune option. Should all available tunes be offered?

4) Is there any way to select the kernel CPU (I got MATOM but needed =
MGEODE_LX - easily changed in the <mybsp>.cfg file)?

5) The created BSP refers to various feature/x/y.scc files. Are these =
documented somewhere so that they can be easily re-used, or am I better =
off simply producing a complete defconfig? A pointer to the =
documentation for the whole kernel meta data structure would also be =
helpful.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




