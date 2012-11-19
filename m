Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4824E006C2
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 05:47:02 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Y4rv93zbDz4KK7b;
	Mon, 19 Nov 2012 14:47:01 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Y4rv90mZXzbbhH;
	Mon, 19 Nov 2012 14:47:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id goJrULVbGt1F; Mon, 19 Nov 2012 14:44:12 +0100 (CET)
X-Auth-Info: X4ZHVL0ZvZ9D6uy1plXsgieq692UPRLHw2Bm5ZEJgYg=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 19 Nov 2012 14:46:59 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 19F611A6D92;
	Mon, 19 Nov 2012 14:46:55 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 674B520032F;
	Mon, 19 Nov 2012 14:46:53 +0100 (CET)
To: ml@communistcode.co.uk
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <50AA2EE4.1000207@communistcode.co.uk>
References: <20121119123504.22FAF20032F@gemini.denx.de>
	<50AA2EE4.1000207@communistcode.co.uk>
Comments: In-reply-to Jack Mitchell <ml@communistcode.co.uk>
	message dated "Mon, 19 Nov 2012 13:06:44 +0000."
Date: Mon, 19 Nov 2012 14:46:53 +0100
Message-Id: <20121119134653.674B520032F@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: Alternative SDK installation directory working?
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
X-List-Received-Date: Mon, 19 Nov 2012 13:47:03 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Jack Mitchell,

In message <50AA2EE4.1000207@communistcode.co.uk> you wrote:
>
> > -> source /opt/poky-test/environment-setup-armv5te-poky-linux-gnueabi
> > -> ${TARGET_PREFIX}gcc -v -o /tmp/x /tmp/x.c
> 
> I think you need a --sysroot in there. e.g. --sysroot=/opt/poky-test/sysroots/arch-blah-blah-blah

I see.  Thanks for pointing out.

However, this still leaves a number of somewhat suspicious messages:

-> $CC -v -o /tmp/x /tmp/x.c
...
ignoring nonexistent directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/../../../../../arm-poky-linux-gnueabi/include"
ignoring duplicate directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/../../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/include"
ignoring nonexistent directory "/opt/poky-test/sysroots/armv5te-poky-linux-gnueabi/usr/local/include"
ignoring duplicate directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/../../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/include-fixed"
ignoring nonexistent directory "/opt/poky-test/sysroots/x86_64-pokysdk-linux/usr/bin/armv5te-poky-linux-gnueabi/../../lib/armv5te-poky-linux-gnueabi/gcc/../../../lib/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/../../../../../arm-poky-linux-gnueabi/include"
#include "..." search starts here:
...



Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
This cultural mystique surrounding the  biological  function  --  you
realize humans are overly preoccupied with the subject.
	-- Kelinda the Kelvan, "By Any Other Name", stardate 4658.9

