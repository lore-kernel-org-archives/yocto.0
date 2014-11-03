Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56193E008EA; Mon,  3 Nov 2014 05:53:55 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A49AE008BA
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 05:53:43 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 03 Nov 2014 05:47:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,308,1413270000"; d="scan'208";a="616011732"
Received: from sergeypo-mobl1.ccr.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.106])
	by fmsmga001.fm.intel.com with ESMTP; 03 Nov 2014 05:53:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Date: Mon, 03 Nov 2014 13:53:37 +0000
Message-ID: <1744349.PzvLt5pE90@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.2 (Linux/3.16.6-203.fc20.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <30C2D590D16A5C46ADFE65219103779841151E36@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841151E36@AZ-US1EXMB03.global.avaya.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Change in packagegroup doesn't cause image rebuild
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
X-List-Received-Date: Mon, 03 Nov 2014 13:53:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Martin,

On Saturday 01 November 2014 15:57:34 Vuille, Martin wrote:
> Yocto 1.6.1 / daisy
> 
> I'm making the transition from denzil/1.2 to daisy.
> 
> I have converted tasks from 1.2 to packagegroups.
> 
> Something is not working properly, and perhaps I am doing
> something wrong, or perhaps my expectations are incorrect.
> 
> My image recipes refer to my package groups in IMAGE_INSTALL.
> My packagegroup recipes list the packages in each group in
> RDEPENDS_${PN}.
> 
> After a recent build, I made a change to one of the packagegroups
> by adding a package.
> 
> I then rebuilt the images that include this packagegroup, but
> bitbake didn't do anything.
> 
> I then bumped the PR in the packagegroup recipe, but that
> didn't make bitbake rebuild anything either.

This last thing suggests to me that perhaps you aren't changing the same 
metadata that the build system is building, because changing PR absolutely 
should trigger a recipe being rebuilt. Silly question, but you don't by chance 
have two copies of the metadata or two packagegroup recipes with the same 
name?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

