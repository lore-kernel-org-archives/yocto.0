Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63F64E00924; Fri, 13 Sep 2019 08:37:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0398E00924
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 08:37:56 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Sep 2019 08:37:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,501,1559545200"; d="scan'208";a="185136124"
Received: from asomsiko-mobl1.ccr.corp.intel.com (HELO blackadder.local)
	([10.252.54.186])
	by fmsmga008.fm.intel.com with ESMTP; 13 Sep 2019 08:37:55 -0700
To: yocto@yoctoproject.org
References: <CAG7eodG0LkuUENpdT=Fq__3OUV63jr8+q1B9EEvhTSjBvfqf4w@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <db00423a-e1d0-55b9-ac8d-2aad7c5a6262@intel.com>
Date: Fri, 13 Sep 2019 16:37:54 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAG7eodG0LkuUENpdT=Fq__3OUV63jr8+q1B9EEvhTSjBvfqf4w@mail.gmail.com>
Subject: Re: Patch a package with condition
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
X-List-Received-Date: Fri, 13 Sep 2019 15:37:58 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 13/09/2019 06:55, PRASANTH R wrote:
> I need to patch my custom recipe, let say "Package-A.bb" in which I need 
> to add a patch to the test recipe if the yocto build has a specific 
> package like let's say if "Package-B" is available patch should be 
> applied for Package-A.bb
> I am trying with below step in Package-A.bb
> SRC_URI_append_Package-B = " file://0001-add-new-line.patch"
> 
> But it doesn't work, I could see this SRC_URI_append_* works only for 
> some specific tokens like board name, Architecture, library or 
> native-class as such
> 
> Have u come across the scenario to make a dependency in patching with 
> reference to another package? which way I can use this?

You can't patch a recipe depending on whether another recipe is going to 
be built, because the process is that recipes produce packages, and 
packages built images.

So you're building two images, one of which contains Package-A and the 
other contains Package-A and Package-B.  Bitbake will only build those 
recipes once.

Ross

