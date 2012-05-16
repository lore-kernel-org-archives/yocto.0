Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5C0CE01412
	for <yocto@yoctoproject.org>; Wed, 16 May 2012 12:57:52 -0700 (PDT)
Received: from [109.224.129.17] (port=38156
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SUkM3-0004M6-ED
	for yocto@yoctoproject.org; Wed, 16 May 2012 20:57:51 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Wed, 16 May 2012 20:57:48 +0100
Message-Id: <BF3F91AA-10B2-443A-BD3E-E9E35DD2E6A8@keylevel.com>
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
Subject: Compiling kernel for Raspberry Pi
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
X-List-Received-Date: Wed, 16 May 2012 19:57:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've used John's kernel files =
(https://github.com/djwillis/meta-raspberrypi) and have managed to build =
an image.

However, this doesn't run on the target! I've not got a working serial =
console on the board, so it's not going to be easy to 'see' what's going =
on (working on getting one...).

I'm using gcc 4.6 - is this ok, or do I need to use something else / =
apply some patches? The CPU is an arm1176jzf-s.

Out of interest, how/where do the machine 'tune' configurations get =
processed and passed to gcc?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




