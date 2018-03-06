Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9952CE00DFB; Mon,  5 Mar 2018 16:36:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42FB8E008FB
	for <yocto@yoctoproject.org>; Mon,  5 Mar 2018 16:36:58 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Mar 2018 16:36:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,429,1515484800"; d="scan'208";a="25460337"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.20.55])
	([10.221.20.55])
	by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2018 16:36:56 -0800
To: Giordon Stark <kratsg@gmail.com>, "N:" <yocto@yoctoproject.org>
References: <CAFzUWG=DKYcnaNTWHu-pcAiLgzaNpxfjm9+8pZsO0LY4ib+BpQ@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <126c177b-0ff4-9611-35dd-54c6c6519d37@intel.com>
Date: Tue, 6 Mar 2018 08:36:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAFzUWG=DKYcnaNTWHu-pcAiLgzaNpxfjm9+8pZsO0LY4ib+BpQ@mail.gmail.com>
Subject: Re: Adding custom scripts to home directory and /etc/init.d/*
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
X-List-Received-Date: Tue, 06 Mar 2018 00:36:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/06/2018 05:18 AM, Giordon Stark wrote:
> Hi all,
> 
> I am wondering if there's a nice pattern or workflow within Yocto where
> I can add a custom shell script to /etc/init.d for the purposes of
> running it on OS boot (which also requires running update.rc I believe)

You can inherit update-rc.d class and define INITSCRIPT_NAME/PARAMS in
your recipe.

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-update-rc.d

> as well as prepopulating the home directory with some files of my choosing.
> 
> If someone could point me in the right direction, that would be great!
> 
> Giordon
> -- 
> Giordon Stark
> 
> 


