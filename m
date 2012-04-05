Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DA14E0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 13:03:02 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:45480
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SFstZ-0006Rb-I0
	for yocto@yoctoproject.org; Thu, 05 Apr 2012 21:03:01 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 5 Apr 2012 21:02:58 +0100
Message-Id: <30B122B8-C6E4-46CE-87A9-AF7F61A06643@keylevel.com>
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
Subject: kernel26 'machine feature'
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
X-List-Received-Date: Thu, 05 Apr 2012 20:03:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Quite a few machine conf files specify the kernel26 machine feature. =
e.g., crownbay.conf has:

MACHINE_FEATURES =3D "kernel26 screen keyboard pci usbhost ext2 ext3 x86 =
\
                    acpi serial usbgadget"

What does this do? It's not listed at =
http://www.yoctoproject.org/docs/latest/poky-ref-manual/poky-ref-manual.ht=
ml#ref-features-machine and seems to be at odds with:

PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
PREFERRED_VERSION_linux-yocto =3D "3.0%"

Chris Tapp

opensource@keylevel.com
www.keylevel.com




