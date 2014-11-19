Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B1AFE008EA; Wed, 19 Nov 2014 03:02:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E74E008C3
	for <yocto@yoctoproject.org>; Wed, 19 Nov 2014 03:01:52 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Nov 2014 02:59:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,416,1413270000"; d="scan'208";a="639618216"
Received: from gcwannia-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.103])
	by orsmga002.jf.intel.com with ESMTP; 19 Nov 2014 03:01:50 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "zhenhua.luo@freescale.com" <zhenhua.luo@freescale.com>
Date: Wed, 19 Nov 2014 11:01:49 +0000
Message-ID: <3081951.VfOphKHqS7@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.2-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <bf6dc5f38cdd4e6a987eafbaa5473656@CY1PR0301MB0715.namprd03.prod.outlook.com>
References: <bf6dc5f38cdd4e6a987eafbaa5473656@CY1PR0301MB0715.namprd03.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to build the uclibc toolchain by Yocto
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
X-List-Received-Date: Wed, 19 Nov 2014 11:02:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Zhenhua,

On Wednesday 19 November 2014 09:43:59 zhenhua.luo@freescale.com wrote:
> The eglibc is used for meta-toolchain build in Yocto, may I know how to
> build the uclibc meta-toolchain in Yocto?

It should be as easy as setting TCLIBC = "uclibc" in your custom distro config.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

