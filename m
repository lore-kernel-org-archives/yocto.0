Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CC8BE00502
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 14:47:20 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 2424D188A178;
	Wed, 30 Nov 2011 23:50:50 +0100 (CET)
X-Auth-Info: Hi3h0YeXBqAZsHVsF9jZ3gxVit8SlT+LqflISdG6bLw=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id CFC201C00047;
	Wed, 30 Nov 2011 23:47:17 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 893D21A62D8;
	Wed, 30 Nov 2011 23:47:17 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 709871828FD3;
	Wed, 30 Nov 2011 23:47:17 +0100 (CET)
To: Joshua Lock <josh@linux.intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <4ED6AED5.8070308@linux.intel.com>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>
	<1592821.2ngvXcyh81@helios>
	<alpine.DEB.2.02.1111300644120.18752@oneiric>
	<4ED6AED5.8070308@linux.intel.com>
Comments: In-reply-to Joshua Lock <josh@linux.intel.com>
	message dated "Wed, 30 Nov 2011 14:31:49 -0800."
Date: Wed, 30 Nov 2011 23:47:17 +0100
Message-Id: <20111130224717.709871828FD3@gemini.denx.de>
Cc: yocto@yoctoproject.org
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Wed, 30 Nov 2011 22:47:22 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Joshua Lock,

In message <4ED6AED5.8070308@linux.intel.com> you wrote:
>
> What do people think to the idea of putting something into the image for
> those two specific machines which aliases poweroff to reboot?

I consider it a really bad idea, as "poweroff" is actually a very
different action than "reboot" - the former should shut down and halt
the system, while the latter should actually restart it.

It appears both operations are not properly working and need to be
fixed.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"If the code and  the  comments  disagree,  then  both  are  probably
wrong."                                                - Norm Schryer

