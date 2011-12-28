Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66215E006B5
	for <yocto@yoctoproject.org>; Wed, 28 Dec 2011 11:46:36 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id AD0581C0C0DC;
	Wed, 28 Dec 2011 20:46:34 +0100 (CET)
X-Auth-Info: MMB2Nk6MGOAMnfNSJE2zcPxHQR/SqnGiLUz4oDmbqBA=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA id 71EFD1C000BB;
	Wed, 28 Dec 2011 20:46:34 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 46FD71A3516;
	Wed, 28 Dec 2011 20:46:34 +0100 (CET)
Received: from gemini.denx.de (localhost.localdomain [127.0.0.1])
	by gemini.denx.de (Postfix) with ESMTP id 32DC819082F8;
	Wed, 28 Dec 2011 20:46:34 +0100 (CET)
To: McClintock Matthew-B29882 <B29882@freescale.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CAEsOVNc9jV5rO3YiLgL19Q-VeYQ-H-E5sy-huvfYXU3pMAVZHA@mail.gmail.com>
References: <1324545669-5023-1-git-send-email-wd@denx.de>
	<CAEsOVNc9jV5rO3YiLgL19Q-VeYQ-H-E5sy-huvfYXU3pMAVZHA@mail.gmail.com>
Comments: In-reply-to McClintock Matthew-B29882 <B29882@freescale.com>
	message dated "Wed, 28 Dec 2011 00:40:17 +0000."
Date: Wed, 28 Dec 2011 20:46:34 +0100
Message-Id: <20111228194634.32DC819082F8@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] clutter-1.6: make build for armv4t
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
X-List-Received-Date: Wed, 28 Dec 2011 19:46:39 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Matthew,

In message <CAEsOVNc9jV5rO3YiLgL19Q-VeYQ-H-E5sy-huvfYXU3pMAVZHA@mail.gmail.com> you wrote:
> On Thu, Dec 22, 2011 at 3:21 AM, Wolfgang Denk <wd@denx.de> wrote:
> > GCC will define __ARM_ARCH_4T__ when building with "-march=3Darmv4t" so
> > we can check this to turn off the use of 'clz' instructions, which
> > otherwise would cause compile errors like "selected processor does
> > not support ARM mode `clz r3,r0'".
...
> This version was dropped recently... Is this possibly for the 1.1.1
> edison release? If so, I would CC: Joshua Lock.

yes, this patch was for the edison series (mainline has updated to
clutter-1.8 in the meantime).

Sorry for not being clear.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
"'Tis true, 'tis pity, and pity 'tis 'tis true."
    - Poloniouius, in Willie the Shake's _Hamlet, Prince of Darkness_

