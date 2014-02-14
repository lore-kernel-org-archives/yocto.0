Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9281E007BD
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 06:27:25 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3fQcP76PRxz3hk6c
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 15:27:23 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3fQcP72gJxzbbcV
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 15:27:23 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id lhaaB4tMbJpD for <yocto@yoctoproject.org>;
	Fri, 14 Feb 2014 15:27:22 +0100 (CET)
X-Auth-Info: AfySm9mAqEmJ2j6D4Pn7fC0bWNZM6u0YewsAaA0YZVo=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 15:27:22 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 470C71A997F
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 15:27:22 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 1D01B3804C0
	for <yocto@yoctoproject.org>; Fri, 14 Feb 2014 15:27:22 +0100 (MET)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Fri, 14 Feb 2014 15:27:22 +0100
Message-Id: <20140214142722.1D01B3804C0@gemini.denx.de>
Subject: Known toolchain bug?
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
X-List-Received-Date: Fri, 14 Feb 2014 14:27:29 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

in message [1] on the Linaro mailing list, Koen Kooi reported a
toolchain problem.  I can reproduce the same problem both in Yocto
1.5.1 and witht he current top-of-tree; for example, using the latest
autobuilder result
core-image-sato-sdk-imx53qsb-20140213124023.rootfs.tar.bz2
I get this [source of Koen's test program attached]:

root@imx53qsb:/tmp# g++ -Wall -std=c++11 -o b -lpthread b.cpp 
root@imx53qsb:/tmp# ./b
pure virtual method called
terminate called without an active exception
Aborted

Is this a (known?) tool chain issue, or am I missing something?


[1] http://article.gmane.org/gmane.linux.linaro.toolchain/3925


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"And they told us, what they wanted... Was a sound  that  could  kill
some-one, from a distance."                               - Kate Bush

