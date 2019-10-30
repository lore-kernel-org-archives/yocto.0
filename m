Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5A20E00DFD; Wed, 30 Oct 2019 03:30:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E2BE00DFB
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 03:30:26 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Oct 2019 03:30:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,247,1569308400"; d="scan'208";a="203844585"
Received: from koernerm-mobl.ger.corp.intel.com (HELO blackadder.local)
	([10.249.41.216])
	by orsmga006.jf.intel.com with ESMTP; 30 Oct 2019 03:30:25 -0700
To: yocto@yoctoproject.org
References: <trinity-8eddf10e-7c97-465a-a389-4a6462d8fdf7-1572416709913@3c-app-gmx-bs26>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <6166e80d-ce25-14cf-1f16-02ae9d36aa14@intel.com>
Date: Wed, 30 Oct 2019 10:30:24 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <trinity-8eddf10e-7c97-465a-a389-4a6462d8fdf7-1572416709913@3c-app-gmx-bs26>
Subject: Re: [zeus] icu-native-64.2-r0 do_configure: configure failed
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
X-List-Received-Date: Wed, 30 Oct 2019 10:30:28 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 30/10/2019 06:25, star@gmx.li wrote:
> Build of image failed, I got strange and long error messages like:
> 
> | from distutils.sysconfig import parse_makefile
> | ModuleNotFoundError: No module named 'distutils.sysconfig'
> | configure: error: Python failed to run; see above error.

> a) What goes wrong here and how can this be avoid?

distutils.sysconfig is part of the standard Python library.  What 
distribution are you using?  It's possible that you've only got a 
'minimal' Python installed instead of the full thing.

> b) How do I found which module is responsible. There is nothing about strace/valgrind mentioned in the log. I just had to build all my additional packets of my image manually to find the triggers for this icu-native.

The recipe responsible is icu-native.  Something in your build depends 
on this, such as boost-native maybe.

Ross

