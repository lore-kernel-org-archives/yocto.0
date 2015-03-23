Return-Path: <haim.badash@orcam.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F1BFE0094C; Mon, 23 Mar 2015 01:52:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,UNPARSEABLE_RELAY
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 401 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Mar 2015 01:52:25 PDT
Received: from mobileye.com (mx.mobileye.com [94.188.132.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DEA5E00757
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 01:52:25 -0700 (PDT)
Received: from Internal Mail-Server by Master (envelope-from
	haim.badash@orcam.com) with SMTP; 23 Mar 2015 10:26:11 +0200
Received: from localhost (localhost [127.0.0.1]) by mail.orcam.com (Postfix)
	with ESMTP id 7A0AD3C2585 for <yocto@yoctoproject.org>; Mon, 23 Mar 2015
	10:30:07 +0200 (IST)
Received: from mail.orcam.com ([127.0.0.1]) by localhost (mail.orcam.com
	[127.0.0.1]) (amavisd-new, port 10032) with ESMTP id GrR6lQdANTf7 for
	<yocto@yoctoproject.org>; Mon, 23 Mar 2015 10:30:06 +0200 (IST)
Received: from localhost (localhost [127.0.0.1]) by mail.orcam.com (Postfix)
	with ESMTP id 1DFDB3C258F for <yocto@yoctoproject.org>; Mon, 23 Mar 2015
	10:30:06 +0200 (IST)
X-Virus-Scanned: amavisd-new at mail.orcam.com
Received: from mail.orcam.com ([127.0.0.1]) by localhost (mail.orcam.com
	[127.0.0.1]) (amavisd-new, port 10026) with ESMTP id gfZrNvOIpEur for
	<yocto@yoctoproject.org>; Mon, 23 Mar 2015 10:30:05 +0200 (IST)
Received: from mail.orcam.com (mail.orcam.com [172.16.4.9]) by
	mail.orcam.com (Postfix) with ESMTP id 9C4693C2585 for
	<yocto@yoctoproject.org>; Mon, 23 Mar 2015 10:30:05 +0200 (IST)
Date: Mon, 23 Mar 2015 10:30:00 +0200 (IST)
From: Haim Badash <haim.badash@orcam.com>
To: yocto@yoctoproject.org
Message-ID: <308713978.132640.1427099397925.JavaMail.zimbra@orcam.com>
In-Reply-To: <17155169.111135.1427097728846.JavaMail.zimbra@orcam.com>
MIME-Version: 1.0
X-Originating-IP: [192.168.100.71]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC41 (Linux)/8.0.6_GA_5922)
Thread-Topic: yocto toolchain
Thread-Index: hEe/7NE185NyovLnJfWNXRywNtpopQ==
Subject: yocto toolchain
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
X-List-Received-Date: Mon, 23 Mar 2015 08:52:30 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

How can I install the yocto toolchain  in directory that I choose (not the default directory)?
I run poky...toolchain-1.6.2.sh (that created when I run 'bitbake meta-toolchain'), and I choose  target directory for SDK.
The toolchain Installed in the directory that I choose, but yet has a link to default directory (/opt/poky/1.6.2/).


/my_dir/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc -v

COLLECT_GCC=/my_dir/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-gcc
COLLECT_LTO_WRAPPER=/my_dir/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/../../libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/lto-wrapper
 --target=arm-poky-linux-gnueabi --prefix=/opt/poky/1.6.2/sysroots/x86_64-pokysdk-linux/usr -- ...
 ..exec_prefix=/opt/poky/1.6.2/sysroots/x86_64-pokysdk-linux/usr...
 include-dir=/opt/poky/1.6.2/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi/usr/include/c++ --with-build-time-.....

This mail was sent via Mail-SeCure system.



 
 
************************************************************************************
This footnote confirms that this email message has been scanned by
PineApp Mail-SeCure for the presence of malicious code, vandals & computer viruses.
************************************************************************************




