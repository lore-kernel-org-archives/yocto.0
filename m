Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92CB9E011CC
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 23:16:23 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3Yr1Bt5xYvz4KKbk;
	Tue, 22 Jan 2013 08:16:22 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3Yr1Bt4Bv5zbbbr;
	Tue, 22 Jan 2013 08:16:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id LVfgMIR6r4K1; Tue, 22 Jan 2013 08:15:50 +0100 (CET)
X-Auth-Info: ZXldswb2OF0Yp4nn/I81+U/APRLIHatOjyn4PujYcu4=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 22 Jan 2013 08:16:21 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id C1FE81A14C6;
	Tue, 22 Jan 2013 08:16:21 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 9D11520DA8C;
	Tue, 22 Jan 2013 08:16:21 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
Date: Tue, 22 Jan 2013 08:16:21 +0100
Message-Id: <20130122071621.9D11520DA8C@gemini.denx.de>
Subject: Installation of i686 SDK on a x86_64 machine?
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
X-List-Received-Date: Tue, 22 Jan 2013 07:16:23 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Hi,

in previous releases it ha always been possible to install a SDK
configured for a i686 machine on both x86 and x86_64 systems.

Since commit c04f5435 "populate_sdk_base.bbclass: use SDK_ARCH instead
of SDKMACHINE" this does not work any more; instead, installation will
abort with "Error: Installation machine not supported!"

++ uname -m
++ sed -e 's/i[3-6]86/ix86/' -e 's/x86[-_]64/x86_64/'
+ INST_ARCH=x86_64
++ echo i686
++ sed -e 's/i[5-6]86/ix86/'
+ SDK_ARCH=ix86
+ '[' x86_64 '!=' ix86 ']'
+ echo 'Error: Installation machine not supported!'
Error: Installation machine not supported!
+ exit -1


Is this intended behaviour (and if so, why?) or rather a bug that
should be reported and fixed?

Thanks in advance.

Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
If there was anything that depressed him more than his own  cynicism,
it was that quite often it still wasn't as cynical as real life.
                                 - Terry Pratchett, _Guards! Guards!_

