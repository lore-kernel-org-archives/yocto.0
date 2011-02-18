Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0300D4C8090C
	for <yocto@yoctoproject.org>; Fri, 18 Feb 2011 16:50:07 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:21832
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PqZ8Q-0001J1-D9
	for yocto@yoctoproject.org; Fri, 18 Feb 2011 22:49:10 +0000
Message-Id: <1D1373B4-8C08-4C73-BB4C-94EF19939EC6@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 18 Feb 2011 22:49:07 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Selecting target runtime lib versions
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
X-List-Received-Date: Fri, 18 Feb 2011 22:50:08 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I'm working on a recipe to give me sdl-directfb-1.2.11. This is  
building ok, but when I run on the target it's trying to link against  
directfb-1.2.

Trouble is, Yocto has a recipe for directfb-1.4 and this is what's  
installed on the target.

Why does SDL try to link against 1.2? I'm not having any luck finding  
anything within SDL that forces this.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




