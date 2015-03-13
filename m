Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E26EE0086D; Fri, 13 Mar 2015 02:02:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DD8CE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 02:02:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP; 13 Mar 2015 01:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,393,1422950400"; d="scan'208";a="691534294"
Received: from bonchen-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.8.183])
	by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2015 02:01:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Date: Fri, 13 Mar 2015 09:01:48 +0000
Message-ID: <4649620.1oiO9F2Se0@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A8069052BA@G2W2533.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A8069052BA@G2W2533.americas.hpqcorp.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: running task only for native but not target?
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
X-List-Received-Date: Fri, 13 Mar 2015 09:02:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Yannick,

On Thursday 12 March 2015 19:05:13 Koehler, Yannick wrote:
> I have a package that produce a binary that I need for native, and an C
> header file that I need for target.
> 
> I put the following do_install function to install appropriately the bin or
> header according to the class:
> 
> 	do_install_append_class-target () {
> 	        install -d ${D}${includedir}
> 	        install -m 0755 ${S}/ifrpc.h ${D}${includedir}
> 	}
> 
> 	do_install_append_class-native() {
> 	        install -d ${D}${bindir}
> 	        install -m 0755 ${S}/ifrpcgen ${D}${bindir}
> 	}
> 
> but is there a way for me to disable do_patch/do_configure/do_compile only
> when building for the target?  I have tried the following without success:
> 
> 	do_configure_class-target[noexec] = "1"
> 	do_patch_class-target[noexec] = "1"
> 	do_compile_class-target[noexec] = "1"
> 
> It appears the OVERRIDES do not apply here, any hint on how I can achieve
> this?

Probably the easiest way would be to just null out the tasks just for the 
target class i.e.

do_configure_class-target () {
   :
}

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

