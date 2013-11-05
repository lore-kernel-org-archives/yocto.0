Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9317AE0176E
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 02:45:09 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Nov 2013 02:45:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="429991363"
Received: from unknown (HELO helios.localnet) ([10.252.121.90])
	by orsmga002.jf.intel.com with ESMTP; 05 Nov 2013 02:45:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 05 Nov 2013 10:45:07 +0000
Message-ID: <1667825.bmdmBZfUMX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311050130310.15390@oneiric>
References: <alpine.DEB.2.02.1310240832580.5411@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44288@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1311050130310.15390@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: filling in the "missing" entries in the ref manual variable glossary
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
X-List-Received-Date: Tue, 05 Nov 2013 10:45:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Tuesday 05 November 2013 01:34:56 Robert P. J. Day wrote:
> On Mon, 4 Nov 2013, Rifenbark, Scott M wrote:
> > This will be useful for me... thanks Robert.
> 
>   i'm about halfway through the categorized variable glossary:
> 
> http://www.crashcourse.ca/wiki/index.php/OE_variable_glossary
> 
> and a few variables that caught my eye:
> 
>  * BUGTRACKER (not mentioned)
>  * TUNE_ARCH (not mentioned)
>  * TUNE_FEATURES (not mentioned)
>  * CLASSOVERRIDE (not mentioned)
>  * UBOOT_TARGET (mentioned, but replaced by UBOOT_MAKE_TARGET?)
> 
> and a number of UBOOT-related variables aren't mentioned. not clear if
> any of these *should* be added -- there's obviously a limit to how
> many variables you should explain -- but you can decide if any should
> be added to the ref manual.

I think a variable should be documented if anyone will ever need to know what 
it does - and that probably includes almost all variables. I have talked with 
Scott in the past about some kind of labelling system for the variable 
glossary so you can see at a glance where the variable is supposed to be used 
and (hopefully, if we can come up with sane categorisation) when it's 
appropriate to modify.

IMO, all of those you listed should be documented. I've just entered a bug 
about documenting the tune files / variables at least:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5463

Cheers,
Paul


-- 

Paul Eggleton
Intel Open Source Technology Centre

