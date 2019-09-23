Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E5CE00D46; Mon, 23 Sep 2019 02:27:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E3CAE003C1
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 02:27:10 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2019 02:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="195318733"
Received: from creinhar-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.39.119])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Sep 2019 02:27:08 -0700
To: Teemu K <maillinglists18@gmail.com>
References: <CAAmVmrpyrf6QhAA85UwWQa1mbrd5D6KmddKndeMqcoGG-YP9mA@mail.gmail.com>
	<fe22ebb4-447c-4f3c-4bec-052f37e38621@intel.com>
	<CAAmVmro9QhrBCxhMHZK656JHC0Cj0gZ+aiK4AaLBSE7cvhs6nw@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <e272af8d-8ad0-d964-b9ca-3b96be0155a4@intel.com>
Date: Mon, 23 Sep 2019 10:27:07 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAAmVmro9QhrBCxhMHZK656JHC0Cj0gZ+aiK4AaLBSE7cvhs6nw@mail.gmail.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 23 Sep 2019 09:27:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 23/09/2019 10:19, Teemu K wrote:
> One question is that is there a way to make package that would contain
> only dpg-pkgs and src-pkgs? Ie. it'd be like 'debug-addition' for SDK?
> I know how to install those things to target, but how to get them to a
> package (or in separate directory) to host.

This is where you'd use an Extensible SDK instead of a traditional SDK, 
where you can install packages into the sysroot after installation.

Ross

