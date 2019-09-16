Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC799E00B33; Mon, 16 Sep 2019 13:43:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56E0EE0098A
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2019 13:43:03 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Sep 2019 13:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,514,1559545200"; d="scan'208";a="386321264"
Received: from klim280-mobl1.gar.corp.intel.com (HELO linux.fritz.box)
	([10.255.155.138])
	by fmsmga005.fm.intel.com with ESMTP; 16 Sep 2019 13:43:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jan Kaisrlik <ja.kaisrlik@gmail.com>
Date: Tue, 17 Sep 2019 08:42:58 +1200
Message-ID: <2851546.8Xxn2JrY6M@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <CAPnxhu4Vy4kgSLnhoOmsVVGT8ovrtPL4UxL_cZtfmX50tEfyuw@mail.gmail.com>
References: <CAPnxhu4Vy4kgSLnhoOmsVVGT8ovrtPL4UxL_cZtfmX50tEfyuw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Extension of package name by distro version
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
X-List-Received-Date: Mon, 16 Sep 2019 20:43:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jan

On Monday, 16 September 2019 8:55:00 PM NZST Jan Kaisrlik wrote:
> I would like to ask if it is possible to extend all package names by
> some string f.e. by string corresponding to the version of the
> distribution (+fw2.6.1)
> * without distro string - kernel-5.3.0-rc3_5.3.0+git0+e21a712a96-2_arm64.deb
> * with distro string -
> kernel-5.3.0-rc3_5.3.0+git0+e21a712a96-2+fw2.6.1_arm64.deb
> I've checked manuals and code and I do not see any easy way how to
> append some string to the version of the package.
> 
> What I've played with it so far I added the mentioned string to PR in
> bbclasses' in poky. Honestly, I do not believe this is the best idea
> (on other hands it is working xD ) ...

I would say PR_append = "${DISTRO_VERSION}" in your custom distro config work 
- did you try that?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



