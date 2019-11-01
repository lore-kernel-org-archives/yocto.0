Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29CECE0083D; Fri,  1 Nov 2019 09:51:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17112E0049C
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 09:51:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Nov 2019 09:51:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="204548085"
Received: from koernerm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.41.216])
	by orsmga006.jf.intel.com with ESMTP; 01 Nov 2019 09:51:50 -0700
To: Aaron Solochek <aaron.solochek@sri.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <b796ff6c-a14c-ece3-40f5-713241386cda@intel.com>
Date: Fri, 1 Nov 2019 16:51:49 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
Subject: Re: visual studio code packages or building instructions?
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
X-List-Received-Date: Fri, 01 Nov 2019 16:51:56 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 01/11/2019 16:35, Aaron Solochek wrote:
> I would like to get visual studio code on my NXP i.MX8. If someone is
> aware of a aarch64 rpm of it, that would be the easiest. Alternatively,
> if anyone knows how to build it using bitbake, I can build it myself.

Well Microsoft only make x86 binaries available:

https://code.visualstudio.com/#alt-downloads

So you'll have to follow the instructions at 
https://github.com/Microsoft/vscode/wiki/How-to-Contribute#build-and-run

They use Yarn, so you'll have to package that first.

Comments like 
https://github.com/microsoft/vscode/issues/6442#issuecomment-509605292 
on the bug asking for RPi support isn't exactly encouraging though.

Ross

