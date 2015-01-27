Return-Path: <mahdis@nimakco.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECB3CE008DD; Mon, 26 Jan 2015 23:40:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail82.nedahosting.com (unknown [198.55.48.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDDAFE0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 23:40:17 -0800 (PST)
Received: from UnknownHost [2.190.187.118] by mail.nedahosting.com with SMTP; 
	Tue, 27 Jan 2015 02:40:07 -0500
From: "Mahdi Saadat" <MahdiS@nimakco.net>
To: "'Paul Eggleton'" <paul.eggleton@linux.intel.com>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
	<3420625.Ca7nvJBmSj@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <3420625.Ca7nvJBmSj@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 27 Jan 2015 11:10:03 +0330
Message-ID: <009901d03a04$7a2e4fc0$6e8aef40$@nimakco.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQG02yph8e5oUF8QM+FX0mxlqpCeKQJJ8mlKnPgCBAA=
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
X-List-Received-Date: Tue, 27 Jan 2015 07:40:19 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: fa

Hi Paul
Thanks for your response the log file is as below:
DEBUG: Executing python function rootfs_process_ignore
DEBUG: Python function rootfs_process_ignore finished
DEBUG: Executing python function rootfs_runtime_mapping
DEBUG: Python function rootfs_runtime_mapping finished
DEBUG: Executing python function do_rootfs
NOTE: configuring RPM platform settings
NOTE: configuring RPM system provides
NOTE: configuring RPM DB settings
NOTE: configuring Smart settings
NOTE: Note: adding Smart channel nimak (45)
NOTE: Note: adding Smart channel core2_32 (40)
NOTE: Note: adding Smart channel all (35)
NOTE: adding Smart RPM DB channel
NOTE: Note: configuring RPM cross-install scriptlet_wrapper
NOTE: ###### Generate rootfs #######
NOTE: Executing
'/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--update -q /home/nimak/poky/build/tmp/deploy/rpm/all' ...
NOTE: Executing
'/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--update -q /home/nimak/poky/build/tmp/deploy/rpm/nimak' ...
NOTE: Executing
'/home/nimak/poky/build/tmp/sysroots/x86_64-linux/usr/bin/createrepo
--update -q /home/nimak/poky/build/tmp/deploy/rpm/core2_32' .$
NOTE: Installing the following packages: iptables run-postinsts dansguardian
squid clamav snort packagegroup-core-boot
ERROR: dansguardian not found in the base feeds (nimak core2-32-intel-common
core2-32 i586 x86 noarch any all).
acl-2.2.52-r0@core2_32 acl-dbg-2.2.52-r0@core2_32 acl-dev-2.2.52-r0@core2_32
acl-doc-2.2.52-r0@core2_32 acl-locale-de-2.2.52-r0@core2_32 acl-local$
DEBUG: Python function do_rootfs finished
ERROR: Function failed: do_rootfs

---------------
Regards
Mahdi 

-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com] 
Sent: Monday, January 26, 2015 2:18 PM
To: Mahdi Saadat
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] dansguardian

Hi Mahdi,

On Saturday 24 January 2015 11:05:45 Mahdi Saadat wrote:
> Does anyone knows about how put dansguardian on core-image-minimal?
> I Did some steps on creating the recipe but had some errors on config
stage.

You'll need to be a bit more specific about the errors you received before
anyone will be able to help.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



