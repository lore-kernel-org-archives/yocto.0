Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DB3BE00C5C; Tue,  1 May 2018 06:41:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55E4BE00C59
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 06:41:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 May 2018 06:41:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,351,1520924400"; d="scan'208";a="52260784"
Received: from tcheung-mobl.ccr.corp.intel.com (HELO [10.255.172.199])
	([10.255.172.199])
	by orsmga001.jf.intel.com with ESMTP; 01 May 2018 06:41:49 -0700
To: Irving ST <irving@ssfivy.com>, yocto@yoctoproject.org
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <bfa32070-f11e-1162-9900-a39e12b71ee5@intel.com>
Date: Tue, 1 May 2018 21:41:48 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Tue, 01 May 2018 13:41:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/01/2018 06:58 PM, Irving ST wrote:
> Hello,
> 
> First time posting, apologies if I miss anything in the community guidelines.
> 
> I had some problems trying to make an image that contains no GPLv3
> (due to corporate requirement) nor old GPLv2 software in meta-gplv2
> (due to lack of support).
> 
> I tried getting a fresh checkout of poky and adding
> INCOMPATIBLE_LICENSE in conf/local.conf , but I got the following
> error:
> 
> ERROR: Nothing RPROVIDES 'make' (but
> /home/irving/srcgit/poky/meta/recipes-core/zlib/zlib_1.2.11.bb,
> /home/irving/srcgit/poky/meta/recipes-connectivity/openssl/openssl_1.0.2o.bb
> RDEPENDS on or otherwise requires it)
> make was skipped: it has an incompatible license: GPLv3 & LGPLv2
> 
> I tried adding meta-gplv2 layer to bblayer.conf and the error
> disappears. I was expecting the license restriction to apply to the
> final image only, but my guess is I am also restricted from building
> the cross compilation tools (which seems weird to me).

You can grep the license.manifest in ./tmp/deploy/licenses to see what
is being included in the final image.

I think the poky core-image-minimal image can be built without
meta-gplv2 and non gplv3 components.

Thanks,
Anuj

