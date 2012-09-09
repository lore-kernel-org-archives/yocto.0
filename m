Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B08FE0145E
	for <yocto@yoctoproject.org>; Sun,  9 Sep 2012 05:23:22 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1TAgXk-0000jF-Mf
	for yocto@yoctoproject.org; Sun, 09 Sep 2012 13:23:16 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Sun, 9 Sep 2012 13:23:13 +0100
Message-Id: <54D27FFC-0447-4367-A5A3-08702F35FC5E@keylevel.com>
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
Subject: Creating a basic X Server image
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
X-List-Received-Date: Sun, 09 Sep 2012 12:23:23 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm trying to create a minimal image (Denzil 7.0.1) with an X Server. =
I've got a new my-image.bb:

IMAGE_FEATURES =3D "apps-console-core x11-base apps-x11-core"

inherit core-image

This gives me an image that tries to start X, but fails because twm, =
xterm and xclock are not installed. What do I need to add to my .bb file =
to get these added to the image?

core-image.bbclass has a comment that says apps-x11-core provides X =
Terminal. I tried adding

IMAGE_INSTALL =3D "task-core-apps-x11-core" to my-image.bb but I still =
don't have xterm in the image.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




