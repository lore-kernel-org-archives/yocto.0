Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DED4E009E7; Thu, 12 Jun 2014 03:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38C06E0070F
	for <yocto@yoctoproject.org>; Thu, 12 Jun 2014 03:53:31 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 12 Jun 2014 03:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="354090421"
Received: from nithyasr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.63])
	by FMSMGA003.fm.intel.com with ESMTP; 12 Jun 2014 03:49:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Kweh, Hock Leong" <hock.leong.kweh@intel.com>, yocto@yoctoproject.org
Date: Thu, 12 Jun 2014 11:53:12 +0100
Message-ID: <1856451.xsgBM41Yoj@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.5-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <F54AEECA5E2B9541821D670476DAE19C2B6AD91A@PGSMSX102.gar.corp.intel.com>
References: <4D2B74E594FF4C4A97424079247E473A17DC8288@PGSMSX104.gar.corp.intel.com>
	<AF233D1473C1364ABD51D28909A1B1B7241489D1@pgsmsx105.gar.corp.intel.com>
	<F54AEECA5E2B9541821D670476DAE19C2B6AD91A@PGSMSX102.gar.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [OE-core] [Repo Issue] x264: Unable to find revision
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
X-List-Received-Date: Thu, 12 Jun 2014 10:53:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 03 June 2014 06:25:41 Kweh, Hock Leong wrote:
> Hi, understand the patch below is to fix the x264 yocto build issue but it
> is for "Daisy" branch. How about the "Dylan" branch? Can we use the same
> commit id on the SRCREV?

Here is the correct fix for dylan (where the recipe was in meta-oe, rather than 
OE-Core):

http://patchwork.openembedded.org/patch/73547/

(My apologies for not replying sooner to this.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

