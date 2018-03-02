Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54E7EE00EBD; Fri,  2 Mar 2018 00:15:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C87CE00DC6
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2018 00:15:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Mar 2018 00:15:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,411,1515484800"; d="scan'208";a="38698205"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.221.22.4])
	([10.221.22.4])
	by orsmga002.jf.intel.com with ESMTP; 02 Mar 2018 00:15:16 -0800
To: =?UTF-8?Q?Iv=c3=a1n_Castell?= <icastell@nayarsystems.com>
References: <CAALXFYzHCrGKX=5_WL+=mez7aiYOv7q8+9XLREwaPqTL_4WpBA@mail.gmail.com>
	<c3c07c48-7729-7f75-21cf-d09ce0c4db33@intel.com>
	<CAALXFYyVio5UzkZUVS1xAPnkgfTt-7rTO+0ApEnKD4F2Gd1OSw@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <a41363bb-bfcf-cf81-9fdb-52d365d18d45@intel.com>
Date: Fri, 2 Mar 2018 16:15:15 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAALXFYyVio5UzkZUVS1xAPnkgfTt-7rTO+0ApEnKD4F2Gd1OSw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Yocto procedure to write generated image to hdd
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
X-List-Received-Date: Fri, 02 Mar 2018 08:15:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 03/02/2018 03:41 PM, Iván Castell wrote:
> 
> 2018-03-02 0:41 GMT+01:00 Anuj Mittal <anuj.mittal@intel.com
> <mailto:anuj.mittal@intel.com>>:
> 
>     Hi,
> 
>     On 03/01/2018 07:20 PM, Iván Castell wrote:
>     >      
>     > Is this the proper way to install the generated image in the hard
>     disk?
>     > Maybe I am doing something wrong?
> 
>     Does the image boot up if you select 'boot'? 
> 
> 
> I tested selecting 'boot' option and it happens exactly the same: a
> black screen appears when booting with default options, and when adding
> "noapic", the screen is flooded of "sleep: command not found" messages.
> 
>  
> 
>     Do you eventually get options to select storage media after all
>     these 'not found' messages if you select 'install'? 
> 
> 
> After waiting more than 5 minutes, the "sleep: command not found"
> message continues flooding the screen.
> 
>  
> 
>     Can you share the logs?
> 
> 
> If I could, I would do it, but I have no way to get those logs out of
> the box without a terminal available.

The error is probably coming from
meta/recipes-core/initrdscripts/initramfs-framework/init.

You can pass a boot parameter 'init_fatal_sh' and that should help you
drop to a shell and debug this problem further.


