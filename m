Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5585E00CC1; Mon, 30 Oct 2017 07:03:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB077E00C45
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 07:03:39 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Oct 2017 07:01:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,320,1505804400"; d="scan'208";a="169534033"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga006.fm.intel.com with ESMTP; 30 Oct 2017 07:01:11 -0700
To: Robert Berger <yocto.user.mailinglist@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <64cf2d95-5651-3ff8-3ce2-327329edc4da@gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <fefd3a52-1920-d8d1-b546-8c407d7282a2@linux.intel.com>
Date: Mon, 30 Oct 2017 16:01:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <64cf2d95-5651-3ff8-3ce2-327329edc4da@gmail.com>
Cc: ross.buron@intel.com,
	Robert Berger <robert.berger@reliableembeddedsystems.com>
Subject: Re: [PATCH] poky: LICENSE in packagegroup makes no sense - removed
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
X-List-Received-Date: Mon, 30 Oct 2017 14:03:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/30/2017 03:51 PM, Robert Berger wrote:
> a/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb 
> b/meta/recipes-core/packagegroups/nativesdk-packagegroup-sdk-host.bb

This patch should go to oe-core mailing list.

Alex

