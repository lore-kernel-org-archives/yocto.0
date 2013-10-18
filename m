Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62CD3E016DF
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 02:58:24 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 18 Oct 2013 02:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,521,1378882800"; d="scan'208";a="413144808"
Received: from unknown (HELO helios.localnet) ([10.252.121.12])
	by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2013 02:58:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gaurang Shastri <gmshastri@gmail.com>,
	Amit Kumar <Amit.Kumar@lntinfotech.com>
Date: Fri, 18 Oct 2013 10:58:22 +0100
Message-ID: <1713158.CcY8xEoSK0@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAE_REAst0sx+V5dsuiXicm-k0BBcMc3fkYbZH5paXcA3Y6+m4Q@mail.gmail.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C605CF998@BLRINMSMBX01.bglrodc.lntinfotech.com>
	<CAE_REAst0sx+V5dsuiXicm-k0BBcMc3fkYbZH5paXcA3Y6+m4Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to enable LTP support in "core-image-basic"
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
X-List-Received-Date: Fri, 18 Oct 2013 09:58:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 18 October 2013 14:50:51 Gaurang Shastri wrote:
> Adding
> 
> IMAGE_FEATURES += "splash ssh-server-openssh ltp"  in core-image-basic.bb
> 
> will enable ltp in your final image. Make sure you have added all
> required layers :)

Ah, that doesn't look right - I don't think we have an "ltp" IMAGE_FEATURES
item. Adding "tools-testapps" will bring in ltp as well as some other testing
tools, otherwise you can just add "ltp" to IMAGE_INSTALL within the image
recipe or alternatively you can use other means to add the package as
described in the manual:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

