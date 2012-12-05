Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D4F4E0120C
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 05:14:50 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3YGgQc51qBz3hhZC;
	Wed,  5 Dec 2012 14:14:48 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3YGgQb6qtCzbbfv;
	Wed,  5 Dec 2012 14:14:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id joiO4e85FnKf; Wed,  5 Dec 2012 14:14:46 +0100 (CET)
X-Auth-Info: 1o/QwJoaZyYiiuCYqZq5TZdS/GP0sUu2oc4Lm72ckPI=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Wed,  5 Dec 2012 14:14:46 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id CA7B21A6DE0;
	Wed,  5 Dec 2012 14:14:46 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id BE7A2200FF2;
	Wed,  5 Dec 2012 14:14:46 +0100 (CET)
To: yocto@yoctoproject.org
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <20121205123818.C17EB200FF2@gemini.denx.de>
References: <20121203124234.6327B200FF8@gemini.denx.de>
	<20121205123818.C17EB200FF2@gemini.denx.de>
Comments: In-reply-to Wolfgang Denk <wd@denx.de>
	message dated "Wed, 05 Dec 2012 13:38:18 +0100."
Date: Wed, 05 Dec 2012 14:14:46 +0100
Message-Id: <20121205131446.BE7A2200FF2@gemini.denx.de>
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
X-List-Received-Date: Wed, 05 Dec 2012 13:14:50 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hello,

In message <20121205123818.C17EB200FF2@gemini.denx.de> I wrote:
> 
> OK, guess I should enter a bug in bugzilla, then?

Done that; please see Bug 3540 - remote target debugging broken

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3540

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
I can type faster than I can move a  mouse,  so  I  find  menu-driven
drawing packages time consuming and frustrating.      - W. R. Stevens

