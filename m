Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14155E00770
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 04:42:38 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YFQpN4H5fz3hhgy;
	Mon,  3 Dec 2012 13:42:36 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YFQpN3xbWzbbcf;
	Mon,  3 Dec 2012 13:42:36 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id TZePIvCL_uLG; Mon,  3 Dec 2012 13:42:35 +0100 (CET)
X-Auth-Info: J9rv69fXLXu13UP0p+c3LXnXbmisIa2mFLm1URpt3HE=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon,  3 Dec 2012 13:42:35 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 8799D1A6DDD;
	Mon,  3 Dec 2012 13:42:34 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 6327B200FF8;
	Mon,  3 Dec 2012 13:42:34 +0100 (CET)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Mon, 03 Dec 2012 13:42:34 +0100
Message-Id: <20121203124234.6327B200FF8@gemini.denx.de>
Cc: hs@denx.de
Subject: sysroot for use with GDB
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
X-List-Received-Date: Mon, 03 Dec 2012 12:42:39 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

according to the documentation [1] the right way to debug applications
on the target is to load the target library information in GDB using

	set solib-absolute-prefix /path/to/tmp/rootfs

i. e. referring it to the libraries in the target root file system
image.  Assuming the target root file system uses by defualt stripped
libraries, we need to set up a copy of the rootfs with debug
information included.

But do we really have to?  Why cannot we use the libraries present in
the SDK's sysroot directory (i. e. what OECORE_TARGET_SYSROOT points
to) ?

Trying to do so, we see that it fails.  Our current suspicion is that
maybe prelinking of the target images and libraries introduces some
incompatibility.  Is this a reasonable assumption, and if so, is this
a problem that should be fixed, or unavoidable for some reason?  Or is
there a problem with the libraries in OECORE_TARGET_SYSROOT ?

All help welcome - thanks in advance.

[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#platdev-gdb-remotedebug-launch-gdb


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"Beware of bugs in the above code; I have only proved it correct, not
tried it."                                             - Donald Knuth

