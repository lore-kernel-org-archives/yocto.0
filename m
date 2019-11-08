Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D47DE00E00; Fri,  8 Nov 2019 04:58:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A881E0098A
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2019 04:58:15 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Nov 2019 04:58:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,281,1569308400"; d="scan'208";a="196894079"
Received: from felsner-mobl1.ger.corp.intel.com (HELO blackadder.local)
	([10.252.57.88])
	by orsmga008.jf.intel.com with ESMTP; 08 Nov 2019 04:58:12 -0800
To: "Bagwell, Anthony" <anthony.bagwell@hivehome.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <3E5EEBA9-E930-42C9-B943-5898537D6BF6@hivehome.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <5239faec-503b-bf8a-b578-e9c893d29f32@intel.com>
Date: Fri, 8 Nov 2019 12:58:11 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <3E5EEBA9-E930-42C9-B943-5898537D6BF6@hivehome.com>
Subject: Re: [meta-gplv2][PATCH] dosfstools: fix out of bound writes
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
X-List-Received-Date: Fri, 08 Nov 2019 12:58:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 06/11/2019 12:37, Bagwell, Anthony wrote:
 > Fix write issues where sprintf writes across both name and ext fields
 > and drops the final null terminator outside the struct

ERROR: dosfstools-2.11-r5 do_patch: Command Error: 'quilt --quiltrc 
/data/poky-tmp/gpl2/work/corei7-64-poky-linux/dosfstools/2.11-r5/recipe-sysroot-native/etc/quiltrc 
push' exited with 0  Output:
Applying patch fixing-out-of-bound-writes.patch
patching file dosfsck/check.c
Hunk #1 succeeded at 58 with fuzz 1.
Hunk #2 FAILED at 117.
Hunk #3 FAILED at 157.
Hunk #4 FAILED at 318.
3 out of 4 hunks FAILED -- rejects in file dosfsck/check.c
Patch fixing-out-of-bound-writes.patch does not apply (enforce with -f)

Did you prepare this against master?

Ross

