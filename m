Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754B1E01415
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 03:10:01 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cVyLv5LS5z4KK8V
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 12:09:59 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3cVyLv3MtTzbbm9
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 12:09:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id iXAsToButQ5z for <yocto@yoctoproject.org>;
	Thu,  5 Sep 2013 12:09:57 +0200 (CEST)
X-Auth-Info: ZH9xWowmplVfeZiFQrE2sCuAdevc7sdPJB2bz3h81is=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2013 12:09:57 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Thu, 05 Sep 2013 10:09:57 +0000
MIME-Version: 1.0
Date: Thu, 05 Sep 2013 12:09:57 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
Message-ID: <b9f5b1f042ece4ed9e9d70b71e919fcd@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.3
Subject: SRC_URI_kernel in machine conf
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
X-List-Received-Date: Thu, 05 Sep 2013 10:10:01 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello Yoctoholics!

Is it possible to declare a kernels' SRC_URI, as also certain functions, 
directly in the machine config, instead of the kernel .bb?

Example: currently I declare the following in a mykernel.bb (derrived 
from kernel.bbclass)
     SRC_URI_mymachine = "git:my-git-repo"
     do_compile_append_mymachine(){
         rm somefile
     }

...is it possible now, to move this specific code into the 
mymachine.conf file, like
     SRC_URI_mykernel = "git:my-git-repo"
     do_compile_mykernel_append(){
         rm somefile
     }

Questions:
1) Is this possible at all?

2) Is it better to use suffix "_mykernel", "_kernel" or 
"_virtual/kernel"?

3) I saw settings sometimes using the suffix "_kernelname" e.g. 
"_linux-yocto" and other times "_virtual/kernel" - what are the 
differences between them? When better use one, when better use the 
other?

BR,
L

