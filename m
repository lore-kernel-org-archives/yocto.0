Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACD55E008DC; Tue, 27 Jan 2015 01:41:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E75FE0083A
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 01:41:07 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2015 01:41:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,473,1418112000"; d="scan'208";a="643128564"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by orsmga001.jf.intel.com with ESMTP; 27 Jan 2015 01:41:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mahdi Saadat <MahdiS@nimakco.net>
Date: Tue, 27 Jan 2015 09:41:05 +0000
Message-ID: <1955411.sRnOWoEka7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <009901d03a04$7a2e4fc0$6e8aef40$@nimakco.net>
References: <005e01d037a8$61d3d390$257b7ab0$@nimakco.net>
	<3420625.Ca7nvJBmSj@peggleto-mobl5.ger.corp.intel.com>
	<009901d03a04$7a2e4fc0$6e8aef40$@nimakco.net>
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 27 Jan 2015 09:41:17 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

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
> NOTE: Installing the following packages: iptables run-postinsts dansguardian
> squid clamav snort packagegroup-core-boot
> ERROR: dansguardian not found in the base feeds (nimak core2-32-intel-common
> core2-32 i586 x86 noarch any all).
> acl-2.2.52-r0@core2_32 acl-dbg-2.2.52-r0@core2_32 acl-dev-2.2.52-r0@core2_32
> acl-doc-2.2.52-r0@core2_32 acl-locale-de-2.2.52-r0@core2_32 acl-local$
> DEBUG: Python function do_rootfs finished
> ERROR: Function failed: do_rootfs

This suggests that the main package is empty, which likely means that
do_install didn't install anything to ${D} (or less likely, none of the files
that it did install matched that the value of FILES_${PN} for the recipe).
See this section of the manual for a bit more detail:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-installing

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

