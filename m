Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ED42E0044A
	for <yocto@yoctoproject.org>; Sat, 15 Sep 2012 16:59:26 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1TD2Ge-0007nY-5i
	for yocto@yoctoproject.org; Sun, 16 Sep 2012 00:59:20 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 16 Sep 2012 00:59:17 +0100
Message-Id: <9CB6FE0E-90A1-4627-B2CD-3DAD8090EB9C@keylevel.com>
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
Subject: Forcing link order for autotools recipe
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
X-List-Received-Date: Sat, 15 Sep 2012 23:59:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a recipe that uses autotools. It builds ok under Poky, but if I =
try to build it on my host (e.g. when developing) then it fails to build =
with lots of 'symbol not found' link errors related to libs that are on =
the system and which are in the gcc lib search path.

I've finally tracked this down to link order. The final command is of =
the form:

g++ -lGL -lcurl -o binary a.o b.o

If I change this to:

g++ -o binary a.o b.o -lGL -lcurl

then it builds ok.

Stranger still is the original form works fine on another system (older =
Ubuntu). The ld versions are different (2.21.53 on the one that fails, =
2.20.1 on the one that works).

Can I get autotools to always link the libraries last?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




