Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78923E0098A; Mon,  9 Sep 2019 02:30:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8205DE00972
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2019 02:30:40 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	09 Sep 2019 02:30:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="196141854"
Received: from fwan32-mobl1.gar.corp.intel.com (HELO blackadder.local)
	([10.252.38.244])
	by orsmga002.jf.intel.com with ESMTP; 09 Sep 2019 02:30:39 -0700
To: yocto@yoctoproject.org
References: <CAG6kgP4ZgS4gERCqfGUNYJGJ1zD1NDX59UzHLTM_UGq1s1U0Jw@mail.gmail.com>
	<7597589de33f174bcb4671f3b187f25746fbb354.camel@linuxfoundation.org>
	<CAJrV_B2DSYCoX23KEBzcfcTEhmrR_aGuJ4QqBdO+wp-aGJ-HBw@mail.gmail.com>
	<d48535e24f045ea19ed3c9e45277b2ceda39c15e.camel@linuxfoundation.org>
	<CAJrV_B2tT3o9eX0gTqJqZ=Q6meknu3yW1eUG581CwaJedrux3w@mail.gmail.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <7e1df8b1-4dc3-bb43-2365-fb91427002d1@intel.com>
Date: Mon, 9 Sep 2019 10:30:35 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAJrV_B2tT3o9eX0gTqJqZ=Q6meknu3yW1eUG581CwaJedrux3w@mail.gmail.com>
Subject: Re: [poky] Want to create a x11 image of less than 100 MB with bitbake
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
X-List-Received-Date: Mon, 09 Sep 2019 09:30:42 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 04/09/2019 09:33, Kamal Jagesia wrote:
>  > I need your help to create a small Embedded Linux Image less than 100
>  > MB with x11 libraries.
>  > I have been trying to do this with core-image-x11 but I need to
>  > eliminate packages like bluez5 (Bluetooth) from poky bitbake build.
>  > Kindly let me know how to do this .

If you don't need large-scale features like Bluetooth then you can 
remove them from DISTRO_FEATURES so they won't be built or installed.

Ross

