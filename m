Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E049E00985; Wed, 25 Nov 2015 14:26:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3565AE007C9
	for <yocto@yoctoproject.org>; Wed, 25 Nov 2015 14:26:43 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 25 Nov 2015 14:26:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,344,1444719600"; d="scan'208";a="859463178"
Received: from boonguan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.188])
	by orsmga002.jf.intel.com with ESMTP; 25 Nov 2015 14:26:41 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Caio <caiortp@gmail.com>
Date: Thu, 26 Nov 2015 11:26:38 +1300
Message-ID: <2180797.fvhLvehB0f@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.13-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <CAJqtCybKFSzf2uhe3ox7LTExCOF+KGNGRHL_hecz6LipTKNmug@mail.gmail.com>
References: <CAJqtCybKFSzf2uhe3ox7LTExCOF+KGNGRHL_hecz6LipTKNmug@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Help with Opensips Recipe - QA run found fatal errors
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
X-List-Received-Date: Wed, 25 Nov 2015 22:26:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Caio,

On Tuesday 24 November 2015 11:48:13 Caio wrote:
> I'm writing a recipe to a Sip proxy Opensips, but I'm having problems with
> QA Issues.
> In the First time I tried to use make install from Opensips Makefile I had
> problem with QA Issues,  so I added all the folders to FILES_${PN} and
> FILES_${PN} but I still having problem.
> 
> So I decided to start small, creating the folder structure and copy only
> the binary files and after I will copy all the files using the  do_install
> function.
> 
> But when I added the folders and I started to have problems with QA again.
> 
> FILES_${PN} = " \
>         ${sbindir}/* \
>         ${sysconfdir}/* \
>         ${sysconfdir}/opensips/* \
>         ${libdir}/* \
>         ${libdir}/opensips/* \
>         ${libdir}/opensips/modules/* \
>         "
> Someone could help me with this problem?
> 
> 
> Thank you very much
> 
> Best Regards,
> 
> Caio Pereira
> 
> 
> ERROR: QA Issue: opensips: The compile log indicates that host include
> and/or library paths were used.
>          Please check the log
> '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky
> -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more information.
> [compile-host-path]
> 
> 
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-
> linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973 ERROR: Task 9
> (/home/icchw/fsl-community-bsp/sources/icchw/meta-caio/recipes-telephony/ope
> nsips/ opensips_2.2.0.bb, do_package_qa) failed with exit code '1'
> 
> 
> cat
> /home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky-
> linux-gnueabi/opensips/2.2.0-r0/temp/log.do_package_qa.30973
> 
> DEBUG: Python function read_subpackage_metadata finished
> ERROR: QA Issue: opensips: The compile log indicates that host include
> and/or library paths were used.
>          Please check the log
> '/home/icchw/fsl-community-bsp/small_steps/tmp/work/armv7at2hf-vfp-neon-poky
> -linux-gnueabi/opensips/2.2.0-r0/temp/log.do_compile' for more information.
> [compile-host-path]

Did you check the mentioned compile log?

FYI a good reference for these QA checks is:

  http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#qa-errors-and-warnings

As mentioned there you should find somewhere in that log "is unsafe for
cross-compilation" or "CROSS COMPILE Badness".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

