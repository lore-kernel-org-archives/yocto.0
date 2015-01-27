Return-Path: <mahdis@nimakco.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B449E008EC; Tue, 27 Jan 2015 04:11:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail82.nedahosting.com (unknown [198.55.48.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25AD0E008DC
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:10:57 -0800 (PST)
Received: from UnknownHost [2.190.181.23] by mail.nedahosting.com with SMTP;
	Tue, 27 Jan 2015 07:10:47 -0500
From: "Mahdi Saadat" <MahdiS@nimakco.net>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
	<3420625.Ca7nvJBmSj@peggleto-mobl5.ger.corp.intel.com>
	<009901d03a04$7a2e4fc0$6e8aef40$@nimakco.net>
	<1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 27 Jan 2015 15:40:43 +0330
Message-ID: <00d101d03a2a$49fa6b10$ddef4130$@nimakco.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQG02yph8e5oUF8QM+FX0mxlqpCeKQJJ8mlKAry/BCQB4rbRJpzTUqVg
Cc: yocto@yoctoproject.org
Subject: Re: dansguardian
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
X-List-Received-Date: Tue, 27 Jan 2015 12:11:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: fa

After I used inherit autotools in my recipe the .configure steps stop on
this error:

line 6455: PKG_PROG_PKG_CONFIG: command not found
line 6482: syntax error near unexpected token `PCRE,libpcre'---------------


Regards
Mahdi 

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com] 
Sent: Tuesday, January 27, 2015 1:11 PM
To: Mahdi Saadat
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] dansguardian

On Tuesday 27 January 2015 11:10:03 Mahdi Saadat wrote:
> Thanks for your response the log file is as below:
> DEBUG: Executing python function rootfs_process_ignore
> DEBUG: Python function rootfs_process_ignore finished
> DEBUG: Executing python function rootfs_runtime_mapping
> DEBUG: Python function rootfs_runtime_mapping finished
> DEBUG: Executing python function do_rootfs
> NOTE: configuring RPM platform settings
> NOTE: configuring RPM system provides
> NOTE: configuring RPM DB settings
> NOTE: configuring Smart settings
> NOTE: Note: adding Smart channel nimak (45)
> NOTE: Note: adding Smart channel core2_32 (40)
> NOTE: Note: adding Smart channel all (35)
> NOTE: adding Smart RPM DB channel
> NOTE: Note: configuring RPM cross-install scriptlet_wrapper
> NOTE: ###### Generate rootfs #######
> NOTE: Executing
> '/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
> --update -q /home/nimak/poky/build/tmp/deploy/rpm/all' ...
> NOTE: Executing
> '/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
> --update -q /home/nimak/poky/build/tmp/deploy/rpm/nimak' ...
> NOTE: Executing
> '/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
> --update -q /home/nimak/poky/build/tmp/deploy/rpm/core2_32' .$
> NOTE: Installing the following packages: iptables run-postinsts 
> dansguardian squid clamav snort packagegroup-core-boot
> ERROR: dansguardian not found in the base feeds (nimak 
> core2-32-intel-common
> core2-32 i586 x86 noarch any all).
> acl-2.2.52-r0@core2_32 acl-dbg-2.2.52-r0@core2_32 
> acl-dev-2.2.52-r0@core2_32
> acl-doc-2.2.52-r0@core2_32 acl-locale-de-2.2.52-r0@core2_32 acl-local$
> DEBUG: Python function do_rootfs finished
> ERROR: Function failed: do_rootfs

This suggests that the main package is empty, which likely means that
do_install didn't install anything to ${D} (or less likely, none of the
files that it did install matched that the value of FILES_${PN} for the
recipe).
See this section of the manual for a bit more detail:

 
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-reci
pe-installing

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



