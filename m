Return-Path: <hayashi.kunihiko@socionext.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AFBBE00566; Tue, 27 Dec 2016 00:05:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0907]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Dec 2016 00:05:32 PST
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AB21E004E5
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 00:05:32 -0800 (PST)
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
	by mx.socionext.com with ESMTP; 27 Dec 2016 17:04:27 +0900
Received: from mail.mfilter.local (unknown [10.213.24.62])
	by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 243AE180B4E
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 17:04:26 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
	Tue, 27 Dec 2016 17:04:26 +0900
Received: from [10.213.135.69] (unknown [10.213.135.69])
	by kinkan.css.socionext.com (Postfix) with ESMTP id 007A11A161A
	for <yocto@yoctoproject.org>; Tue, 27 Dec 2016 17:04:25 +0900 (JST)
Date: Tue, 27 Dec 2016 17:04:26 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: yocto@yoctoproject.org
Message-Id: <20161227170425.30B4.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
Subject: fail to create compressed kernel image
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
X-List-Received-Date: Tue, 27 Dec 2016 08:05:35 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hello, all

To build compressed kernel, I specify the following line on my machine
configuration:

   KERNEL_IMAGETYPE = "Image.gz"

and I've got such an error:

   "cannot open Image: No such file"

According to meta/classes/kernel.bbclass, compressed kernel image is created
by the following line (in the case of yocto-2.1).

    gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"

KERNEL_IMAGETYPE_FOR_MAKE is a string removed a suffix '.gz' from
KERNEL_IMAGETYPE. Kernel raw image ("Image") is created on
'arch/${ARCH}/boot' directory, and I think that the path of the kernel
raw image is required for this case as follows.

For yocto-2.1:

-   gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"
+   gzip -9c < "arch/${ARCH}/boot/${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"

For yocto-2.2:

-   gzip -9c < "${typeformake}" > "${KERNEL_OUTPUT_DIR}/${type}"
+   gzip -9c < "arch/${ARCH}/boot/${typeformake}" > "${KERNEL_OUTPUT_DIR}/${type}"

I've checked it in the case of arm/arm64.
However I'm not sure that kernel raw images of all architectures are
created in the same way, are there any better suggestions?

Regards,

---
Kunihiko Hayashi
:hayashi.kunihiko@socionext.com


