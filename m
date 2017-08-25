Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7349E00CC6; Fri, 25 Aug 2017 07:54:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ABB6E00B1B
	for <yocto@yoctoproject.org>; Fri, 25 Aug 2017 07:54:23 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	25 Aug 2017 07:54:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,426,1498546800"; d="scan'208";a="1188123611"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 25 Aug 2017 07:54:22 -0700
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>, yocto@yoctoproject.org
References: <20170825131726.28345-1-adrian.ratiu@ni.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <bf8b1c4b-2ecf-33e8-1bbc-4708bab35e3d@linux.intel.com>
Date: Fri, 25 Aug 2017 17:51:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170825131726.28345-1-adrian.ratiu@ni.com>
Subject: Re: [meta-qt4][PATCH RESEND][pyro] qt4-native: depend on icu-native to fix build on systems with icu <=58
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
X-List-Received-Date: Fri, 25 Aug 2017 14:54:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 08/25/2017 04:17 PM, Ioan-Adrian Ratiu wrote:
> From: Cody P Schafer <dev@codyps.com>
> 
> Previously, qt4-native would use the system icu to build.
> 
> Trying to build against a system ICU 59, however, fails with this root
> error:
> 
> | In file included from /usr/include/unicode/uversion.h:30:0,
> |                  from tools/qlocale_icu.cpp:46:
> | /usr/include/unicode/umachine.h:347:13: error: ‘char16_t’ does not name a type; did you mean ‘wchar_t’?
> |      typedef char16_t UChar;
> |              ^~~~~~~~
> |              wchar_t
> 
> May have to do with our use of `-std=gnu98++`.

You should also send a patch to fix the same problem in meta-qt4 master, 
by disabling icu altogether (as oe-core master already has icu 59). 
Please see the previous discussion around this patch.


Alex

