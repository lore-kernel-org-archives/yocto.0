Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B132FE00757; Mon, 16 Mar 2015 02:41:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 238D3E006B5
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 02:41:03 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 16 Mar 2015 02:41:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,407,1422950400"; d="scan'208";a="541442893"
Received: from sgconnee-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.8.217])
	by orsmga003.jf.intel.com with ESMTP; 16 Mar 2015 02:40:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
Date: Mon, 16 Mar 2015 09:41 +0000
Message-ID: <43230590.PZOAnLt31C@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-100.fc20.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3A36DDB7@AZ-FFEXMB01.global.avaya.com>
References: <F38A866CD026F746A3BF0928A84397BE3A36DDB7@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Bitbake recipe Post install script not executed once the package is installed
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
X-List-Received-Date: Mon, 16 Mar 2015 09:41:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 16 March 2015 05:15:45 Bipnesh, Abhinav wrote:
> Paul Eggleton wrote:
> > Bipnesh, Abhinav wrote:
> > > One thing to add here is we are running Busybox on which I am trying to
> > > perform the installation.
> > 
> > That shouldn't matter.
>
> The reason for asking this is due to this answer on stackoverflow
> (http://stackoverflow.com/a/11316251/570200) and also the mailing list of
> busybox says this "The busybox rpm command is more "rpm2cpio --install"
> than anything else.  It doesn't support pre or post scripts, doesn't
> maintain a repository...
> 
> (http://lists.busybox.net/pipermail/busybox/2006-November/059507.html)"
> 
> Also the rpm command didn't list -e or other such option which I can see on
> other distribution. Below is sample output # rpm
> BusyBox v1.22.1 (2015-03-03 14:40:56 IST) multi-call binary.
> 
> Usage: rpm -i PACKAGE.rpm; rpm -qp[ildc] PACKAGE.rpm
> 
> Please note that simple echo command is also not working for which I expect
> to echo the output on the console during the installation process.

Oh, well, there's your problem then - I wasn't aware busybox even had an rpm 
command; clearly that will not work if you expect postinstall scripts to be 
executed because as you say it does not support them. We don't enable 
busybox's rpm command out of the box, so I can only assume you have enabled it 
- if you do want full RPM I suggest you disable it (CONFIG_RPM should not be 
set in busybox's config) and ensure IMAGE_FEATURES contains "package-
management" so that the proper rpm utility gets installed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

