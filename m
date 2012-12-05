Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5808E0120C
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 04:38:22 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YGfcY1f10z4KK7l;
	Wed,  5 Dec 2012 13:38:21 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YGfcY0gSSzbbks;
	Wed,  5 Dec 2012 13:38:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id WXLsQpXQ9L8D; Wed,  5 Dec 2012 13:38:19 +0100 (CET)
X-Auth-Info: LjXxNcl77XntKqI5IL7yxHWBnfkcMJm4oU3BaLNU4hQ=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed,  5 Dec 2012 13:38:19 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id D1F5B1A6DE0;
	Wed,  5 Dec 2012 13:38:18 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id C17EB200FF2;
	Wed,  5 Dec 2012 13:38:18 +0100 (CET)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20121203124234.6327B200FF8@gemini.denx.de>
References: <20121203124234.6327B200FF8@gemini.denx.de>
Comments: In-reply-to Wolfgang Denk <wd@denx.de>
	message dated "Mon, 03 Dec 2012 13:42:34 +0100."
Date: Wed, 05 Dec 2012 13:38:18 +0100
Message-Id: <20121205123818.C17EB200FF2@gemini.denx.de>
Cc: hs@denx.de
Subject: Re: sysroot for use with GDB
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
X-List-Received-Date: Wed, 05 Dec 2012 12:38:23 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

nobody here who could help out?

In message <20121203124234.6327B200FF8@gemini.denx.de> I wrote:
> 
> according to the documentation [1] the right way to debug applications
> on the target is to load the target library information in GDB using
> 
> 	set solib-absolute-prefix /path/to/tmp/rootfs
> 
> i. e. referring it to the libraries in the target root file system
> image.  Assuming the target root file system uses by defualt stripped
> libraries, we need to set up a copy of the rootfs with debug
> information included.
> 
> But do we really have to?  Why cannot we use the libraries present in
> the SDK's sysroot directory (i. e. what OECORE_TARGET_SYSROOT points
> to) ?

It appears that documentation and code are inconsistent; at least the
eclipse plugin generates a .gdbinit script which contains a

	set sysroot /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi

statement, i. e. it uses OECORE_TARGET_SYSROOT as I thought should
work - but it doesn't.

> Trying to do so, we see that it fails.  Our current suspicion is that
> maybe prelinking of the target images and libraries introduces some
> incompatibility.  Is this a reasonable assumption, and if so, is this
> a problem that should be fixed, or unavoidable for some reason?  Or is
> there a problem with the libraries in OECORE_TARGET_SYSROOT ?
> 
> All help welcome - thanks in advance.
> 
> [1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#platdev-gdb-remotedebug-launch-gdb

OK, guess I should enter a bug in bugzilla, then?


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Humanity has the  stars  in  its  future,  and  that  future  is  too
important  to be lost under the burden of juvenile folly and ignorant
superstition.                                          - Isaac Asimov

