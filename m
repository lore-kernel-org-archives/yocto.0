Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30DF7E006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 12:36:26 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Nov 2011 12:36:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="70350406"
Received: from unknown (HELO [10.255.15.209]) ([10.255.15.209])
	by orsmga002.jf.intel.com with ESMTP; 02 Nov 2011 12:36:23 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
In-Reply-To: <1320261498.13661.13.camel@jim-ubuntu-10>
References: <CANFv2EkrNFQw57X=tV5Wz+a5F-cqp_GQHsOpLhOh7pXeTSnpXg@mail.gmail.com>
	<1320176449.2400.63.camel@elmorro>
	<CANFv2Emacwk4+Z+bYNs3MXZL-uxHmPUiB5tFXNM7Kx+NgFOnig@mail.gmail.com>
	<1320194738.26655.26.camel@elmorro>
	<1320243867.13661.6.camel@jim-ubuntu-10>
	<1320244912.26655.61.camel@elmorro>
	<1320246467.13661.10.camel@jim-ubuntu-10>
	<1320248073.26655.86.camel@elmorro>
	<1320261498.13661.13.camel@jim-ubuntu-10>
Date: Wed, 02 Nov 2011 14:36:36 -0500
Message-ID: <1320262596.6937.41.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build error while following Appendix A. Yocto Project Development manual
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
X-List-Received-Date: Wed, 02 Nov 2011 19:36:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-02 at 12:18 -0700, Jim Abernathy wrote:
> 
> Well, I finally got a "successful" build without erros of the Appendix A
> example for Crownbay, but the image created was only 216MB in size and
> kernel panic'ed because it couldn't find a valid root file system.
> 

That size doesn't sound right.  Here's mine:

-rw-r--r-- 1 trz trz 358715392 2011-11-01 19:11 core-image-sato-mymachine-20111101223904.hddimg

And what kind of machine are you booting it on?

Tom

> I'm going to try again from scratch and see if I missed anything. If
> that fails, I'll report out.
> 


> Jim A
> 



