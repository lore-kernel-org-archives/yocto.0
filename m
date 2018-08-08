Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 956BBE007D1; Wed,  8 Aug 2018 06:40:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA7EE003D7
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 06:40:59 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Aug 2018 06:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,457,1526367600"; d="scan'208";a="74807258"
Received: from anmitta2-mobl.gar.corp.intel.com (HELO [10.255.139.13])
	([10.255.139.13])
	by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2018 06:40:49 -0700
To: Dhanasekar Jaganathan <jdhanasekarmca@gmail.com>, yocto@yoctoproject.org
References: <CAE4v+fRrFSmqOR_rfkdhRTh7emfam5MPimncM7PgUJok+hTXeg@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <d49dcac3-4e53-67c8-6b7e-6f6019b02fb6@intel.com>
Date: Wed, 8 Aug 2018 21:40:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAE4v+fRrFSmqOR_rfkdhRTh7emfam5MPimncM7PgUJok+hTXeg@mail.gmail.com>
Subject: Re: [meta-intel] Getting black screen for Install option
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
X-List-Received-Date: Wed, 08 Aug 2018 13:40:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 08/08/2018 08:58 PM, Dhanasekar Jaganathan wrote:
> 
> Hi All,
> 
> I have created yocot bootable USB live image by this command "*sudo dd
> if=core-image-sato-intel-core2-32.hddimg of=/dev/sdb1"*
> "
> 
> After power on my system, I have got three options,
> 
> 1. boot
> 2. install
> 3. Reboot into firmware.
> 
> 
> When I select "install" to install yocto on mSata, I am getting black
> screen.
> I am using com port serial console for video propose. My board has no
> support for onboard or offboard VGA.
> 

May be try adding serial console 'console=ttyS0,115200' in kernel boot
line when using 'install'.


