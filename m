Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E02E0122C
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2012 04:30:51 -0700 (PDT)
Received: from [109.224.129.17] (port=19299
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SdgM5-0004kV-2k
	for yocto@yoctoproject.org; Sun, 10 Jun 2012 12:30:49 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 10 Jun 2012 12:30:47 +0100
Message-Id: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
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
Subject: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Sun, 10 Jun 2012 11:30:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've been building the 3.1.9 Raspberry Pi kernel under Denzil using the =
meta layer at https://github.com/djwillis/meta-raspberrypi. This uses a =
kernel recipe based on the git repository at =
https://github.com/raspberrypi/linux/commits/rpi-patches.

Some of the kernel commit IDs (e.g. =
94fbbc4e3988075abad0d3b32842b82c590324fc) seem to build ok, but they =
don't always run. As in, if I -c clean and build then sometimes I end up =
with a bootable image, sometimes I don't. I'm not changing anything else =
in the build environment.

Any ideas what can cause this?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




