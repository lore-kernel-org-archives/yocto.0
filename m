Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B9E1E00CFF; Mon, 11 Dec 2017 06:54:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7F9AE00C97
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 06:54:52 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Dec 2017 06:54:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,391,1508828400"; 
   d="scan'208";a="1647669"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 11 Dec 2017 06:54:49 -0800
To: yocto@yoctoproject.org, "anton@advancedtelematic.com >> Anton Gerasimov"
	<anton@advancedtelematic.com>
References: <0d5535cd-a057-5538-4fe7-c90af04b4b3d@advancedtelematic.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <a0212aa6-986e-2db9-8924-f314749ea194@linux.intel.com>
Date: Mon, 11 Dec 2017 16:55:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <0d5535cd-a057-5538-4fe7-c90af04b4b3d@advancedtelematic.com>
Subject: Re: Checksum of an external file
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
X-List-Received-Date: Mon, 11 Dec 2017 14:54:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/11/2017 03:19 PM, Anton Gerasimov wrote:
> Unfortunately this doesn't work as expected (the recipe doesn't get
> rebuilt when the file changes, looks like calculate_file_sha256 doesn't
> run unless PATH_TO_FILE has changed) and at the same time if I
> 'cleanall' the recipe and change the file before rebuilding I get a lot
> of "metadata is not deterministic" errors.
> 
> Is there a proper way to do that with bitbake?

I don't think so. You need to write an external script that copies the 
file into the layer, then runs bitbake. The recipe should simply refer 
to the file via SRC_URI file fetcher.

Alex

