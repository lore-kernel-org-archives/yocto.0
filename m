Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5900EE01528
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 06:05:07 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c0cGp1vN8z4KK3g
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 15:05:06 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c0cGn73yBzbbhV
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 15:05:05 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id VYKRRHTbzuQF for <yocto@yoctoproject.org>;
	Wed, 24 Jul 2013 15:05:04 +0200 (CEST)
X-Auth-Info: hjTb6bHdKk62enoJu8rFkuAq/9zDa1sYwlda8TTFQKo=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 15:05:04 +0200 (CEST)
Received: from p4FD638F0.dip0.t-ipconnect.de (p4FD638F0.dip0.t-ipconnect.de
	[79.214.56.240]) by webmail.mnet-online.de (Horde Framework) with HTTP; 
	Wed, 24 Jul 2013 15:05:04 +0200
Message-ID: <20130724150504.17793cvsxo9h0y04@webmail.mnet-online.de>
Date: Wed, 24 Jul 2013 15:05:04 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
Subject: how to set particular changes to a default kernel config
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
X-List-Received-Date: Wed, 24 Jul 2013 13:05:08 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Dear Yocto Team,

For an ARM based board (MACHINE = "myboard"), I use a default kernel  
config from arch/arm/configs and want now to change some particular  
CONFIG_ options.

Trying to follow the documentation, I currently have the following files:
.
+- linux-acme
|   |
|   +- additional.cfg
|
+- linux-acme_3.8.bb



...in linux-acme_3.8.bb I have
(...)
S = "${WORKDIR}/git"
(...)
KERNEL_DEFCONFIG_myboard = "blabla_defconfig"
do_configure_prepend_myboard() {
      install -m 0644 ${S}/arch/${ARCH}/configs/${KERNEL_DEFCONFIG} \
            ${WORKDIR}/defconfig || die "no default config"
}
SRC_URI_myboard = "git://kernel.ubuntu.com/ubuntu/linux.git;protocol=git \
            file://additional.cfg"
(...)


...and in additional.cfg I have
CONFIG_DEVTMPFS_MOUNT=y
CONFIG_MTD_CMDLINE_PARTS=y
CONFIG_MTD_BLOCK=y
CONFIG_MTD_M25P80=y


When I run something like...
$ bitbake -b /yocto/meta-myboard/recipes-kernel/linux/linux-acme_3.8.bb -f
...it seems to find the .cfg file, since it stoped complaining (after  
I fixed some paths) and now compiles/builds smoothely.

Anyway, I can't see the changes in the .config in
$BDIR/tmp/work/myboard-linux-gnueabi/linux-acme/3.8+..../git/.config

I imagine something like mixing both configs and running "make  
oldconfig" in behind. Anyway before compilation, the changes should be  
in the .config, right?

Questions:
1) How can I add single additional options to a default kernel config?
2) What is the best way to check if the options were applied?
3) Do I need another approach, e.g. through a patch, using echo, or  
using a .scc file (I tried, but with the same result)?

Best Regards,
Lothar Rubusch


