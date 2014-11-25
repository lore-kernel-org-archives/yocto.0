Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80F18E008FC; Tue, 25 Nov 2014 03:20:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4154AE008E2
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 03:20:45 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 25 Nov 2014 03:20:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,455,1413270000"; d="scan'208";a="637728159"
Received: from ksperera-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.204])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2014 03:20:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Nishanth S <Nishanth.S@altiux.com>
Date: Tue, 25 Nov 2014 11:20:20 +0000
Message-ID: <4588822.SDbnQVoq17@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.3-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <5472CA61.7020303@altiux.com>
References: <546AE780.7070208@altiux.com>
	<969F26A8BAB325438E7EB80D3C3134FB2F3BE196@IRSMSX105.ger.corp.intel.com>
	<5472CA61.7020303@altiux.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [bitbake-devel] how to update a package on yocto project
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
X-List-Received-Date: Tue, 25 Nov 2014 11:20:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Nishanth,

On Monday 24 November 2014 11:34:17 Nishanth S wrote:
> board : Intel Galileo Gen 1
> 
> I use yocto project for build image/tarball for the board.
> 
> How to update a existing package???
> 
> I mean, I use openjdk-6 on my board.
> 
> But I need to change it to openjdk-7.
> 
> I edited local.conf by adding following line.
> 
> preferred_version_openjdkXXXX = XXXX
> 
> 
> 
> 
> I tried this but the resulting image.tar had only openjdk-6.
> 
> How do I include openjdk-7 with core-image???

There needs to be a recipe to actually provide that - PREFERRED_VERSION only 
selects between available versioned recipes. Is there an openjdk-7 recipe in 
your configuration? If not, you will need to add one.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

