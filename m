Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 063FAE00DC2; Sun, 28 Jan 2018 23:50:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F56CE00971
	for <yocto@yoctoproject.org>; Sun, 28 Jan 2018 23:50:23 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	28 Jan 2018 23:50:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,429,1511856000"; d="scan'208";a="13720651"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 28 Jan 2018 23:50:20 -0800
To: yocto@yoctoproject.org
References: <ef07addc-3840-eceb-85d9-97d79ff3d240@dynamicdevices.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <a131f713-b407-103d-3b66-4f60a402e62c@linux.intel.com>
Date: Mon, 29 Jan 2018 09:44:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <ef07addc-3840-eceb-85d9-97d79ff3d240@dynamicdevices.co.uk>
Subject: Re: Error running testimage under the autobuilder with pyro branch
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
X-List-Received-Date: Mon, 29 Jan 2018 07:50:26 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/28/2018 04:57 PM, Alex Lennon wrote:
> Hi all,
> 
> I've got some simple automated testing going to test meta-mono 
> core-image-mono builds.
> 
> It just bitbakes the image then runs the testimage command
> 
> This works fine for master and rocko branches, but I get a failure for pyro
> 
>      Exception: TypeError: Test oeRuntimeTest is not derived from 
> OERuntimeTestCase
> 
> The rest of the log is here: https://pastebin.com/NRVLLtsF
> 
> Can anybody point me towards what might have changed between branches / 
> where I'm going wrong?

This has been refactored between rocko and pyro. You need to create a 
separate pyro branch for your tests, check how those look in pyro 
oe-core, and modify them accoridngly.

Alex

