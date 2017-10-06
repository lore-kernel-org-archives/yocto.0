Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 365C0E00D9D; Fri,  6 Oct 2017 05:25:25 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C686E00D97
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 05:25:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Oct 2017 05:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,483,1500966000"; d="scan'208";a="1227807094"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 06 Oct 2017 05:25:21 -0700
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	Mark Hieber <hieberm@gmail.com>, yocto@yoctoproject.org
References: <CAPxJQ9FrPv9Nh6zWeGJKA61Ov1bA9-XquAfS5BMZpi54+VS5nA@mail.gmail.com>
	<3d1914b9-24b0-faca-647f-4efb926abe2d@rsi-elektrotechnik.de>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56f38b0d-7a31-52fe-564c-c8685366e39f@linux.intel.com>
Date: Fri, 6 Oct 2017 15:21:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <3d1914b9-24b0-faca-647f-4efb926abe2d@rsi-elektrotechnik.de>
Subject: Re: Adding support for yum in a yocto image
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
X-List-Received-Date: Fri, 06 Oct 2017 12:25:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/05/2017 10:08 PM, Josef Holzmayr wrote:
>
> Uhm. Be aware that your custom built distribution is *not* some kind of 
> Fedora-Light. Its an entirely different distribution, and mixing in 
> repositories from somewhere is most certainly disastrous - or do you 
> think using that OpenSuse repo plays along nicely with your CentOS 
> install? :-)

Also epel-release provides packages only for server architectures: 
x86_64, ppc64, and aarch64, so if the 'network device' is built on 
anything else, the whole thing is a non-starter.

I generally agree that attempting to ride on the coattails of 
desktop/server Linux vendors is asking for frustration. People are still 
trying though:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=10422

Much better to just write the recipes from the start, and share them 
with the community :)

Alex

