Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 510D0E009EA; Sat,  5 Dec 2015 13:23:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C05A7E007B4
	for <yocto@yoctoproject.org>; Sat,  5 Dec 2015 13:23:20 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 05 Dec 2015 13:23:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,386,1444719600"; d="scan'208";a="854712635"
Received: from kteo3-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.90])
	by fmsmga001.fm.intel.com with ESMTP; 05 Dec 2015 13:23:17 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Habibi <mikehabibi@gmail.com>
Date: Sun, 06 Dec 2015 10:23:15 +1300
Message-ID: <1662652.5xsLZHLjE9@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Sat, 05 Dec 2015 21:23:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Tue, 01 Dec 2015 09:26:15 Michael Habibi wrote:
> I am working on potentially migrating our distribution to Yocto (will be a
> long, long process). We have an area of our filesystem where any file
> placed will go directly into the rootfs of the target. This works well with
> our product, as we have certain binaries and scripts that need to be copied
> directly, and there's no other real step involved (no compilation, etc). Is
> there a best practice or existing class that handles this? I saw mention of
> a binary/ directory but I wasn't sure if that was for this or something
> else.

I see you got your answer - but I wanted to point out when you wrote "sysroot" 
you meant "rootfs" - these two aren't the same thing. The sysroot is the area 
used to share files between recipes (e.g. libraries and headers); whilst it can 
look a bit similar to what ends up in the rootfs it's actually completely 
separate.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

