Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31CBDE00B02; Thu, 10 Dec 2015 03:13:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BBCE002F9
	for <yocto@yoctoproject.org>; Thu, 10 Dec 2015 03:13:40 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tBABDWJI012022
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 10 Dec 2015 03:13:33 -0800 (PST)
Received: from [128.224.14.43] (128.224.14.43) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.248.2;
	Thu, 10 Dec 2015 03:13:32 -0800
Message-ID: <56695E5A.2040009@windriver.com>
Date: Thu, 10 Dec 2015 06:13:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Robert Berger <gmane@reliableembeddedsystems.com>, <yocto@yoctoproject.org>
References: <56688EE7.4070103@reliableembeddedsystems.com>
	<5668BCB8.9010408@reliableembeddedsystems.com>
In-Reply-To: <5668BCB8.9010408@reliableembeddedsystems.com>
Subject: Re: in-tree defconfig
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
X-List-Received-Date: Thu, 10 Dec 2015 11:13:42 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2015 06:43 PM, Robert Berger wrote:
> Hi,
>
> This seems to do the trick:
>
> https://github.com/RobertBerger/meta-mainline/blob/jethro-training-v4.1.x/multi-v7-ml/recipes-kernel/linux/linux-yocto-custom.inc
>

That's what I would have suggested. Set the kconfig mode so that in
tree config becomes the baseline.

In the upcoming release, I have an open bugzilla to tweak the way
that this works, and I should be able to detect that in tree
defconfig and make alldefconfig the default for that mode.

Let me know if you have other issues with it.

Bruce

> Regards,
>
> Robert
>
>
>
> ..."The scientific name for an animal that doesn't either run from or
> fight its enemies is lunch." - Michael Friedman
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>


