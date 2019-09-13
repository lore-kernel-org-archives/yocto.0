Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9DE6E00973; Fri, 13 Sep 2019 09:45:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.136 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41AF6E0080A
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2019 09:45:07 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Sep 2019 09:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="187882149"
Received: from asomsiko-mobl1.ccr.corp.intel.com (HELO blackadder.local)
	([10.252.54.186])
	by orsmga003.jf.intel.com with ESMTP; 13 Sep 2019 09:45:05 -0700
To: yocto@yoctoproject.org
References: <CAG7eodG0LkuUENpdT=Fq__3OUV63jr8+q1B9EEvhTSjBvfqf4w@mail.gmail.com>
	<ca326d16a16b44a190c3cbea4c6a4345@flir.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <c763de67-3c56-ac23-19c6-cac75f9352b0@intel.com>
Date: Fri, 13 Sep 2019 17:45:04 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <ca326d16a16b44a190c3cbea4c6a4345@flir.com>
Subject: Re: [EXTERNAL] Patch a package with condition
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
X-List-Received-Date: Fri, 13 Sep 2019 16:45:07 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 13/09/2019 17:38, Smith, Virgil (US) wrote:
> While you cannot **enforce** a change for one package/in another recipe 
> file based on whether another package is included in an image, you can 
> have recipes (and their bbappends) respond to configuration settings.  
> Two such mechanisms are FEATURES and OVERRIDES.  In this particular case 
> I would probably use EXTRA_IMAGE_FEATURES from local.conf (or maybe 
> DISTRO_FEATURES or IMAGE_FEATURES directly if making a distro or an 
> image recipe).
> 
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#usingpoky-extend-customimage-imagefeatures
> 
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-FEATURE_PACKAGES
> 
> In your example Package-B.bb do something like (needs testing, search 
> the manual for similar snippets, …)
> 
> SRC_URI_append = "${@bb.utils.contains('IMAGE_FEATURES', 'myfeature', ' 
> file://0001-add-new-line.patch', '', d)}"

The huge caveat here is that typically it's images that set 
IMAGE_FEATURES, so this won't work in the general case.

Ross

