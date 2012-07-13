Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5454E00349
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 05:10:31 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SpehY-0006qC-Ns
	for yocto@yoctoproject.org; Fri, 13 Jul 2012 13:10:28 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Fri, 13 Jul 2012 13:10:27 +0100
Message-Id: <1363BCCF-4C02-4997-8B0B-787649E292FC@keylevel.com>
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
Subject: Why does my kernel fail to boot (LX800 system)?
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
X-List-Received-Date: Fri, 13 Jul 2012 12:10:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I really don't understand what's going on here...

1) I've got an ALIX 3D3 system with an AMD Geode LX800;
2) I've found a 3.2.17 kernel that boots (from Voyage Linux);
3) I've used the config for the above to build linux-yocto_3.2 under =
'Denzil'.

This is done using a BSP with a bbappend for the kernel that does =
nothing other than specify the BSP as a COMPATIBLE_MACHINE and point to =
a defconfig for 3), above. Is this valid? I think it is as I'm supplying =
a full kernel config via the defconfig.

Kernel builds ok, but when I try to boot there is a short delay and then =
the screen fills up with random characters (including solid color =
blocks, bits that flash) which looks like the video memory has been =
overwritten. Nothing comes out of the serial port to show that the =
kernel is even trying to boot.

Any pointers to things to check would be much appreciated !

Chris Tapp

opensource@keylevel.com
www.keylevel.com




