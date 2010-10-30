Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9D2004C80BD7
	for <yocto@yoctoproject.org>; Sat, 30 Oct 2010 11:20:31 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Oct 2010 09:20:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,265,1286175600"; d="scan'208";a="621841598"
Received: from unknown (HELO [10.255.12.201]) ([10.255.12.201])
	by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2010 09:20:30 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: tiagoprn <tiagoprn@gmail.com>
In-Reply-To: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
References: <AANLkTi=zOCosKwknHK4nN3dps6hmv4EhnY3zYU6w5Hqp@mail.gmail.com>
Date: Sat, 30 Oct 2010 11:20:28 -0500
Message-ID: <1288455628.13568.13.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto tools on a nokia n800
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Oct 2010 16:20:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-10-29 at 04:50 -0700, tiagoprn wrote:
>  Hello everyone!
>  
>  I have a question. I have just read about the yocto/poky projects and
> here I am with a hope. :)
>  
>  I have a nokia n800 (an internet tablet abandoned by Nokia just about
> 2 years ago). 
>  
>  With poky/yocto project tools, is it possible to install a linux
> toolchain with X and the touchscreen/wireless components working, for
> an example, in a SD Card and boot my device into it?
>  
>  I'm anxious for that. 
>  

Hi,

It looks like yocto already has support for the n800 - there's this
entry in local.conf:

# Other supported machines
.
.






#MACHINE ?= "nokia800"


and see this section in README.hardware:

'Nokia 770/N800/N810 Internet Tablets (nokia770 and nokia800)'

which says:

"The nokia800 images and kernel will run on both the N800 and N810"

Sounds like what you're looking for...

Tom





