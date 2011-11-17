Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC84E00307
	for <yocto@yoctoproject.org>; Thu, 17 Nov 2011 14:02:20 -0800 (PST)
Received: from durham.keylevel.com ([109.224.134.115]:34286
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1RRA2E-0005rE-O4
	for yocto@yoctoproject.org; Thu, 17 Nov 2011 22:02:18 +0000
Message-Id: <96B1F0A7-736F-49EC-8B8E-5D3066F70CE9@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Thu, 17 Nov 2011 22:02:16 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: xserver-kdrive keyboard support
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
X-List-Received-Date: Thu, 17 Nov 2011 22:02:21 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Do I need to do anything other than have:

PREFERED_PROVIDER-virtual/xserver = "xserver-kdrive"
XSERVER = "xserver-kdrive-fbdev"

to get a working keyboard under kdrive?

I've got a system that boots in to an application, but I can't use Ctrl 
+Alt+Backspace to terminate it...

Keyboard works just fine on console screens.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




