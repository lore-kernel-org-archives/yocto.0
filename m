Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7611CE004E9
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 18:58:50 -0700 (PDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 22 Sep 2011 09:56:38 +0800
Received: from [192.168.0.98] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 22 Sep 2011
	09:56:37 +0800
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 22 Sep 2011 09:56:13 +0800
Organization: Insigma
X-Mailer: Evolution 3.0.3 
Message-ID: <1316656573.17177.66.camel@localhost.localdomain>
MIME-Version: 1.0
Subject: image_types_uboot
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
X-List-Received-Date: Thu, 22 Sep 2011 01:58:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hello, All:

when using "IMAGE_FSTYPES="ext2.gz.u-boot", I can't get what was
expected.

I can found it in "image_types_uboot.bbclass", but "image.bbclass" only
"inherit image_types", not "image_types_uboot".

what can I do? How about substitute the "inherit image_types" by
"inherit image_types_uboot" in "image.bbclass"?

Thanks!

-- 
Yi Qingliang
niqingliang@insigma.com.cn
http://niqingliang2003.wordpress.com



