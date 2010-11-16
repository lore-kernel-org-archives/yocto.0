Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0DEB4C80B71
	for <yocto@yoctoproject.org>; Tue, 16 Nov 2010 11:16:39 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 16 Nov 2010 09:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,206,1288594800"; d="scan'208";a="678075728"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2010 09:16:38 -0800
Received: from [10.7.199.55] (10.7.199.55) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 16 Nov 2010 10:16:35 -0700
Message-ID: <4CE2BC38.3070603@intel.com>
Date: Tue, 16 Nov 2010 09:15:36 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc14
	Lightning/1.0b3pre Thunderbird/3.1.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4CE042CA.1000809@fosstel.com>	<B08D4353009C0E4FB5FE1A4D0041EBC4BEA763@orsmsx001.amr.corp.intel.com>	<4CE07943.9080204@fosstel.com>
	<4CE14EDD.8060503@ronsgallery.com>
In-Reply-To: <4CE14EDD.8060503@ronsgallery.com>
Subject: Re: bitbake problems when testing pre-built images
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
X-List-Received-Date: Tue, 16 Nov 2010 17:16:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/15/2010 07:16 AM, Ron Olson wrote:
> I second the point about updating the instructions.  The whole point of
> the quick start instructions is to let one quickly get their feet on the
> ground.  When the documentation is in error, it costs people time and
> frustration.  I spent a couple hours working in the dark since this is
> new to me, until I finally found a work-around, when the exercise should
> have taken minutes.

Hi Ron,

I'm sorry to hear that this took up your time in this way, and wanted to 
let you know that I'm working with our documentation person to get the 
change made to our web site. Unfortunately the person who has access to 
make changes on our production server is at a conference this week, so 
we're hoping he will be able to make the change in a free moment.

> My suggestion would be that you dry-run documentation such as this,
> using people that have *no* yocto or openembedded background.  After
> all, that's the target audience for a 'quick start' page.

Point taken. As a matter of fact, we did do this, but the renaming of 
the final images happened literally within a day or two of our public 
release, and the bug in the poky-qemu script is due to this renaming. It 
just goes to show that even "simple" last-minute changes still need to 
be tested. :(

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

