Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1633E013A6
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 13:11:57 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3VrtNX3wb5z4Kh0d
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 22:11:56 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.8.164])
	by mail.m-online.net (Postfix) with ESMTP id 3VrtNX1M5mz4KK6X
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 22:11:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.8.164]) (amavisd-new,
	port 10024) with ESMTP id DMkVDiZwQS+9 for <yocto@yoctoproject.org>;
	Mon, 14 May 2012 22:11:55 +0200 (CEST)
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 22:11:55 +0200 (CEST)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 6A1541A5AA9
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 22:11:55 +0200 (CEST)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 8A627202B34
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 22:11:54 +0200 (CEST)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Mon, 14 May 2012 22:11:54 +0200
Message-Id: <20120514201154.8A627202B34@gemini.denx.de>
Subject: LICENSE = "GPL" -- problem?
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
X-List-Received-Date: Mon, 14 May 2012 20:11:57 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hi,

we noticed warnings like "No generic license file exists for: GPL in
any provider" for our own linux kernel recipe.  The cause wa the use
of an entry

	LICENSE = "GPL"

which whould read "GPLv2" instead of "GPL".  A scan detected that the
same string "GPL" is used in a number of other recipes:

bitbake/lib/bb/shell.py:LICENSE = "GPL"
meta/recipes-kernel/kern-tools/kern-tools-native_git.bb:LICENSE = "GPL"
meta/recipes-kernel/linux/linux-dummy.bb:LICENSE = "GPL"
meta/recipes-bsp/x-load/x-load.inc:LICENSE = "GPL"
meta/recipes-devtools/gcc/gcc-common.inc:LICENSE = "GPL"
meta/recipes-devtools/unifdef/unifdef-native_2.6.18+git.bb:LICENSE = "GPL"

Eventually these should be fixed, too?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Human beings were created by water to transport it uphill.

