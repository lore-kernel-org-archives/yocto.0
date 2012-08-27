Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1514DE00717
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 13:41:55 -0700 (PDT)
Received: from [109.224.129.17] (helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1T667w-0005zu-60
	for yocto@yoctoproject.org; Mon, 27 Aug 2012 21:41:40 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 27 Aug 2012 21:41:37 +0100
Message-Id: <E5621C20-71E4-4AB7-BBAD-EE5CD0B9483E@keylevel.com>
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
Subject: Xorg keyboard not working
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
X-List-Received-Date: Mon, 27 Aug 2012 20:41:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a system that has a working console and four virtual terminals.

I can start X and run an application using

/usr/bin/xinit /usr/sbin/xinitrc -- /usr/bin/Xorg

The application runs fine and is expected to run with no user =
interaction. Keyboard input is sometimes needed to either kill the =
application or switch to another virtual terminal to make some =
configuration changes.

However, I can't seem to get the keyboard to work - I can't switch =
virtual terminal or force the application to exit and the caps-lock =
light doesn't toggle. This is the same keyboard that was used to kick =
the application off. xf86-input-keyboard and xf86-input-evdev are both =
listed in 'XSERVER' when the system is baked.

Where should I be looking to work out why the keyboard isn't working?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




