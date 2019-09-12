Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 380BBE00DE4; Thu, 12 Sep 2019 03:52:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2284BE00A5C
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2019 03:52:15 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Sep 2019 03:52:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="197190209"
Received: from unknown (HELO blackadder.local) ([10.249.39.47])
	by orsmga002.jf.intel.com with ESMTP; 12 Sep 2019 03:52:13 -0700
To: yocto@yoctoproject.org
References: <CAAmVmrpyrf6QhAA85UwWQa1mbrd5D6KmddKndeMqcoGG-YP9mA@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <fe22ebb4-447c-4f3c-4bec-052f37e38621@intel.com>
Date: Thu, 12 Sep 2019 11:52:12 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAAmVmrpyrf6QhAA85UwWQa1mbrd5D6KmddKndeMqcoGG-YP9mA@mail.gmail.com>
Subject: Re: Debug-files in SDK
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
X-List-Received-Date: Thu, 12 Sep 2019 10:52:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 12/09/2019 11:13, Teemu K wrote:
> Hi,
> 
> I'm not entirely sure if this is bug or feature.
> 
> I've created sdk to my image with populate_sdk - command. I noticed
> that in the SDK the x86_64 - directory is 384MB and that contains all
> the toolchains etc., but the target side
> (cortexa9hf-neon-poky-linux-gnueabi) is 5.7GB. Majority of it is in
> .debug - directories.
> 
> What causes the confusion here is that I haven't enabled debug-symbols
> in my local.conf and I don't have any other debug stuff enabled there
> either. Are those the debug-symbols that can be used to debug software
> on target with GDB for example? I thought that debug symbol
> information needs to be separately enabled.
> 
> If they are not, then can I get rid of them somehow?

SDKIMAGE_FEATURES ??= "dev-pkgs dbg-pkgs src-pkgs 
${@bb.utils.contains('DISTRO_FEATURES', 'api-documentation', 'doc-pkgs', 
'', d)}"

SDKs by default contain debug symbols, and yes they can be used with gdb 
to debug on target.

If you don't want them in the SDK, remove dbg-pkgs (and src-pkgs whilst 
you're there) from SDKIMAGE_FEATURES.

Ross


