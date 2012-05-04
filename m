Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52690E00596
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 13:43:14 -0700 (PDT)
Received: from [109.224.129.17] (port=48729
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SQPLM-0005VR-EQ
	for yocto@yoctoproject.org; Fri, 04 May 2012 21:43:12 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Fri, 4 May 2012 20:00:01 +0100
Message-Id: <FF473BAD-04D9-4409-9B7E-D49AD4B4AA11@keylevel.com>
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
Subject: GCC patch failures with 7.0.0
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
X-List-Received-Date: Fri, 04 May 2012 20:43:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Building core-image-sato I get a patch failure when cache-amnesia.patch =
is applied in gcc-cross.

If I then run bitbake -c patch gcc-cross I get the same error, but if I =
-c clean and then -c patch it applies as it should.

Any ideas what could be causing this? Could this be a parallel make =
artefact?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




