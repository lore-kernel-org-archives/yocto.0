Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C166E00BE2; Wed,  7 Jun 2017 05:27:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B29AFE00BCC
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 05:27:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Jun 2017 05:27:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,311,1493708400"; d="scan'208";a="1138880915"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 07 Jun 2017 05:27:09 -0700
To: yocto@yoctoproject.org, Cody P Schafer <dev@codyps.com>
References: <20170607041904.29447-1-dev@codyps.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <979760b7-4dfe-3775-ab96-c14fbca076ad@linux.intel.com>
Date: Wed, 7 Jun 2017 15:24:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20170607041904.29447-1-dev@codyps.com>
Subject: Re: [PATCH] qt4-native: depend on icu-native to fix build on systems with icu >=59
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
X-List-Received-Date: Wed, 07 Jun 2017 12:27:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 06/07/2017 07:19 AM, Cody P Schafer wrote:
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

We will introduce icu 59 to oe-core at some point (in fact, I have a 
patch queued), and then this fix will no longer work.

You need to fix Qt4 itself.

Alex


