Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8F61E009A0; Sun, 26 Feb 2017 13:04:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [134.134.136.24 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28471E00AC0
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 13:04:01 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Feb 2017 13:04:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,210,1484035200"; d="scan'208";a="1135201250"
Received: from dkharprx-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.186.172])
	by fmsmga002.fm.intel.com with ESMTP; 26 Feb 2017 13:03:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Feb 2017 10:03:57 +1300
Message-ID: <1522729.epmWXj6IpI@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/5.3.3 (Linux/4.9.10-200.fc25.x86_64; KDE/5.29.0; x86_64; ; )
In-Reply-To: <CACr_9kGfECT5fq6rbufeHLf_EcqaMMXPp74A7yEBXgUmPbhYKQ@mail.gmail.com>
References: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
	<CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
	<CACr_9kGfECT5fq6rbufeHLf_EcqaMMXPp74A7yEBXgUmPbhYKQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Python3 partial rootfs installation
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
X-List-Received-Date: Sun, 26 Feb 2017 21:04:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday, 26 February 2017 12:10:24 AM NZDT Jakob Simon-Gaarde wrote:
> Thanks for the answer. I tried adding it as a dependency but I get this:
> ERROR: Nothing PROVIDES 'python3-modules'

Based on your email, this is a runtime situation you are trying to resolve - 
and python3-modules is a runtime target, but that error suggests you are 
adding to DEPENDS which is for build-time dependencies.

You probably want to add python3-modules to IMAGE_INSTALL in your image recipe 
or perhaps to RDEPENDS_${PN} in the recipe for the custom software you're 
building.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

