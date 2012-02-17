Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E775BE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 23:28:38 -0800 (PST)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Fri, 17 Feb 2012 15:28:22 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Fri, 17 Feb 2012
	15:28:18 +0800
Message-ID: <1329463593.1067.174.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 17 Feb 2012 15:26:33 +0800
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Subject: The sysroot location in eclipse plugin?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Feb 2012 07:28:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

the environment-setup file in build tree had defined CFLAGS and CXXFLAGS
which include the sysroot argument(<build_tree>/tmp/sysroots/<machine>).

Do we must specify the sysroot location in the eclipse plugin?

after specify it, I found the CFLAGS CXXFLAGS in project property follow
it, and dropped the sysroot defined in environment-setup file.

and I have another sysroot running on target (qemu) unzipped from the
image.

If I specify the target sysroot in eclipse-plugin, I can't compile my
code, because there is no any header file in /usr/include.
If I specify the <build_tree>/tmp/sysroots/<machine>, I can't running
the qemu machine in eclipse, because there is no 'init'.

what is the problem?

THANKS!


-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


