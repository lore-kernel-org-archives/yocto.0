Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A4C9E00CBA; Fri,  1 Sep 2017 05:45:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FC75E00CAA
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 05:45:08 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	01 Sep 2017 05:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,458,1498546800"; d="scan'208";a="896208164"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 01 Sep 2017 05:45:05 -0700
To: yocto@yoctoproject.org, "Seilis, Aaron" <aseilis@ciena.com>
References: <SN4PR0401MB3599F4AAECE68D38EDEF8C4CBD9D0@SN4PR0401MB3599.namprd04.prod.outlook.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <2b24bf6d-84bb-b420-af92-d9ffc406531f@linux.intel.com>
Date: Fri, 1 Sep 2017 15:42:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <SN4PR0401MB3599F4AAECE68D38EDEF8C4CBD9D0@SN4PR0401MB3599.namprd04.prod.outlook.com>
Subject: Re: Building Custom Python 3 Packages
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
X-List-Received-Date: Fri, 01 Sep 2017 12:45:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 08/31/2017 04:54 PM, Seilis, Aaron wrote:
> This clearly indicates that the issue is that the build is looking
> for setup.py in the ${B} location, but it is only present in the ${S}
> location when `devtool modify` has been run. I have tried setting
> ${B} to ${S} explicitly in the recipe, but this doesn't result in
> ${B} being changed when I run `bitbake -e mytool`. I could always
> copy ${S} to ${B} in the recipe, but that seems a bit hack-ish.
> 
> Did I miss something or is there another way that Python builds are
> intended to work?

I think this might be a limitation of setuptools: they do not support 
out-of-tree builds (which is a must for devtool modify'). If you can 
figure out how to solve it, that would be nice!

Alex

