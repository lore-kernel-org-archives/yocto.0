Return-Path: <hayashi.kunihiko@socionext.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C309EE00CB2; Sun, 12 Jun 2016 18:41:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_40,FSL_HELO_BARE_IP_2
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2511]
	*  1.5 FSL_HELO_BARE_IP_2 FSL_HELO_BARE_IP_2
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Sun, 12 Jun 2016 18:41:23 PDT
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E40DAE00CA5
	for <yocto@yoctoproject.org>; Sun, 12 Jun 2016 18:41:23 -0700 (PDT)
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
	by mx.socionext.com with ESMTP; 13 Jun 2016 10:40:18 +0900
Received: from mail.mfilter.local (unknown [10.213.24.61])
	by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 4AE67180113
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 10:40:18 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
	Mon, 13 Jun 2016 10:40:18 +0900
Received: from [10.213.136.190] (unknown [10.213.136.190])
	by kinkan.css.socionext.com (Postfix) with ESMTP id 810271A1639;
	Mon, 13 Jun 2016 10:40:17 +0900 (JST)
Date: Mon, 13 Jun 2016 10:40:17 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: yocto@yoctoproject.org
Message-Id: <20160613104017.70D6.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
Subject: How to set KCONFIG_MODE for defconfig and fragments
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
X-List-Received-Date: Mon, 13 Jun 2016 01:41:24 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Hello, all

Now I'm trying to build my own kernel with linux-yocto recipe,
and I make kernel configuration fragments (".cfg" file) according to
"Linux Kernel Development Manual", and my fragments can't be applied
to the kernel at all.

I find that linux-yocto recipe uses "allnoconfig" as default, and
configurations that my fragments depend on are disabled.

> KCONFIG_MODE = "--allnoconfig"

I assume that KCONFIG_MODE has the option of "configme" script,
but this option is undocumented on any manuals.

If I apply "defconfig" and my additional fragments as it is,
how do I set KCONFIG_MODE in my recipe? (null string or another option?)

Regards,
---
Kunihiko Hayashi
:hayashi.kunihiko@socionext.com


