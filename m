Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08BD5E00524; Wed, 24 May 2017 09:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0B1BE00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 09:47:06 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	24 May 2017 09:47:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,387,1491289200"; d="scan'208";a="1152322620"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2017 09:47:00 -0700
To: yocto@yoctoproject.org
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
	<1495637202.4956.26.camel@linux.intel.com>
	<CA+chaQd+00QjnMRjjzNigP-+4ecGkxWgcdp5Azn9wGWS9yRqBw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <84eb91a2-b5f3-f4de-7739-e5e2a6a2f947@linux.intel.com>
Date: Wed, 24 May 2017 19:45:04 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQd+00QjnMRjjzNigP-+4ecGkxWgcdp5Azn9wGWS9yRqBw@mail.gmail.com>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Wed, 24 May 2017 16:47:13 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 05/24/2017 05:45 PM, Martin Jansa wrote:
> You can try to use gold to save a bit of time linking the beast.

webkit is already using gold by default, except for some architectures 
(aarch64, mips) where it used to fail - maybe it is not necessary anymore.

Alex


