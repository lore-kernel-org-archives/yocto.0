Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A3AE01421
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 13:10:14 -0700 (PDT)
Received: from [109.224.129.17] (port=6532
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SV71Z-0005Q8-4u
	for yocto@yoctoproject.org; Thu, 17 May 2012 21:10:13 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Thu, 17 May 2012 21:10:10 +0100
Message-Id: <0A3A31D3-D0DF-4C56-8896-1075F801C8BD@keylevel.com>
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
Subject: Per-machine DEPENDS
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
X-List-Received-Date: Thu, 17 May 2012 20:10:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Is it possible to have the (R)DEPENDS list vary depending on the machine =
being built?

For example, I want 'this-bit' to be included for a 'machine-1' build, =
but not 'machine-2'.

Something like:

DEPENDS =3D "common-stuff"

DEPENDS_machine-1 =3D "${DEPENDS} this-stuff"

Chris Tapp

opensource@keylevel.com
www.keylevel.com




