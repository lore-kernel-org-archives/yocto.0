Return-Path: <gsanahuj@hds.utc.fr>
Received: from mxgw.utc.fr (mxgw.utc.fr [195.83.155.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6D92E005B1
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 00:17:51 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AvQKAFIeqFLDU5sI/2dsb2JhbABZgwc4pHKWJBZ0gmRAPRYYAwIBAgE/GQgBAYgCAaJcnnmPIoQeBJQyBYUNhRWLToMqOw
X-IPAS-Result: AvQKAFIeqFLDU5sI/2dsb2JhbABZgwc4pHKWJBZ0gmRAPRYYAwIBAgE/GQgBAYgCAaJcnnmPIoQeBJQyBYUNhRWLToMqOw
X-IronPort-AV: E=Sophos;i="4.93,870,1378850400"; d="scan'208";a="96108498"
Received: from smtps.utc.fr ([195.83.155.8])
	by mxgwout.utc.fr with ESMTP; 11 Dec 2013 09:17:40 +0100
Received: from [172.17.158.210] (giport07-gi.utc [172.17.158.210])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: gsanahuj@smtps.utc.fr)
	by smtps.utc.fr (Postfix) with ESMTPSA id CE581E6071
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 09:17:39 +0100 (CET)
Message-ID: <52A81FBA.1070305@hds.utc.fr>
Date: Wed, 11 Dec 2013 09:18:02 +0100
From: Guillaume Sanahuja <gsanahuj@hds.utc.fr>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: cannot add nativesdk package to toolchain
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
X-List-Received-Date: Wed, 11 Dec 2013 08:17:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am trying to add a nativesdk dev package (from a custom recipe) to a 
toolchain, in poky 10.0.0. I have added nativesdk-mypackage-dev to 
TOOLCHAIN_HOST_TASK variable, but when I bitbake it I got the following 
error:
  Collected errors:
|  * opkg_install_cmd: Cannot install package nativesdk-mypackage-dev.
The log does not say anything else...

Yet, mypackage.bb contains BBCLASSEXTEND = "nativesdk" and I can see the 
ipks in the directory 
tmp/work/x86_64-nativesdk-pokysdk-linux/nativesdk-mypackage

Now, I am trying to do the same thing with non custom packages, and I 
see a strange behaviour:
-adding nativesdk-libmpc-dev to TOOLCHAIN_HOST_TASK works
-addinc nativesdk-lzo-dev to TOOLCHAIN_HOST_TASK fails with same error:
Collected errors:
|  * opkg_install_cmd: Cannot install package nativesdk-lzo-dev.

If I look at the 2 recipes, they are very close; so I do not understand 
why the second one fails. Again, all ipks exist in 
tmp/work/x86_64-nativesdk-pokysdk-linux/ directory.

What am I doing wrong? Or how do I install a dev package for the host in 
the toolchain?
Thanks for your help.
Regards,
Guillaume



