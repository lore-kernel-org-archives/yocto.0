Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19C23E003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 02:42:25 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3c7vCN2FPMz4KK6L
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 11:42:24 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3c7vCN0gKVzbbh9
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 11:42:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id Vl9ItXrIzNB1 for <yocto@yoctoproject.org>;
	Mon,  5 Aug 2013 11:42:22 +0200 (CEST)
X-Auth-Info: wOxf7jUXB6iMPV2JNAyYSu/mnBfR2PE8syf/Gt7UIqA=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de [212.18.5.57])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 11:42:22 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net
	(host-82-135-33-74.customer.m-online.net [82.135.33.74]) by
	webmail.mnet-online.de (Horde Framework) with HTTP; Mon, 05 Aug 2013
	11:42:22 +0200
Message-ID: <20130805114222.15220qh2lyd417dw@webmail.mnet-online.de>
Date: Mon, 05 Aug 2013 11:42:22 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.5)
Subject: how to build external firmware for kernel
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
X-List-Received-Date: Mon, 05 Aug 2013 09:42:29 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Hello Yocto Comunity,

I have a linux kernel and a external firmware. Building manually,  
first I have to checkout and build the firmware "native" to obtain a  
firmware blob, then I need this firmware blob to build the kernel for  
the target.

So far I tried to do this in yocto with separate recipes: a  
firmware.bb and a mylinux.bb. In firmware.bb, I check out the firmware  
via git and let it run "make" on native (this is necessary, since the  
Makefile builds a tool which then automatically gets called inside the  
Makefile to create the firmware blob).

In the kernel recipe, I declare a DEPEND on firmware.bb. I set the  
.config options to load an extra firmware blob. But now, I have a  
problem: I need actually to have the firmware blob within the kernel's  
file hierarchy. Ideally I would copy/move it from the firmware's  
destination directory into the kernel's source directory.

Questions:
How can I achieve this kind of setup working out with yocto or  
bitbake, respectively? What might be the best approach in my situation?

Thanks in advance,
Lothar


