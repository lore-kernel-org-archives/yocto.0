Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 020A0E00848; Fri, 24 Oct 2014 07:03:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BEBE00796
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 07:02:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 24 Oct 2014 07:02:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,780,1406617200"; d="scan'208";a="619840825"
Received: from nmcnulty-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.119])
	by fmsmga002.fm.intel.com with ESMTP; 24 Oct 2014 07:01:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: prashanthg <prashanthg@vtitan.com>
Date: Fri, 24 Oct 2014 15:01:02 +0100
Message-ID: <14735214.HfBokpjakL@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-200.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <14941f2a94a.e5585218137807.4674279379222329606@vtitan.com>
References: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
	<1862666.GZ37KUIjUa@peggleto-mobl5.ger.corp.intel.com>
	<14941f2a94a.e5585218137807.4674279379222329606@vtitan.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Daisy - Beaglebone Black - core-image-minimal - Error: do_compile
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
X-List-Received-Date: Fri, 24 Oct 2014 14:03:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 24 October 2014 17:10:19 prashanthg wrote:
> @PaulEggleton Thanks a lot. I tried 'bitbake -c clean file-native' but it
> didn't seem to solve the issue.

Ah right, I now know how to trigger this. Did you perhaps switch from the dora 
to the daisy branch whilst keeping your existing TMPDIR? I would recommend you 
delete just your TMPDIR (by default the "tmp" directory under your build 
directory) and then try again. There was a change between dora and daisy that 
meant that the system could not remove old files from the sysroot, and thus the 
old magic file was getting in the way.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

