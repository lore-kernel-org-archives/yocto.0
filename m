Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3F6A84C80FA8
	for <yocto@yoctoproject.org>; Tue,  9 Nov 2010 00:12:36 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA96CYDu016598;
	Mon, 8 Nov 2010 22:12:34 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 8 Nov 2010 22:12:07 -0800
Received: from bruce-ashfields-macbook.local ([128.224.143.7]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 8 Nov 2010 22:12:06 -0800
Message-ID: <4CD8E634.1090403@windriver.com>
Date: Tue, 09 Nov 2010 01:12:04 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <8EA2C2C4116BF44AB370468FBF85A77701BC9526F4@orsmsx504.amr.corp.intel.com>
	<4CD8601A.4090500@windriver.com>
	<8EA2C2C4116BF44AB370468FBF85A77701BCA3809D@orsmsx504.amr.corp.intel.com>
In-Reply-To: <8EA2C2C4116BF44AB370468FBF85A77701BCA3809D@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 09 Nov 2010 06:12:07.0126 (UTC)
	FILETIME=[09510F60:01CB7FD5]
Cc: yocto@yoctoproject.org
Subject: Re: [PULL] devel/toolchain Recipes upgrades
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 09 Nov 2010 06:12:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-11-08 7:41 PM, Kamble, Nitin A wrote:
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>
> Out of curiosity. What's the logic/requirement behind this
> change ? Since we don't have a 'supported' 2.6.36 kernel, using
> these would be a mismatch with what is actually booting on
> the targets.
>
> There's probably something I just don't understand here, so
> apologies in advance for the (potentially) dumb question.
>
> Cheers,
>
> Bruce
>
>
> Bruce,
>     AFAIU the linux-libc-headers are independent from the running kernel. These are headers for libc.

But they aren't. The libc headers should be coupled to the
kernel version. New ABIs are established and glibc can detect
and deal with this, but you should never have a newer set of
headers than the running kernel.

To say the least, I'd like more explanation of this change.

Bruce

>
> Thanks,
> Nitin


