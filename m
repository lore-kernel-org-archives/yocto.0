Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E11DE00922; Fri, 27 Mar 2015 07:40:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7C6CE00906
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 07:39:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 27 Mar 2015 07:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,479,1422950400"; d="scan'208";a="686585834"
Received: from kcone-mobl1.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.254.102.203])
	by fmsmga001.fm.intel.com with ESMTP; 27 Mar 2015 07:39:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Preeti P <itspreetip89@gmail.com>
Date: Fri, 27 Mar 2015 14:39:58 +0000
Message-ID: <2100962.0no4cKlWXc@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <CA+jjunCbZfd-b+V_ipMtdWkkLwyN6xJJH3vhHjGmKG8p8b8doA@mail.gmail.com>
References: <CA+jjunDcbN-xq8TUB_8y6+HKnhErtckaGYgU7RnhGxV0OC1Qfw@mail.gmail.com>
	<CA+jjunCbZfd-b+V_ipMtdWkkLwyN6xJJH3vhHjGmKG8p8b8doA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: : About adding documentation in final SDK image
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
X-List-Received-Date: Fri, 27 Mar 2015 14:40:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Preeti,

On Thursday 19 March 2015 21:37:31 Preeti P wrote:
> I am working on adding the documents in to my SDK image.
> Basically, I want to have the man and info documentation for the tool-chain
> item in my SDK image.
> 
> As per my understanding, the install package for every recipe gets split
> into different packages and finally shipped in to the SDK image.
> 
> To add the documents in my SDK image, I tried to add the '-doc' support in
> 'PACKAGES' variable but still the documentation related files are not there
> in the final image.
> 
> I even tried by adding below lines in to the do_install function in my
> recipe but my final image does not have those files:
> 
> do_install {
> 
>                 install -d ${D}${includedir}${doc}
> 
>                 install -m 644 ${S}/doc/*.info ${D}${includedir}${doc}
> 
> }
> 
> Can anyone provide me inputs on how to add the documentation for packages
> in to the final SDK image?

When you say "SDK image" I guess you just mean SDK? If so, I think you'd just 
need to add "doc-pkgs" to SDKIMAGE_FEATURES. Since SDKIMAGE_FEATURES is set 
with ??= i.e. a soft default, you would need to set the complete value i.e.:

SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs doc-pkgs"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

