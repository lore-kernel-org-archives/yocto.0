Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EE31E009E6; Fri, 22 May 2015 09:49:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2413CE00945
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 09:49:04 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 22 May 2015 09:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,476,1427785200"; d="scan'208";a="575520648"
Received: from cestaunt-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.15.40])
	by orsmga003.jf.intel.com with ESMTP; 22 May 2015 09:49:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto yocto <yoctomailinglist@gmail.com>
Date: Fri, 22 May 2015 17:49:02 +0100
Message-ID: <11192520.5TF2irfV67@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CACTu1LgR4wGQqdvOE_SfkBmjiebaL2KHef+KeNf3DUNTnmmbjA@mail.gmail.com>
References: <CACTu1LijXDjHx-1065KrogZgyLTCSPur3dC4sbA6Qq1pkDz0Wg@mail.gmail.com>
	<2034211.1JQoR16vcr@peggleto-mobl.ger.corp.intel.com>
	<CACTu1LgR4wGQqdvOE_SfkBmjiebaL2KHef+KeNf3DUNTnmmbjA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to enable php5 (php_5.5.24.bb) support for postgresql
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
X-List-Received-Date: Fri, 22 May 2015 16:49:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 22 May 2015 16:40:15 yocto yocto wrote:
> Hello Paul,
> 
> "build" does not exist. I attached the config.log from the following folder:
> 
> /development/edison-src/build/tmp/work/core2-32-poky-linux/php/5.5.24-r0/php
> -5.5.24

Ah right, of course, in daisy we didn't use a separate build dir, I had 
forgotten.
 
> When you search for "unsafe" or "postgresql" you will see warnings and
> errors. E.g. the following:
> 
> /home/kse/development/edison-src/build/tmp/sysroots/x86_64-linux/usr/libexec
> /core2-32-poky-linux/gcc/i586-poky-linux/4.8.2/ld: warning: library search
> path "/usr/lib" is unsafe for cross-compilation
> 
> According to
> http://comments.gmane.org/gmane.linux.embedded.yocto.general/4859 this
> seems to generate the " autoconf log indicates errors" message. But I dont
> know how to proceed?

Hmm, so this is very strange - I just switched to the daisy branch, copied in 
the php recipe from meta-oe master, set the config (in my case I simply set the 
PACKAGECONFIG_pn-php = "mysql sqlite3 pgsql" in local.conf, which should be 
pretty much equivalent to what you did), and built it, and I didn't get any 
errors at all. It's possible the issue may be triggered by something you have 
installed on your build host however (not that it should, it shouldn't be 
looking at the host at all - that's the source of this problem). Did you copy 
in any other recipes from master or just php?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

