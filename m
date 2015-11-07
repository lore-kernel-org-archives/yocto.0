Return-Path: <Andrea.DiChiara@teseo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BF4CE00B1C; Sat,  7 Nov 2015 03:07:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.81.186.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.teseo.com (mail.teseo.com [195.81.186.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCDEDE00A26
	for <yocto@yoctoproject.org>; Sat,  7 Nov 2015 03:07:21 -0800 (PST)
Received: from HAL09.TWPN09.NET (172.27.0.1) by mail.teseo.com (172.27.0.10)
	with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Sat, 7 Nov 2015 12:07:18 +0100
Received: from [172.27.0.19] (172.27.0.19) by HAL09.TWPN09.NET (172.27.0.1)
	with Microsoft SMTP Server id 8.3.342.0; Sat, 7 Nov 2015 12:07:18 +0100
To: <yocto@yoctoproject.org>
From: Andrea Di Chiara <andrea.dichiara@teseo.com>
Message-ID: <563DDB65.6090508@teseo.com>
Date: Sat, 7 Nov 2015 12:07:17 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: initramfs from core-image-minimal-initramfs.bb
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
X-List-Received-Date: Sat, 07 Nov 2015 11:07:27 -0000
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,
I'm trying to create an initramgs cpio.gz filesystem starting from
core-image-minimal-initramfs.bb recipe, but something fails. When I load
the kernel image that embedded that ramfs it hangs on loading after
showing some "mount: you must be root" messages. What could these means?
It seems that something going wrong mounting /proc and /sys directories
cause follows other messages as "grep: /proc/filesystem: No such file or
directory".

Could someone help me? where can I found some hints on how to create a
initramfs from a custom Yocto image?
thank you for the attention,
regards
Andrea

Software Department
software@teseo.com

---------------------------------------------------------------------------=
----------------------------------
TESEO spa            via Agnelli, 49              63023 FERMO (FM) ITALY
Tel. +39 0734 628818   --    Fax. +39 0734 628816

Disclaimer: This electronic mail transmission may contain legally privilege=
d and/or confidential information. Do not read this if you are not the pers=
on(s) named. Any use, distribution, copying or disclosure by any other pers=
on is strictly prohibited. If you receive this transmission by mistake dest=
roy the original transmission and its attachments without reading or saving=
 in any manner.

