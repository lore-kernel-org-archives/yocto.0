Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 653644C80093
	for <yocto@yoctoproject.org>; Sat, 19 Feb 2011 08:58:34 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:55238
	helo=[192.168.1.83])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PqoGW-0005R3-SA
	for yocto@yoctoproject.org; Sat, 19 Feb 2011 14:58:32 +0000
Message-Id: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Sat, 19 Feb 2011 14:58:30 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: What builds 'netbase'?
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
X-List-Received-Date: Sat, 19 Feb 2011 14:58:35 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I want to make some changes to /etc/interfaces.

It looks to me as if this this comes from 'netbase', but what do I  
need to rebuild to get my changes in to the rootfs? i.e. is there  
something I can

bitbake -c clean ???; bitbake ???

to get my changes in to the rootfs image?

I tried cleaning 'netbase', but that made no difference when I then  
'bitbake poky-image-minimal'.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




