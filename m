Return-Path: <darcy.watkins@inmotiontechnology.com>
Received: from sierrawireless.com (spf.sierrawireless.com [208.81.121.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8FE3E00CED
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 07:52:18 -0700 (PDT)
Received: from [192.168.3.163] (184.71.143.26) by
	CARMD-EXCHHUB01.sierrawireless.local (10.0.6.2) with Microsoft SMTP
	Server (TLS) id 8.3.348.2; Fri, 11 Apr 2014 07:52:17 -0700
From: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
To: yocto <yocto@yoctoproject.org>
Date: Fri, 11 Apr 2014 07:52:16 -0700
Message-ID: <1397227936.27169.19.camel@kihei.inmotion.gotdns.com>
MIME-Version: 1.0
X-Mailer: Evolution 2.28.3 (2.28.3-30.el6) 
Subject: Yocto 1.6 Kernel Choices
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
X-List-Received-Date: Fri, 11 Apr 2014 14:52:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

The current yocto 1.5 has kernel recipes for kernel 3.4, 3.8 and 3.10
plus various BSP layers add their own variants (e.g. 3.0 for i.MX6 from
Freescale).  I saw notes mentioning kernel 3.14 for the next release.

When I downloaded the M4 tarball for poky, I saw the recipes for 3.4,
3.8 and 3.10 but didn't notice any others added.

What are plans for supported kernels in yocto 1.6?  In particular the
ones known as linux-yocto?

Thanks in advance.

Regards,

Darcy


