Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id B293C4C8123F
	for <yocto@yoctoproject.org>; Fri, 28 Jan 2011 02:32:56 -0600 (CST)
Received: from durham.keylevel.com ([109.224.134.115]:6928 helo=[192.168.1.99])
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1PijkN-0004T6-1S
	for yocto@yoctoproject.org; Fri, 28 Jan 2011 08:31:59 +0000
Message-Id: <042CC4DD-1AF2-421C-8423-7251B294B935@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 28 Jan 2011 08:31:56 +0000
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
Subject: Kernel QA build error
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
X-List-Received-Date: Fri, 28 Jan 2011 08:32:57 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I'm getting a QA failure when running a build from a recent git master:

> Checking autotools environment for common misconfiguration
> NOTE: Checking autotools environment for common misconfiguration
> linux: Recipe file does not have license file information  
> (LIC_FILES_CHKSUM)
> ERROR: linux: Recipe file does not have license file information  
> (LIC_FILES_CHKSUM)
> Licensing Error: LIC_FILES_CHKSUM does not match, please fix
> ERROR: Licensing Error: LIC_FILES_CHKSUM does not match, please fix
> Function 'do_qa_configure' failed
> ERROR: Function 'do_qa_configure' failed

This is when building kernel version 2.6.33.2-r2.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




