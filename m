Return-Path: <benjamin.esquivel@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88E41E0084D; Tue, 30 Dec 2014 11:49:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FE1CE003E3
	for <yocto@yoctoproject.org>; Tue, 30 Dec 2014 11:49:09 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 30 Dec 2014 11:49:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,666,1413270000"; d="scan'208";a="662562554"
Received: from besquive-mobl.zpn.intel.com (HELO [10.219.24.238])
	([10.219.24.238])
	by orsmga002.jf.intel.com with ESMTP; 30 Dec 2014 11:49:02 -0800
Message-ID: <1419968937.15852.18.camel@besquive-mobl.amr.corp.intel.com>
From: Benjamin Esquivel <benjamin.esquivel@linux.intel.com>
To: peterengcomau001@adam.com.au
Date: Tue, 30 Dec 2014 13:48:57 -0600
In-Reply-To: <a271ef72b7b9e3175419d6d8ffbb59e5bf6d0065@webmail.adam.com.au>
References: <a271ef72b7b9e3175419d6d8ffbb59e5bf6d0065@webmail.adam.com.au>
Organization: Intel OTC
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libm implementation issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benjamin.esquivel@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 30 Dec 2014 19:49:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2014-12-30 at 20:09 +1030, peterengcomau001@adam.com.au wrote:
> 
> I have some software that uses specific mathematical functions. When I
> attempt to compile them with the Yocto cross-compile tools, the
> functions are not recognised. E.g. 'pow' in <math>
> According to website https://wiki.yoctoproject.org/wiki/Minimal_Image,
> not all eglibc features are installed as standard, and that I should
> alter my local.conf file. I have added the following:
> 
> DISTRO_FEATURES_LIBC  += " libc-libm "
> DISTRO_FEATURES_append = " ${DISTRO_FEATURES_LIBC} "
> 

it seems like the instructions at:

https://wiki.yoctoproject.org/wiki/Minimal_Image#eglibc_component_configuration_system

are not giving the expected results. I tried it with dizzy and daisy and
I obtained the same ld error as you.

I filed a bug here for such:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7108
 
I guess we can track it from there.

> When I bitbake the image I get the following error: (this is just the
> end of the error log - there are many undefined references)
> 
> | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213: undefined reference to `__nss_database_custom'
> | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-arm-poky-linux-gnueabi/libc_pic.os: In function `__getpwuid_r':
> | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:196: undefined reference to `__nscd_getpwuid_r'
> | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213: undefined reference to `__nss_not_use_nscd_passwd'
> | /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/eglibc-2.19/libc/pwd/../nss/getXXbyYY_r.c:213: undefined reference to `__nss_database_custom'
> | /home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/libexec/cortexa5t2hf-vfp-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.2/ld: /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/build-arm-poky-linux-gnueabi/libc.so: hidden symbol `__nss_not_use_nscd_group' isn't defined
> | /home/lachlan/poky/build-atmel/tmp/sysroots/x86_64-linux/usr/libexec/cortexa5t2hf-vfp-poky-linux-gnueabi.gcc-cross-initial/gcc/arm-poky-linux-gnueabi/4.8.2/ld: final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> | ERROR: Function failed: do_compile (log file is located
> at /home/lachlan/poky/build-atmel/tmp/work/cortexa5t2hf-vfp-poky-linux-gnueabi/eglibc/2.19-r0/temp/log.do_compile.5266)
> ERROR: Task 39
> (/home/lachlan/poky/meta/recipes-core/eglibc/eglibc_2.19.bb,
> do_compile) failed with exit code '1'
> 
> 
> I have reviewed the sample.conf.extended file in the meta-yocto later
> and the above code should be OK, except that I have added the '+' and
> 'append'. If I use DISTRO_FEATURES instead of DISTRO_FEATURES_append,
> I get other errros:
> Missing or unbuildable dependency chain was:
> ['packagegroup-base-wifi']
> ERROR: Required build target 'atmel-qt5-demo-image' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['atmel-qt5-demo-image',
> 'packagegroup-base-wifi']
> 
> If I use DISTRO_FEATURES_LIBC = instead of DISTRO_FEATURES_LIBC += , I
> get these errors:
> ERROR: Unable to
> parse /home/lachlan/poky/meta/recipes-core/packagegroups/packagegroup-core-boot.bb: Exited with "1"#                                                        | ETA:  00:00:39
> ERROR: Please ensure that your setting of VIRTUAL-RUNTIME_init_manager
> (sysvinit) matches the entries enabled in DISTRO_FEATURES
> 
> 
> I am probably overriding a default setting. Is there an alternative
> way to include the libc-libm, or is there something else that could
> be causing the erro?
> 
> Thanks for any help
> 
> Lachlan
> ---- Message sent via Adam Internet WebMail - http://www.adam.com.au/



