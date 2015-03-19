Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F6A9E00779; Thu, 19 Mar 2015 10:21:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13215E0076B
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2015 10:21:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 19 Mar 2015 10:21:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,430,1422950400"; d="scan'208";a="667648486"
Received: from bwbest-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.2.40])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2015 10:20:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marco Cavallini <cavallini.koan@gmail.com>,
	=?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Thu, 19 Mar 2015 17:20:57 +0000
Message-ID: <3117116.FDFJ4kzQ93@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <CAFQ+DiiAF-r8C2+UpZA5ioR=sRCorZS1SJw1dH=FKkFG28xYcA@mail.gmail.com>
References: <CAFQ+DiiAF-r8C2+UpZA5ioR=sRCorZS1SJw1dH=FKkFG28xYcA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain not always relocatable
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
X-List-Received-Date: Thu, 19 Mar 2015 17:21:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Marco,

On Thursday 19 March 2015 17:46:44 Marco Cavallini wrote:
> I am facing to a very odd behaviour installing the resulting meta-toolchain.
> I launch
> poky-glibc-i686-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.7.1.sh
> 
> If I install in the default directory or in /opt/poky/test it works as
> expected, but if I install in /opt/poky/1.7.1-cortexa9hf there is a
> problem. Using YP older that dizzy it worked with a charm.
> 
> $ ./poky-glibc-i686-meta-toolchain-cortexa9hf-vfp-neon-toolchain-1.7.1.sh
> Enter target directory for SDK (default: /opt/poky/1.7.1):
> /opt/poky/1.7.1-cortexa9hf
> You are about to install the SDK to "/opt/poky/1.7.1-cortexa9hf".
> Proceed[Y/n]? Extracting SDK...done
> Setting it up...done
> SDK has been successfully set up and is ready to be used.
> 
> Now I can't use it calling the env setup as usual
> $ .
> /opt/poky/1.7.1-cortexa9hf/environment-setup-cortexa9hf-vfp-neon-poky-linux
> -gnueabi
> 
> the reason is that the resulting path is incorrect
> 
> $ env | grep PATH
> PATH=/opt/poky/1.7.1-cortexa9hf-cortexa9hf/sysroots/i686-pokysdk-linux/usr/b
> in:/opt/poky/1.7.1-cortexa9hf-cortexa9hf/sysroots/i686-pokysdk-linux/usr/bin
> /arm-poky-linux-gnueabi:.....

Yes, I discovered this a few months ago and it got fixed in master:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=7032

It looks like we still haven't backported the fix to 1.7 though. Anibal, could 
you please take care of that?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

