Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71235E01483
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 03:14:50 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Yr6V100c3z4KKXq;
	Tue, 22 Jan 2013 12:14:48 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Yr6V05glvzbbh2;
	Tue, 22 Jan 2013 12:14:48 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id Mlkmqm_a8ZNn; Tue, 22 Jan 2013 12:14:15 +0100 (CET)
X-Auth-Info: //NBXB1DNbPvWZKG6ItUIBGTNyisJ4lwzQu5v4KA6h4=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 22 Jan 2013 12:14:46 +0100 (CET)
Received: from gemini.denx.de (unknown [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 7E35C1A14C6;
	Tue, 22 Jan 2013 12:14:46 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 4E5F220DA8C;
	Tue, 22 Jan 2013 12:14:46 +0100 (CET)
To: Laurentiu Palcu <laurentiu.palcu@intel.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <50FE5F87.4060300@intel.com>
References: <20130122071621.9D11520DA8C@gemini.denx.de>
	<50FE4900.7020804@intel.com>
	<20130122090351.6492320DA8C@gemini.denx.de>
	<50FE5F87.4060300@intel.com>
Comments: In-reply-to Laurentiu Palcu <laurentiu.palcu@intel.com>
	message dated "Tue, 22 Jan 2013 11:44:39 +0200."
Date: Tue, 22 Jan 2013 12:14:46 +0100
Message-Id: <20130122111446.4E5F220DA8C@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installation of i686 SDK on a x86_64 machine?
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
X-List-Received-Date: Tue, 22 Jan 2013 11:14:50 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Laurentiu,

In message <50FE5F87.4060300@intel.com> you wrote:
> 
> > Id	SDK_ARCH	INST_ARCH	Status
> > ==============================================
> > 1	ix86		ix86		works
> > 2	ix86		x86_64		works
> > 3	x86_64		ix86		cannot work
> > 4	x86_64		x86_64		works
> > 
> > The bug report is about case 3 - attempting to install a 64 bit SDK on
> > a 32 bit machine.  This indeed cannot work and shuld be prevented byy
> > the installer.
> > 
> > But the current code also prevents case 2, installing 32 bit images on
> > a 64 bit machine, which works perfectly fine (assuming you have the
> > needed 32 bit libraries installed).
> 
> I see your point. Would you please file a bug on this?

Done, with a patch included.

Please see https://bugzilla.yoctoproject.org/show_bug.cgi?id=3770

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Worlds are conquered, galaxies destroyed -- but a woman is  always  a
woman.
	-- Kirk, "Conscience of the King", stardate unknown

