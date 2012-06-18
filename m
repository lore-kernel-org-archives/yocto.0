Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37810E013F7
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 14:16:48 -0700 (PDT)
Received: from [109.224.129.17] (port=31258
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SgjJX-0003gK-1L
	for yocto@yoctoproject.org; Mon, 18 Jun 2012 22:16:47 +0100
From: Chris Tapp <opensource@keylevel.com>
Date: Mon, 18 Jun 2012 22:16:44 +0100
Message-Id: <DCA17C0A-86FA-4EE3-8D86-83348F6DCF36@keylevel.com>
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
Subject: RaspberryPi Kernel - Fails to boot when sound driver is a built-in
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
X-List-Received-Date: Mon, 18 Jun 2012 21:16:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

If I build the RPi kernel (SRCREV =
3fc65f9f291fb19cad434968a4a0f66ab749e637) then the board boots as =
expected.

However, if a modify the .config (either manually after -c configure, or =
by -c menuconfig) so that CONFIG_SND, CONFIG_SND_TIMER, CONFIG_SND_PCM =
and CONFIG_BCM2835 are set to 'y' (i.e. changed from modules) then the =
kernel no longer boots.

Has anyone else tried to do this? I'm trying to get a kernel that has =
ALSA working out-of-the-box.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




