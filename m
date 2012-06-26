Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F135E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 13:33:02 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SjcRX-0003pu-H5
	for yocto@yoctoproject.org; Tue, 26 Jun 2012 21:32:59 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Tue, 26 Jun 2012 21:32:57 +0100
Message-Id: <D127AB75-8B96-4FEF-965C-CFBFBCA61404@keylevel.com>
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
Subject: meta-raspberrypi - Latest kernels won't run (summary)
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
X-List-Received-Date: Tue, 26 Jun 2012 20:33:02 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've updated the SRCREVs:

bootfiles : 542ee2c3a5aea50377b97ec0308eb884900512ca
kernel    : f679f0534867d64a3672108d73bed5d349728f73

This build ok, but the kernel doesn't boot (screen shows the =
'four-colours' kernel boot error). The bootfiles seem to be good as they =
will work with older kernels and the corresponding 'official' kernel =
image.

It seems as if:

1) Nothing works if it's built with master / GCC 4.7.0 (reported by Paul =
Eggleton);
2) Earlier images work with Denzil / GCC 4.6.4;
3) Building with Edison / GCC 4.5.1 didn't seem to help.

Notes:

1) The built kernel is about 50% the size of the official one;
2) I've seen references to a change in the (default) enable state of the =
L2 cache (it's now on by default).
3) Is the RPi toolchain patched? It's reported as GCC 4.5.1 (Broadcom =
2708) in /proc/version. I've asked where the source is, but have not =
heard anything yet.
4) Khem Raj has noted that there are changes in .config that may be an =
issue.
5) Nothing comes out of the serial console when an image fails.

Has anyone got any ideas how to get the latest kernel to work?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




