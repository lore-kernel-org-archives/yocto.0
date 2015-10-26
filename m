Return-Path: <Andrea.DiChiara@teseo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55D5CE007C9; Mon, 26 Oct 2015 08:28:14 -0700 (PDT)
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
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Mon, 26 Oct 2015 08:27:48 PDT
Received: from mail.teseo.com (mail.teseo.com [195.81.186.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F855E0048C
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 08:27:48 -0700 (PDT)
Received: from HAL09.TWPN09.NET (172.27.0.1) by mail.teseo.com (172.27.0.10)
	with Microsoft SMTP Server (TLS) id 8.3.342.0; Mon, 26 Oct 2015 16:26:43
	+0100
Received: from [172.27.0.19] (172.27.0.19) by HAL09.TWPN09.NET (172.27.0.1)
	with Microsoft SMTP Server id 8.3.342.0; Mon, 26 Oct 2015 16:26:43 +0100
To: <yocto@yoctoproject.org>
From: Andrea Di Chiara <andrea.dichiara@teseo.com>
Message-ID: <562E4634.1090502@teseo.com>
Date: Mon, 26 Oct 2015 16:26:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
Subject: i.mx6 initramfs
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
X-List-Received-Date: Mon, 26 Oct 2015 15:28:14 -0000
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,
I need to create ad initramfs image for an i.MX6 board. does it exist a
suitable recipe?
core-image-minimal-initramfs doesn't seem to fit ARM boards. am i wrong?

"initramfs-live-install" and "initramfs-live-install-efi" aren't
compatible and bitbake fails. have I to remove them from PACKAGE_INSTALL?
without them bitbake succeeds but the init procedure hangs on "Waiting
for removable media...". Have you any hints?

thank you for the attention
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

