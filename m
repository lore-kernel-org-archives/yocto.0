Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C334DE013A5
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 20:22:19 -0800 (PST)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Tue, 8 Nov 2011 12:22:10 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Tue, 8 Nov 2011
	12:22:09 +0800
Message-ID: <1320726066.1504.43.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 8 Nov 2011 12:21:06 +0800
Organization: Insigma
X-Mailer: Evolution 3.2.1 
MIME-Version: 1.0
Subject: the eclipse plugin doesn't support path variable
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
X-List-Received-Date: Tue, 08 Nov 2011 04:22:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

when using the yocto ADT in eclipse, I want to specify the toolchain
location by path variables, but only got error!

It looks like other preference can support the path variable.

any ideas?

I want to use build system direved toolchain, for which the
toolchain/sysroots/kernel are all located in the same build direcotry.

how can I use the plugin like that:
YOCTO_BUILD_DIR=<build directory>
toolchain: ${YOCTO_BUILD_DIR}
sysroots:  ${YOCTO_BUILD_DIR}../tmp/sysroots/qemux86
kernel:    ${YOCTO_BUILD_DIR}../tmp/deploy/images/bzImage...


-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


