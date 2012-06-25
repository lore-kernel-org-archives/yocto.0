Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EEEE006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 12:56:04 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SjFOE-0008GA-VI
	for yocto@yoctoproject.org; Mon, 25 Jun 2012 20:56:03 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 25 Jun 2012 20:56:00 +0100
Message-Id: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
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
Subject: Selecting gcc version
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
X-List-Received-Date: Mon, 25 Jun 2012 19:56:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

How do I select the version of gcc to use for a build?

I'm having some issues building a working kernel for the RPi under =
Denzil, which is using gcc 4.6.3. The 'official' kernel uses gcc 4.5.1.

I thought it may be worth trying gcc-csl-arm-2008q1, but I can't work =
out how to select this. I've tried setting

PREFERRED_VERSION_gcc =3D "csl-arm-2008q1"

in my machine.conf, but the build is still using 4.6.3.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




