Return-Path: <pw.marcus@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FD86E00837; Tue, 29 Jul 2014 08:14:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.12.242.125 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pw.marcus[at]laposte.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 451 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Jul 2014 08:13:43 PDT
Received: from smtp.smtpout.orange.fr (smtp03.smtpout.orange.fr
	[80.12.242.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51048E0081C
	for <yocto@yoctoproject.org>; Tue, 29 Jul 2014 08:13:43 -0700 (PDT)
Received: from [192.168.1.13] ([90.57.110.212]) by mwinf5d58 with ME
	id YF6B1o0084azyAa03F6BEy; Tue, 29 Jul 2014 17:06:11 +0200
X-ME-Helo: [192.168.1.13]
X-ME-Auth: Z2lsZXQubWFyY0BvcmFuZ2UuZnI=
X-ME-Date: Tue, 29 Jul 2014 17:06:11 +0200
X-ME-IP: 90.57.110.212
Message-ID: <53D7BA1E.2000301@laposte.net>
Date: Tue, 29 Jul 2014 17:13:34 +0200
From: Marc Gilet <pw.marcus@laposte.net>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:25.0) Gecko/20100101 Firefox/25.0 SeaMonkey/2.22.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Waiting for removable media ...
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Jul 2014 15:14:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
I'd like to use Yocto with a thinclient (Fujitsu siemens Futro B100)
I've created a BSP for this platform, and configured the kernel for this 
machine.
I've built an initramfs and a kernel to boot the thinclient via a PXE 
server, it boots, but the boot process
hangs with this massage:" Waiting for removable media ..."

Here's what I did:

$ git clone git://git.yoctoproject.org/poky
$ cd poky/
$ source oe-init-build-env
$ created the BSP with the "yocto-bsp" script
$ bitbake linux-yocto -c menuconfig (the kernel is configured with 
"CONFIG_DEVTMPFS=y" and "CONFIG_DEVTMPFS_MOUNT=y")
$ bitbake -k core-image-minimal-initramfs

Does anybody knows where it could come from ?
Cheers

