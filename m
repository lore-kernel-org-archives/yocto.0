Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29540E00AE6; Wed,  2 May 2018 07:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01E6EE00A28
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 07:04:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 May 2018 07:04:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,354,1520924400"; d="scan'208";a="47714535"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 02 May 2018 07:04:33 -0700
To: Irving ST <irving@ssfivy.com>, "Burton, Ross" <ross.burton@intel.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
	<16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=UE=B+v9-SOztXRB5j6C_QJudF8bJobnxMCEYB047GdPA@mail.gmail.com>
	<CAJTo0Lad=PmT4n70SMLu8J29aVnenqOjx_DznVrp2Pwro2ELgQ@mail.gmail.com>
	<CAN--ZaU4p09_vVG8WRpCkmR3zm1Fzc3nFuE_PHebtXXnBMdkaw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <08154f5c-ee74-fb1d-c720-5f0156fb38e4@linux.intel.com>
Date: Wed, 2 May 2018 16:58:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAN--ZaU4p09_vVG8WRpCkmR3zm1Fzc3nFuE_PHebtXXnBMdkaw@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 02 May 2018 14:04:37 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/02/2018 04:53 PM, Irving ST wrote:
> Thank you for your help and explanations. Unfortunately just removing
> ptest doesn't make it build.
> This is the error when I tried bitbake core-image-minimal:
> 
> ERROR: Nothing PROVIDES 'readline' (but
> /home/irving/srcgit/poky/meta/recipes-devtools/python/python3_3.5.5.bb
> ERROR: Nothing PROVIDES 'gdbm' (but
> /home/irving/srcgit/poky/meta/recipes-devtools/python/python3_3.5.5.bb,
> /home/irving/srcgit/poky/meta/recipes-devtools/perl/perl_5.24.1.bb
> DEPENDS on or otherwise requires it)

'readline' dependency can be easily disabled in python via 
PACKAGECONFIG. gdbm might be trickier, but I believe it's optional as well.

Alex

