Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF456E00B11
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 02:38:20 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 13 Oct 2011 17:37:58 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 13 Oct 2011
	17:37:55 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 13 Oct 2011 17:37:28 +0800
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1318498649.1352.11.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: about symbol link of library
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
X-List-Received-Date: Thu, 13 Oct 2011 09:38:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

hello all.

I have added 2 packages, one is lib, and the other is bin.

the lib will generate 2 files:
	libx.so.1.0.1
	libx.so -> libx.so.1.0.1
the latter linked to the other one.

the bin package will link to the libx.so.

compile/install are all OK, but when populate rootfs, I got error:
error: Failed dependencies:
| 	libx.so is needed by bin......

after checked the rpm, the libx.so is located in libx-dev, but not in
libx.

what is the right way to resolve this problem?




-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



