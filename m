Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02828E007C1; Mon, 28 Jul 2014 03:35:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB8E7E006ED
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 03:34:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Jul 2014 03:29:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,748,1400050800"; d="scan'208";a="580002551"
Received: from cfitzsim-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.251])
	by orsmga002.jf.intel.com with ESMTP; 28 Jul 2014 03:34:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Date: Mon, 28 Jul 2014 11:34:53 +0100
Message-ID: <3638255.FXZXZqP4FB@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.13.3 (Linux/3.15.6-200.fc20.x86_64; KDE/4.13.3; x86_64; ; )
In-Reply-To: <53D623AD.5080006@dynamicdevices.co.uk>
References: <53D623AD.5080006@dynamicdevices.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: 'pod' problem building openssl 1.0.1g with latest daisy branch
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
X-List-Received-Date: Mon, 28 Jul 2014 10:35:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alex,

On Monday 28 July 2014 11:19:25 Alex J Lennon wrote:
> I pulled the latest daisy branch over the weekend and since am having
> trouble building openssl 1.0.1g.
> 
> I removed tmp and rebuilt just in case there was some issue there but
> the problem remains.
> 
> Conf:
> 
> BB_VERSION        = "1.22.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "imx6qsabresd"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6.1"
> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "daisy:37532ceb19e08a44ef2a3c86e63ffb60ae8b8f5c"
> meta-oe
> meta-efl
> meta-webserver
> meta-networking   = "daisy:a6dcf6265822ca1484d991d10a3042e04a960cdb"
> meta-fsl-arm      = "master:fc8bcfae0658375b1c241b6b9633b0c2dce6ac88"
> meta-fsl-arm-extra = "master:9481991ec1f17bb2555a2a32d1680b1f743d7101"
> meta-fsl-demos    = "master:27fdb2f2642ecd55d5633bde880dd4c37acd0d42"
> meta-mono         = "master:74bd3be613ebb980e60e5b98814d4a4bd96a61e0"
> 
> Layers:
> 
> ${BSPDIR}/sources/poky.daisy/meta \
> ${BSPDIR}/sources/poky.daisy/meta-yocto \
> ${BSPDIR}/sources/meta-openembedded.daisy/meta-oe \
> ${BSPDIR}/sources/meta-openembedded.daisy/meta-efl \
> ${BSPDIR}/sources/meta-openembedded.daisy/meta-webserver \
> ${BSPDIR}/sources/meta-openembedded.daisy/meta-networking \
> ${BSPDIR}/sources/meta-fsl-arm \
> ${BSPDIR}/sources/meta-fsl-arm-extra \
> ${BSPDIR}/sources/meta-fsl-demos \
> ${BSPDIR}/sources/meta-mono \
> 
> Failure seems related to corrupt 'pod' files
> 
> | installing man1/ciphers.1ssl
> | installing man1/cms.1ssl
> | cms.pod around line 457: Expected text after =item, not a number
> | cms.pod around line 461: Expected text after =item, not a number
> | cms.pod around line 465: Expected text after =item, not a number
> | cms.pod around line 470: Expected text after =item, not a number
> | cms.pod around line 474: Expected text after =item, not a number
> | POD document had syntax errors at /usr/bin/pod2man line 71.
> | make: *** [install_docs] Error 255
> | ERROR: oe_runmake failed
> 
> I see from a little googling that there's recent (-ish) commentary on an
> issue building these files with perl
> 
> e.g.
> http://askubuntu.com/questions/454575/error-255-when-trying-to-install-opens
> sl-1-0-1g-from-source
> 
> I see my perl-native is 5.14.3 so not quite the same as the issue in the
> link above.
> 
> Can anybody comment on whether this is a known issue or somehow finger
> trouble on my part?

So, I think this is an issue with newer host Perl and OpenSSL 1.0.1g. This 
looks like it might be the patch that fixes it:

https://git.openssl.org/gitweb/?p=openssl.git;a=commit;h=23f5908ac753b176af2a0690e0ebb53c95ef192b

If so we can apply this in daisy (master already has 1.0.1h which includes 
this fix.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

