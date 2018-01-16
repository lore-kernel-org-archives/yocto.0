Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C113E00DD2; Mon, 15 Jan 2018 19:14:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FDDFE008A4
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 19:14:52 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	15 Jan 2018 19:14:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,366,1511856000"; d="scan'208";a="10531456"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.21.145])
	([10.221.21.145])
	by fmsmga007.fm.intel.com with ESMTP; 15 Jan 2018 19:14:52 -0800
To: yocto@yoctoproject.org
References: <066501d38c90$f0151890$d03f49b0$@ln-systems.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <51fda8a8-ee11-ebf7-1fb2-b25b9f35a9b9@intel.com>
Date: Tue, 16 Jan 2018 11:14:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <066501d38c90$f0151890$d03f49b0$@ln-systems.com>
Subject: Re: Specifying MACHINE when setting up build environment
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
X-List-Received-Date: Tue, 16 Jan 2018 03:14:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/14/2018 01:07 AM, colin.helliwell@ln-systems.com wrote:
> Is there a way to specify what MACHINE is put into local.conf when first
> setting up the build directory with oe-init-build-env?
> I have my own TEMPLATECONF which I use, but I'd like to be able to set the
> MACHINE on the command line rather than having to then modify local.conf
> 
> 

You can specify a local.conf.sample and have TEMPLATECONF point to the
directory with that file in it. Please see scripts/oe-setup-builddir in
poky/meta to see how it is picked up.

Thanks,
Anuj

