Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34368E00D84; Mon,  2 Sep 2019 08:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB920E00C81
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 08:01:40 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Sep 2019 08:01:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="382818484"
Received: from oakcakay-mobl2.ger.corp.intel.com (HELO blackadder.local)
	([10.252.38.52])
	by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2019 08:01:39 -0700
To: yocto@yoctoproject.org
References: <CAGAf8LwaOtu0OaRR+FuikEgvXTkNst6KUmd2wF_MV+t0UxTwCQ@mail.gmail.com>
	<CAGAf8LwUBUT9SBgEPHO7tYYhhP6d5+SZoOF89-5MDDmj_Y1L=g@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <754cae97-95fe-55e4-f2f3-f9714fe78ace@intel.com>
Date: Mon, 2 Sep 2019 16:01:38 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwUBUT9SBgEPHO7tYYhhP6d5+SZoOF89-5MDDmj_Y1L=g@mail.gmail.com>
Subject: Re: WARNING: bluez5-5.50-r0 do_fetch: Failed to fetch URL file://variscite-bt.conf
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
X-List-Received-Date: Mon, 02 Sep 2019 15:01:41 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

That file isn't part of oe-core, given the name you should ask the 
variscite-bsp-platform maintainers.

Ross

On 27/08/2019 06:51, Zoran Stojsavljevic wrote:
> BTW, I have created the complete description of this problem!
> https://github.com/ZoranStojsavljevic/imx6-sabre-automotive-bsp/tree/master/Issues
> 
> Best Regards,
> Zoran
> _______
> 
> On Mon, Aug 26, 2019 at 5:23 PM Zoran Stojsavljevic 
> <zoran.stojsavljevic@gmail.com <mailto:zoran.stojsavljevic@gmail.com>> 
> wrote:
> 
>     Hello Folks,
> 
>     While doing the following YOCTO build:
>     http://variwiki.com/index.php?title=Yocto_Build_Release&release=RELEASE_MORTY_V1
> 
>     Actually, using the latest available tag:
>     thud-fslc-4.14.78-mx6ul-v1.1
>     <https://github.com/varigit/variscite-bsp-platform/releases/tag/thud-fslc-4.14.78-mx6ul-v1.1>
>      From https://github.com/varigit/variscite-bsp-platform/tags
> 
>     I've got the following error, while compiling for both:
>     bitbake -k fsl-image-gui
>     bitbake -k fsl-image-qt5
> 
>     Seems, that the local file: file://variscite-bt.conf is somehow
>     missing?!
> 
>     I can add this file artificially, but, the question is: why this
>     file is missing???
>     _______
> 
>     Transcript follows:
>     bluez5-5.50-r0 do_fetch: Failed to fetch variscite-bt.conf
>     https://pastebin.com/U9LRtNwr
> 
>     Thank you,
>     Zoran
>     _______
> 
> 


