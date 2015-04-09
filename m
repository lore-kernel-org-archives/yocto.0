Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3935DE008EC; Thu,  9 Apr 2015 07:17:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E0C5E0049A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 07:17:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga102.fm.intel.com with ESMTP; 09 Apr 2015 07:17:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,550,1422950400"; d="scan'208";a="711321094"
Received: from kkowalsk-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.23.157])
	by orsmga002.jf.intel.com with ESMTP; 09 Apr 2015 07:17:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Thu, 09 Apr 2015 15:16:58 +0100
Message-ID: <1927599.TACnxmbye2@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <5526828B.3080709@mlbassoc.com>
References: <5526828B.3080709@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Using PACKAGECONFIG
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
X-List-Received-Date: Thu, 09 Apr 2015 14:17:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Thursday 09 April 2015 07:45:47 Gary Thomas wrote:
> I'm trying to extend PACKAGECONFIG for a recipe (vlc).  The
> main recipe contains this:
>    PACKAGECONFIG ?= " live555"
>    PACKAGECONFIG[mad] = "--enable-mad,--disable-mad,libmad"
>    PACKAGECONFIG[a52] = "--enable-a52,--disable-a52,liba52"
>    PACKAGECONFIG[jack] = "--enable-jack,--disable-jack,jack"
>    PACKAGECONFIG[live555] = "--enable-live555,--disable-live555,live555"
>    PACKAGECONFIG[libass] = "--enable-libass,--disable-libass,libass"
>    PACKAGECONFIG[mkv] = "--enable-mkv,--disable-mkv,libmatroska libebml"
>    PACKAGECONFIG[postproc] =
> "--enable-postproc,--disable-postproc,libpostproc" PACKAGECONFIG[opencv] =
> "--enable-opencv,--disable-opencv,opencv" PACKAGECONFIG[libva] =
> "--enable-libva --enable-avcodec,--disable-libva --disable-avcodec,libva
> libav"
> 
> I'd like to only add "libva" to the default, so I wrote this
> in my local.conf:
>    PACKAGECONFIG_pn-vlc_append = " libva"
> Inspecting it
>    $ bitbake vlc -e | grep ^PACKAGECONFIG
>    PACKAGECONFIG=" libva"
> 
> Oops.  Just to be sure, I tried
>    PACKAGECONFIG_pn-vlc = "live555 libva"
> which gives
>    $ bitbake vlc -e | grep ^PACKAGECONFIG
>    PACKAGECONFIG="live555 libva"
> 
> Note: I tried
>    PACKAGECONFIG_append_pn-vlc = " libva"
> which does work.  However, I've also used
>    PACKAGECONFIG_pn-chromium_append = " component-build"
> for a different recipe that does work... VERY CONFUSED
> 
> What am I doing wrong?  How do I correctly add to the default list?

In general, for a conditional append, you must use _append_<override> - the 
other way around will not do an append, AFAIK it will just set the value.

There are some other valid options that you didn't mention above:

1) Set it outright to list all of the options you want instead of appending. 
At least you know exactly what is going into the value. (I know some people 
don't like this.)

2) Set it using += or _append from a bbappend.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

