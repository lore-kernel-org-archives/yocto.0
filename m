Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C036BE01275
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 05:50:25 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Y4rz46ZMfz4KK70;
	Mon, 19 Nov 2012 14:50:24 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Y4rz455t3zbbjD;
	Mon, 19 Nov 2012 14:50:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id U1C-0BqHS6r7; Mon, 19 Nov 2012 14:47:36 +0100 (CET)
X-Auth-Info: wZqGtooj/KPaNMTlNVB2G3RF/3ESCebBGPXzSOFOLP8=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Mon, 19 Nov 2012 14:50:23 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 644401A6D92;
	Mon, 19 Nov 2012 14:50:23 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 5927D20032F;
	Mon, 19 Nov 2012 14:50:23 +0100 (CET)
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <50AA31D8.5020700@intel.com>
References: <20121119123504.22FAF20032F@gemini.denx.de>
	<50AA2EE4.1000207@communistcode.co.uk> <50AA31D8.5020700@intel.com>
Comments: In-reply-to Laurentiu Palcu <laurentiu.palcu@intel.com>
	message dated "Mon, 19 Nov 2012 15:19:20 +0200."
Date: Mon, 19 Nov 2012 14:50:23 +0100
Message-Id: <20121119135023.5927D20032F@gemini.denx.de>
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
X-List-Received-Date: Mon, 19 Nov 2012 13:50:26 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Laurentiu,

In message <50AA31D8.5020700@intel.com> you wrote:
> 
> >> -> source /opt/poky-test/environment-setup-armv5te-poky-linux-gnueabi
> >> -> ${TARGET_PREFIX}gcc -v -o /tmp/x /tmp/x.c
> 
> Just do: $CC -o /tmp/x /tmp/x.c
> 
> It should work.
> 
> echo $CC
> arm-poky-linux-gnueabi-gcc -march=armv5te -marm -mthumb-interwork
> -mtune=arm926ej-s --sysroot=/tests/sdk/sysroots/armv5te-poky-linux-gnueabi

Argh... Isn't it somewhat ... unconventional (to avoid stonger words)
to encode compiler options in a variable which is supposed to define
the "Program for compiling C programs" ?

Should such options not go to one of the *FLAGS variables instead?

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Bankers do it with interest (penalty for early withdrawal).

