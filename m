Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35834E00E36; Mon, 12 Feb 2018 03:47:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6CE6E0097D
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 03:46:59 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Feb 2018 03:46:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,501,1511856000"; d="scan'208";a="17796982"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga006.jf.intel.com with ESMTP; 12 Feb 2018 03:46:57 -0800
To: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
	<3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01C85287@dor-sms-xch01.digi.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <e85018cb-fe82-fcb0-05c6-1e4ee909f8bb@linux.intel.com>
Date: Mon, 12 Feb 2018 13:40:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <0B2EBCD48D33654381E736352034C70C01C85287@dor-sms-xch01.digi.com>
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
X-List-Received-Date: Mon, 12 Feb 2018 11:47:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/12/2018 01:40 PM, Diaz de Grenu, Jose wrote:
> Can you detail how this would be done?
> 
> Is it possible to append to 'log_check_expected_regex' from the .bb recipe that generates the warning? Or the only option is to patch the poky layer?
> 
> Is there any way to remove these warnings in rocko without modifying the poky layer? (I cannot modify community layers)

You need to patch the layer, yes. But you can also send the patch to 
oe-core list, and it would be much less invasive than backporting the 
postinst_intercept stuff.

Alex

