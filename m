Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (unknown [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83FFF4C8007E
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2011 21:09:56 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 30 Jun 2011 10:08:45 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 30 Jun 2011
	10:08:43 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 30 Jun 2011 10:12:06 +0800
X-Mailer: Evolution 3.0.2 
Message-ID: <1309399927.1876.7.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: dependency gui problem
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
X-List-Received-Date: Thu, 30 Jun 2011 02:10:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

help!!!!!!!! thanks!

after make build dir, and set env, follow cmd works normally.
bitbake -g -u depexp core-image-minimal

but once builded, the cmd works abnormal, the symptom like that:
the "loading cache" window goes 100% quickly, but after that, the window
always be there, and the parent window "dependency explorer" become
no-response. I have waited half an hour, and it still there.

environment:
SW: archlinux
HW: dell optiplex 980

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



