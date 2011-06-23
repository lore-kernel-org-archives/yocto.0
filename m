Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CEA54C800A1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2011 20:52:29 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 23 Jun 2011 09:52:16 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 23 Jun 2011
	09:52:14 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 23 Jun 2011 09:55:26 +0800
X-Mailer: Evolution 3.0.2 
Message-ID: <1308794126.28060.20.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: the mpc8315's compile option
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
X-List-Received-Date: Thu, 23 Jun 2011 01:52:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

mpc8315's core is e300c3, why use "tune-ppc603e.inc"?

I think there should be an file named "tune-ppce300c3.inc"? I can find
it in openembedded.


-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



