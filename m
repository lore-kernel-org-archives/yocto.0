Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0980E00C44; Thu,  2 Nov 2017 09:59:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77B8FE00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 09:59:39 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Nov 2017 09:59:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,335,1505804400"; d="scan'208";a="145213307"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 02 Nov 2017 09:59:36 -0700
To: Colin Helliwell <colin.helliwell@ln-systems.com>, yocto@yoctoproject.org
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
	<51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
	<214703149.187142.1509606640635@email.1and1.co.uk>
	<1752415703.224739.1509640006960@email.1and1.co.uk>
	<872a75ce-9471-09fb-e00d-0ae5da82634a@linux.intel.com>
	<198351249.226064.1509641440918@email.1and1.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9857d70a-0429-6777-d29d-e797cbd9bdd4@linux.intel.com>
Date: Thu, 2 Nov 2017 18:59:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <198351249.226064.1509641440918@email.1and1.co.uk>
Subject: Re: Slightly varying builds
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
X-List-Received-Date: Thu, 02 Nov 2017 16:59:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/02/2017 06:50 PM, Colin Helliwell wrote:
>
> u-boot-w2_1.inc has the standard kind of recipe stuff. For creating env files, and files to be used for later signing, it has some _append steps, so I'm aiming to use 'DEP_IMG' to create the various files with different prefixes for the two variants.
> Strangely though, an 'echo ${DEP_IMG}' is outputting the same value ("u-boot-prodn") from both recipes, even after a cleanall on both. Possibly some state info being pulled in somewhere?


Not sure if this will help, but start by not using the -dev suffix. It 
will clash with -dev packages produced by (any) recipe.

Alex

