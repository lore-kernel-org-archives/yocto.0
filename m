Return-Path: <bds@bsmucker.eu.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58274E00B5D; Tue, 17 Jun 2014 13:12:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.86.168.183 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F37D6E00B0B
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:11:59 -0700 (PDT)
Received: from [192.168.0.11] (unknown [50.52.53.248])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 5ADA050A73;
	Tue, 17 Jun 2014 16:11:58 -0400 (EDT)
Message-ID: <53A0A107.4000300@bsmucker.eu.org>
Date: Tue, 17 Jun 2014 13:11:51 -0700
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Andrea Adami <andrea.adami@gmail.com>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>	<53A061C1.9040906@bsmucker.eu.org>
	<CAAQYJAv_U5a=umUMs1cTQudDktxYdGKco92WcgxrH-r+bAfBoA@mail.gmail.com>
In-Reply-To: <CAAQYJAv_U5a=umUMs1cTQudDktxYdGKco92WcgxrH-r+bAfBoA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to copy recipe and have different target names
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
X-List-Received-Date: Tue, 17 Jun 2014 20:12:11 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrea and all,

So I am using your suggestion to make another variant of busybox: 
busybox-static, and I add the static.bblcass file.

So when I try to do bitbake busybox-static, it ends up unpacking to 
busybox-static-1.20.2-r2/busybox-1.20.2 (which does not correspond to 
the S variable).
And it errors out when it attempts to patch to 
busybox-static-1.20.2-r2/busybox-static-1.20.2 (the S variable path).

What am I missing?

Thanks,

Brian



On 6/17/2014 9:31 AM, Andrea Adami wrote:
> On Tue, Jun 17, 2014 at 5:41 PM, Brian Smucker <bds@bsmucker.eu.org> wrote:
>> Hello,
>>
>> I would like to have yocto generate two copies of busybox, one
>> statically-linked and one dynamically linked. So I try to make a copy of the
>> busybox recipe and give it a new name like busybox-s_xxxxx.bb
>>
>> But my knowlege of yocto comes up short and I get lots of errors.
>>
>> Is there a way to do this cleanly?  Or should I be trying to do a different
>> approach?
>>
>> Thanks,
>>
>> Brian
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> Brian,
>
> I don't think there is an 'official' way to do that.
> For a similar purpose (buidling static binaries against klibc) I have
> developed two solutions, both using a custom class:
>
> 1) for easy-to-adapt recipes, BBCLASSEXTEND +  the custom class
> http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-bsp/kexecboot/kexecboot_0.6.bb
>
> 2) for the stubborn cases, create a copy of the recipe and may need to
> adjust some vars (S, FILESPATH or better FILESEXTRAPATHS, ...)
> see  i.e.
> http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-devtools/mtd/ubi-utils-klibc_1.5.0.bb
> http://cgit.openembedded.org/meta-openembedded/tree/meta-initramfs/recipes-kernel/kexec/kexec-tools-klibc_2.0.2.bb
>
> I guess busybox belongs to the heavy ones...
>
> Cheers
>
> Andrea


