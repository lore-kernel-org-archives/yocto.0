Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BAE6E00A5B; Thu, 20 Aug 2015 00:59:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC9DE0097F
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 00:59:04 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 20 Aug 2015 00:59:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,714,1432623600"; d="scan'208";a="545246819"
Received: from ljegan-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.8.54])
	by FMSMGA003.fm.intel.com with ESMTP; 20 Aug 2015 00:59:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Richard Cagley <rcagley@gmail.com>
Date: Thu, 20 Aug 2015 08:59:02 +0100
Message-ID: <5717325.4YUoiU5sY2@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.4-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAMKF1sodHUti7FTjcjb9Gmf5o+QgEaNeBdWiY5OPapOR6YyX+A@mail.gmail.com>
References: <CAN-NoH0rEOzkb3ds_pm2CW334ErC=4Fi4eMY31s_Ppq-S-+gGg@mail.gmail.com>
	<CAMKF1sodHUti7FTjcjb9Gmf5o+QgEaNeBdWiY5OPapOR6YyX+A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libqtphonon4-dev
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
X-List-Received-Date: Thu, 20 Aug 2015 07:59:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 19 August 2015 21:46:37 Khem Raj wrote:
> On Aug 19, 2015 2:29 PM, "Richard Cagley" <rcagley@gmail.com> wrote:
> > i'm on poky master branch. When I try to bitbake meta-toolchain-qt I'm
> > getting a error I don't know how to go about solving
> > 
> > Computing transaction...error: Can't install
> > packagegroup-qt-toolchain-target-1.0-r0@all: no package provides
> > libqtphonon4-dev
> 
> This means that libqtphonon4-dev is.empty genetated and deleted since thats
> the default behaviour. So you need to put ALLOW_EMPTY somewhere to avoid
> that. And please use -cpopulate_sdk targets to create sdks and not meta
> toolchain targets any more

Actually I have a fix for this one that I will send today, I should have sent 
it a couple of weeks ago - sorry about that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

