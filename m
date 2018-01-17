Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E125E00E97; Wed, 17 Jan 2018 09:39:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42606E00C0E
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 09:38:58 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jan 2018 09:38:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,372,1511856000"; d="scan'208";a="20539524"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Jan 2018 09:38:56 -0800
To: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
	<3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B7E03C@dor-sms-xch01.digi.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <7d49ffb2-8a17-2488-c987-64586bb3b3c2@linux.intel.com>
Date: Wed, 17 Jan 2018 19:32:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <0B2EBCD48D33654381E736352034C70C01B7E03C@dor-sms-xch01.digi.com>
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
X-List-Received-Date: Wed, 17 Jan 2018 17:39:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/17/2018 07:10 PM, Diaz de Grenu, Jose wrote:
>
> The patches work, but I was wondering if we really need to mark this behavior as a WARNING. From my point of view, this may be confusing for a user, as it could lead to think that something is wrong. But I think that, even if image post processing during the build is preferable, there are some image post processing that just cannot be done there. Think for example of any HW identifier, like a MAC address that you might want to use.
> 
> I think a bb.note should be enough. At least an option per recipe to skip the warning, so that expected on-target-postprocessing warnings can be hidden.

I agree, I'll change it to a note. The excessive use of bb.warn 
pre-dates my patchset though. I'll resend the patchset tomorrow.

> Also, is there any chance this could end up in rocky? As it is, any postprocessing for the target causes ugly WARNINGS with '-1 error code' messages.
> 
> Thanks again for the patches!

First, let's get it to master. I had a bit of trouble convincing the 
community that this needs to be done last time (about one year ago), so 
I appreciate the support :)

Alex

