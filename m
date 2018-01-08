Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 849FEE00DAE; Mon,  8 Jan 2018 03:29:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81B08E0056D
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 03:29:51 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Jan 2018 03:29:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,330,1511856000"; 
   d="scan'208";a="8998534"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga008.jf.intel.com with ESMTP; 08 Jan 2018 03:29:49 -0800
To: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
Date: Mon, 8 Jan 2018 13:29:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
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
X-List-Received-Date: Mon, 08 Jan 2018 11:29:53 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 01/08/2018 11:14 AM, Diaz de Grenu, Jose wrote:
> I am trying to create a recipe with a post installation script. I am using the following fragment of code (as documented in http://www.yoctoproject.org/docs/2.4/mega-manual/mega-manual.html#new-recipe-post-installation-scripts ):
> 
> 
> pkg_postinst_PACKAGENAME() {
>       if [ x"$D" = "x" ]; then
>            # Actions to carry out on the device go here
>       else
>            exit 1
>       fi
> }
> 
> This was working fine in Yocto 2.2, but now in Yocto 2.4 I am getting these warnings:
> 
> WARNING: core-image-base-1.0-r0 do_rootfs: [log_check] core-image-base: found 3 warning messages in the logfile:
> [log_check] warning: %post(init-ifupdown-1.0-r7.0.cortexa7hf_neon) scriptlet failed, exit status 1
> 
> How can I clean these warnings in Yocto 2.4? Is that still the correct
> way to create post installation script that must run on the target?
> Should I just replace 'exit 1' by 'exit 0'?

Nope, 'exit 1' is the currently correct way to defer to first boot. On 
the other hand, it's also a correct way to indicate that the script has 
failed, and rpm is right in reporting it as such. This is a design 
defect in Yocto, and I plan to fix it, so that instead you would simply 
write your fragment as follows:


pkg_postinst_ontarget_PACKAGENAME() {
       # Actions to carry out on the device go here
       ....
}


Alex

