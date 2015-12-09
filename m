Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D657E00BDC; Wed,  9 Dec 2015 05:39:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA29AE008C8
	for <yocto@yoctoproject.org>; Wed,  9 Dec 2015 05:39:25 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id tB9DdH7V020592
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 9 Dec 2015 05:39:17 -0800 (PST)
Received: from [128.224.5.140] (128.224.5.140) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Wed, 9 Dec 2015 05:39:16 -0800
Message-ID: <56682F03.3050501@windriver.com>
Date: Wed, 9 Dec 2015 08:39:15 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1512090532270.21086@localhost>
In-Reply-To: <alpine.LFD.2.20.1512090532270.21086@localhost>
Subject: Re: how can i figure out where a particular kernel config option came from?
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
X-List-Received-Date: Wed, 09 Dec 2015 13:39:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2015 05:36 AM, Robert P. J. Day wrote:
>
>    short version: with a short BSP layer i've been handed, the eventual
> kernel .config file ends up with the setting:
>
>    CONFIG_WIRELESS=y
>
> which makes no sense as the target board has no wireless and the BSP
> itself doesn't set that, so how can i start tracking back to figure
> out where that particular setting came from?
>
>    long version: i'm actually using Wind River Linux 7, but the
> question remains the same. it turns out that CONFIG_WIRELESS is
> selected by CONFIG_WLAN, so i'm really after what sets CONFIG_WLAN. i
> don't see it in the BSP layer, so i'm tracing back to the WR kernel
> recipe, and possibly features templates and any other kernel .cfg
> snippets i can find, so far with no luck.
>
>    in either case, is there a log file that lists *precisely* which
> kernel config snippets contributed to the final .config file? thanks.

The meta-series in the kernel source directory has all the details.
If you locate the kernel source for your build, it'll be in a 'meta'
or '.meta' directory (depending on the version of the tools), and be
called ... 'meta-series'.

Bruce

>
> rday
>


