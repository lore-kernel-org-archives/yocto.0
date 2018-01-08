Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48FC8E00C78; Mon,  8 Jan 2018 04:36:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 139DDE00C78
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 04:36:09 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 04:36:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,330,1511856000"; 
   d="scan'208";a="9013116"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 08 Jan 2018 04:36:07 -0800
To: =?UTF-8?Q?Martin_Hundeb=c3=b8ll?= <martin.hundeboll@prevas.dk>,
	"Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
	<3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
	<0497f8b7-805a-7ab4-48e4-d8690d10e8f6@prevas.dk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b00cbcdb-a876-f2d2-0d0c-750b33ed08cc@linux.intel.com>
Date: Mon, 8 Jan 2018 14:36:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <0497f8b7-805a-7ab4-48e4-d8690d10e8f6@prevas.dk>
Subject: Re: Postinstallation script warnings in Yocto 2.4 Rocko
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
X-List-Received-Date: Mon, 08 Jan 2018 12:36:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 01/08/2018 02:31 PM, Martin Hundebøll wrote:
> 
> 
> On 2018-01-08 13:19, Alexander Kanavin wrote:
>>> The problem is that in Yocto 2.4 then any build which requires
>>> on-target postinstallation script is going to trigger warning, even
>>> if it is completely correct. Is there no way around this? Is there a
>>> way to at least hide them?
>> You can set self.log_check_expected_regexes in RpmRootfs class in 
>> meta/lib/oe/rootfs.py, but
>>
>> a) depending on how broad your regex is, you might suppress real 
>> failures of the scriptlets;
>>
>> b) it would be only your local hack until the issue is resolved properly.
> 
> Would changing to dpkg/opkg be a work-around?

A workaround for the annoying warning, maybe, a work-around for the 
issue at hand (how to defer to first boot), no.

Alex

