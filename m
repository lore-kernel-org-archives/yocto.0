Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59ABBE014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 08:57:23 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Sep 2013 08:57:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,916,1371106800"; d="scan'208";a="404093711"
Received: from unknown (HELO helios.localnet) ([10.252.123.198])
	by orsmga002.jf.intel.com with ESMTP; 16 Sep 2013 08:57:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: JC <jc@vtkloud.com>
Date: Mon, 16 Sep 2013 16:57:17 +0100
Message-ID: <2840798.edp5joD2BU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <523392F3.4000907@vtkloud.com>
References: <523392F3.4000907@vtkloud.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: broken meta-baryon?
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
X-List-Received-Date: Mon, 16 Sep 2013 15:57:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Jay,

On Saturday 14 September 2013 00:34:27 JC wrote:
> I was trying to give a look at Baryon, but I can't bake it. It seems
> there's a package whose sources have vanised :
> 
> ERROR: Fetcher failure for URL:
> 'http://code.entropywave.com/download/orc/orc-0.4.5.tar.gz;name=orc'.
> Checksum mismatch!
> File: '/media/yocto/downloads/orc-0.4.5.tar.gz' has md5 checksum
> 5b6d74f1453e20c09d6a20d909779ad7 when e26e59428b13ec251916f34bea96eee5
> was expected
> File: '/media/yocto/downloads/orc-0.4.5.tar.gz' has sha256 checksum
> 6f0e2620a2a986c8329612f1db92f273949a58480290ace72eca7f1dba1a5c98 when
> 4e04953643cd8e67f8d9796da9547a606954e3944e42e7ce5a099440fd8e729e was
> expected
> If this change is expected (e.g. you have upgraded to a new version
> without updating the checksums) then you can use these lines within the
> recipe:
> SRC_URI[orc.md5sum] = "5b6d74f1453e20c09d6a20d909779ad7"
> SRC_URI[orc.sha256sum] =
> "6f0e2620a2a986c8329612f1db92f273949a58480290ace72eca7f1dba1a5c98"
> Otherwise you should retry the download and/or check with upstream to
> determine if the file has become corrupted or otherwise unexpectedly
> modified.
> 
> 
> Is the Baryon maintainer aware of this or is this just me ?

Looks like the upstream website for orc has completely broken, unfortunately, 
and unlike the core recipes the source is not on our source mirror. I've sent 
an email to get it mirrored on sources.openembedded.org until upstream wakes 
up (assuming it does).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

