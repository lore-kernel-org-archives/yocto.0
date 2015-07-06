Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26A4CE009E6; Mon,  6 Jul 2015 08:56:00 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEDFDE007A3
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 08:55:59 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jul 2015 08:56:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,415,1432623600"; d="scan'208";a="741533326"
Received: from tgsmith2-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.6.176])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jul 2015 08:55:57 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Date: Mon, 06 Jul 2015 16:55:56 +0100
Message-ID: <1920993.IKQzA7KLvF@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A40227C1CB9D0E@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A40227C1CB9D0E@IR-CENTRAL.corp.innerrange.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Unset a variable
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
X-List-Received-Date: Mon, 06 Jul 2015 15:56:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Craig,

On Thursday 02 July 2015 15:07:44 Craig McQueen wrote:
> I'd like to make a distro config file, derived from conf/distro/poky.conf.
> But in my case, DISTRO_CODENAME is not really something that can contain a
> meaningful value, so I'd like to unset it. How can I unset the variable?
> 
> (This affects the format of VERSION in /etc/os-release. I guess
> alternatively I could modify it in a os-release.bbappend)

So, I was going to suggest just setting DISTRO_CODENAME = "" in your distro 
config file, but it seems that the author of os-release.bb has prevented that 
since they look to see if the variable is even in the datastore.

To me this is a bug, and we should fix it. As a workaround until then though 
you could bbappend os-release.bb and set VERSION to whatever formatted value 
you prefer.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

