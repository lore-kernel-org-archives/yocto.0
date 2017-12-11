Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2339E00CFF; Mon, 11 Dec 2017 06:57:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61FFDE00C97
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:57:11 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Dec 2017 06:57:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,392,1508828400"; 
   d="scan'208";a="1648030"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 11 Dec 2017 06:57:10 -0800
To: Sherif Omran <sherifomran2000@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <26a5c103-a482-544b-7948-dd758ef73a8d@linux.intel.com>
Date: Mon, 11 Dec 2017 16:57:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+M+P8-EjoBz+YXBD3pzhJ0CwHPi10HsFxvBewkr_kvqFQ@mail.gmail.com>
Subject: Re: recipe to clean up files from rootfs
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
X-List-Received-Date: Mon, 11 Dec 2017 14:57:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/11/2017 04:18 PM, Sherif Omran wrote:
> i want to create a recipe to clean some files from the rootfile system, 
> but i don't know how to let this recipe run the last one before building 
> the rootfile system.

Have a look at ROOTFS_POSTPROCESS_COMMAND.

Alex

