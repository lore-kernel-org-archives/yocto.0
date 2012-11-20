Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30E41E01423
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 13:05:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 20 Nov 2012 13:05:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,287,1352102400"; d="scan'208";a="245011545"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 20 Nov 2012 13:05:25 -0800
Received: by linux.intel.com (Postfix, from userid 48)
	id E41FF2C8001; Tue, 20 Nov 2012 13:05:24 -0800 (PST)
Received: from 10.7.202.84 (SquirrelMail authenticated user kevin.strasser)
	by linux.intel.com with HTTP; Tue, 20 Nov 2012 13:05:24 -0800 (PST)
Message-ID: <50669.10.7.202.84.1353445524.squirrel@linux.intel.com>
In-Reply-To: <CAJTo0LY=TOBK_S_gNP9_BTS9Eua+XZDXS7eATVn7HKSCUJWqnQ@mail.gmail.com>
References: <cover.1353354792.git.kevin.strasser@linux.intel.com>
	<0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
	<1433587.ZVlnfl7M25@helios>
	<CAJTo0LY=TOBK_S_gNP9_BTS9Eua+XZDXS7eATVn7HKSCUJWqnQ@mail.gmail.com>
Date: Tue, 20 Nov 2012 13:05:24 -0800 (PST)
From: kevin.strasser@linux.intel.com
To: "Burton, Ross" <ross.burton@intel.com>
User-Agent: SquirrelMail/1.4.8-5.el4.centos.8
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/3] packagegroup-core-tools: exclude packages that depend on x11
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Nov 2012 21:05:36 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> On 20 November 2012 14:39, Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
>>
>> This would work, but in this instance I think it would be better if we
>> fixed
>> the packagegroup-core-tools-* recipes in OE-Core so that the items that
>> require X11 are only included when x11 is in DISTRO_FEATURES, rather
>> than
>> making the change here.
>
> Isn't this what Jack Mitchell's commit (poky
> 627fd60c8c01bbc14ad375f6aa195469eab73d86) did, which make sysprof
> optional on X11?
>
> Ross
>

Ah, I was building against danny. That patch should fix
packagegroup-core-tools-profile, but packagegroup-core-tools-testapps
looks like it still always includes packages that depend on X11.

-Kevin

