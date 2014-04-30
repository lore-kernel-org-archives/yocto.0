Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A54AE00997; Wed, 30 Apr 2014 14:08:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6701E00985
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 14:08:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s3UL8K3J019315
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Apr 2014 14:08:20 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Wed, 30 Apr 2014 14:08:20 -0700
Message-ID: <53616636.5000509@windriver.com>
Date: Wed, 30 Apr 2014 17:08:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Neuer User <auslands-kv@gmx.de>, <yocto@yoctoproject.org>
References: <ljl1vt$ink$1@ger.gmane.org>	<535E5198.60709@windriver.com>	<ljlk6u$pd6$1@ger.gmane.org>	<535E54BB.7060701@windriver.com>	<ljllf9$frh$1@ger.gmane.org>	<535E59A1.1080808@windriver.com>
	<ljlmib$45t$1@ger.gmane.org>
In-Reply-To: <ljlmib$45t$1@ger.gmane.org>
Subject: Re: Kernel config fragments are not applied
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
X-List-Received-Date: Wed, 30 Apr 2014 21:08:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-28 09:54 AM, Neuer User wrote:
> Am 28.04.2014 15:37, schrieb Bruce Ashfield:
>>
>> If you send me pointers to your bblayers and local.conf settings, I'll
>> run a build to see what happens here as well.
>>
>> I'm always interested in tracking these down regardless.
>>
>> Bruce
>>
>
> Testing this should be pretty straightforward, if see that correctly.

I'm heading out, but wanted to send an update. I can confirm that
there are some issues on master as it currently stands .. but the
good news, is that in my queue of changes for Yocto 1.7, you can
seamlessly add fragement support to that recipe and it works.

I'll be looking at this again later, and will send a branch reference
for testing. I need to bisect for the particular change first, since
the entire queue can't go into the tree yet (it breaks some use cases).
But I will submit the ones that fix this case.

Cheers,

Bruce

>
> Just init the repo with yocto master-next. Then export MACHINE=cubox-i.
>
> My layer has:
>
> recipes-kernel/linux/linux-cubox-i_3.0.35.bbappend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>
> inherit kernel
> COMPATIBLE_MACHINE_cubox-i = "(cubox-i)"
>
> SRC_URI += "file://videoin.cfg"
>
>
> And in recipes-kernel/linux/linux-cubox-i-3.0.35/videoin.cfg:
>
> CONFIG_VIDEO_ADV7180=y
>
> (for a test this should suffice)
>
> Then after a "bitbake linux-cubix-i -c configure" you can grep ADV7180
> in tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.0.35-r0/git/.config
>
> Normally it is "=n", now it should be "=y".
>
> Thanks
>
> Michael
>


