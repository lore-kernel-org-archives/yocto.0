Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2501E0070C
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 12:33:51 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:10602
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SCc9N-0000Ft-VU
	for yocto@yoctoproject.org; Tue, 27 Mar 2012 20:33:50 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Tue, 27 Mar 2012 20:33:47 +0100
Message-Id: <25BAEF60-DD74-4A3A-9E8B-3EA5E24F4A19@keylevel.com>
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
Subject: Problem building mesa-xlib
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
X-List-Received-Date: Tue, 27 Mar 2012 19:33:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to build mesa-xlib_7.8.2 under poky-4.0.1 for a legacy =
system. This has built in the past, but now I'm getting:

make[3]: ../../../../../src/glsl/apps/compile: Command not found

when I force a complete rebuild on a new system in an attempt to =
validate that I can build...

Any idea why this is happening? The logs don't really show anything more =
than the above. I can still build the on the old system, but I suspect =
that's because mesa-xlib has not required a rebuild.

It's possible that mesa-xlib was originally built with different options =
(PREFERED_PROVIDER_virtual/server and/or XSERVER) if that helps.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




