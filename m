Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF5EE00810; Tue,  3 Mar 2015 02:31:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D279E003FA
	for <yocto@yoctoproject.org>; Tue,  3 Mar 2015 02:31:08 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Mar 2015 02:31:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,681,1418112000"; d="scan'208";a="674377285"
Received: from tmlemanx-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.7.97])
	by fmsmga001.fm.intel.com with ESMTP; 03 Mar 2015 02:31:02 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Date: Tue, 03 Mar 2015 10:31 +0000
Message-ID: <15841264.1L6EKTFQW9@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.7-100.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <1425378406649.37693@inedasystems.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<23759981.tJ0jcZThOh@peggleto-mobl5.ger.corp.intel.com>
	<1425378406649.37693@inedasystems.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK generation issue
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
X-List-Received-Date: Tue, 03 Mar 2015 10:31:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 March 2015 10:26:46 Raghavendra Kakarla wrote:
> When i Built SDK for YOCTO, I am getting a cross compilation tool chain.
> With which i am able to build the applications for my platform. I wanted to
> confirm, whether SDK means  a toolchain to build the applications or is
> there something more (such as documentation, libraries, etc generated for
> our platform)

The SDK will contain all libraries, headers and debugging symbols for the 
contents of the image specified with -c populate_sdk. It won't contain any 
documentation by default, though you could add it by setting SDKIMAGE_FEATURES 
e.g. 

SDKIMAGE_FEATURES = "dev-pkgs dbg-pkgs doc-pkgs"

(the default value set with ??= is "dev-pkgs dbg-pkgs")

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

