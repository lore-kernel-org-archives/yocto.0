Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F43AE00D60; Tue, 12 Nov 2019 09:00:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEF06E00D46
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 09:00:34 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Nov 2019 09:00:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,297,1569308400"; d="scan'208";a="214118105"
Received: from bhatavin-mobl1.ger.corp.intel.com (HELO blackadder.local)
	([10.249.42.178])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2019 09:00:32 -0800
To: "gholhakiii@yahoo.com" <gholhakiii@yahoo.com>,
	Yocto discussion list <yocto@yoctoproject.org>,
	Paul Barker <paul@betafive.co.uk>
References: <37113658.2021239.1573572818816.ref@mail.yahoo.com>
	<37113658.2021239.1573572818816@mail.yahoo.com>
	<509b816d-82e8-4ca6-ade7-f8f0370f3060@www.fastmail.com>
	<1118649944.2067878.1573575470930@mail.yahoo.com>
	<412525dd-238f-dc9f-af9a-f7ef186059a3@intel.com>
	<1602777216.2063025.1573577576252@mail.yahoo.com>
From: Ross Burton <ross.burton@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
Message-ID: <84bc6a35-69b6-b777-1ddf-793891c8b4f1@intel.com>
Date: Tue, 12 Nov 2019 17:00:32 +0000
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:60.0)
	Gecko/20100101 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1602777216.2063025.1573577576252@mail.yahoo.com>
Subject: Re: Building only the app and not the Linux core
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
X-List-Received-Date: Tue, 12 Nov 2019 17:00:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 12/11/2019 16:52, gholhakiii@yahoo.com wrote:
> so you mean there is no way not to build them? I don't need any native tool.
> I define my cross-compilation toolchain in my layer.
> I asked you in twitter, you said "Use multiconfig to split the Linux 
> and  rtos entirely". I could not figure it, so I decided not to bother 
> you in twitter and ask it here :)

Have a look and you'll see what it is building.  If you can remove those 
dependencies from your build then it won't build them...

I suspect you can't.  Your cross compiler will be built in the 
x86-64_linux folder for a start.

Ross

