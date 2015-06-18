Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2524AE00A4D; Thu, 18 Jun 2015 04:22:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECCA9E009D2
	for <yocto@yoctoproject.org>; Thu, 18 Jun 2015 04:22:02 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jun 2015 04:22:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,638,1427785200"; d="scan'208";a="748931566"
Received: from mcurley-mobl6.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.31.154])
	by orsmga002.jf.intel.com with ESMTP; 18 Jun 2015 04:22:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Date: Thu, 18 Jun 2015 12:21:59 +0100
Message-ID: <1709068.8NqlUxtOsX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <CAE_REAtpX=fJdSPUnbGxq5TYXiyS3WQV1pKBuRO2o4_uM+dfzg@mail.gmail.com>
References: <CAE_REAtpX=fJdSPUnbGxq5TYXiyS3WQV1pKBuRO2o4_uM+dfzg@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org
Subject: Re: Having Yocto Sandbox information on target in any form
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
X-List-Received-Date: Thu, 18 Jun 2015 11:22:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gaurang,

On Thursday 18 June 2015 01:40:14 Gaurang Shastri wrote:
> I am trying to figure out in existing Yocto/OE , is there any way on
> target, i will get my build path information:
> 
> Ex,.
> # cat /etc/yocto_version (on target):
> ==
> Yocto_SDK=1.8
> Yocto_Build_Path=/home/gaurang/yocto-1.8/build
> Image_name=core-image-sato
> ==
> 
> 
> I don't know if anything like above exist for Yocto/OE ? This will very
> helpful sometime to cross debug the things.

In 1.8 we introduced an image-buildinfo class - you can inherit this and set 
IMAGE_BUILDINFO_VARS to the list of variables you want to write to the file.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

