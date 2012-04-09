Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 082ECE0059A
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 21:02:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q3942l52028837
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Apr 2012 21:02:47 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.224) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 8 Apr 2012 21:02:47 -0700
Message-ID: <4F825F65.4040706@windriver.com>
Date: Mon, 9 Apr 2012 00:02:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Om Prakash PAL <omprakash.pal@stericsson.com>
References: <3ED83A9DB3B6D94CA68BF7C03F2981D35A844F357F@EXDCVYMBSTM006.EQ1STM.local>,
	<4F7C42E5.8000301@windriver.com>
	<3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
In-Reply-To: <3ED83A9DB3B6D94CA68BF7C03F2981D35AE63C1B66@EXDCVYMBSTM006.EQ1STM.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting of specific Kernel/Driver into yocto.
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
X-List-Received-Date: Mon, 09 Apr 2012 04:02:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-04-08 10:04 AM, Om Prakash PAL wrote:
> Hi Bruce,
> Thanks for your reply.
> I am totally new to Yocto.
> I have gone through the section BSP/Linux kernel configuration and if I am not wrong then it explains how can we configure the kernel, not the how we can add/replace a  component(driver etc).
> lets take the example of UART driver, I want to add my own UART driver code.
> Should I write a separate recipe file (.bb) for UART Driver?.
> if yes then I have to write the recipe files for all my drivers that will be very time consuming.
> Is there any other way that I can port all my desired drivers into Yocto kernel?.

No recipes are required per-driver, unless you are building them all
as out of tree modules.

The typical way this is done is to simply work in the extracted linux
src tree (build/tmp/work/<your board>/linux-yocto-<hashes>/linux), manually
patch, or copy your drivers into the tree. At this point, you'll port
the drivers, doing test builds (bitbake -f -c compile linux-yocto) to
ensure that your port is working. When you've completed the build phase,
boot tests would be in order. (Do not do a 'clean' or you'll lose in
progress changes).

When you are happy with the changes, the directory where you were working
is with the kernel git repository. So you can simply commit your 
changes, and generate patches.

    git format-patch -o <your directory> HEAD^ (or however many commits
you have)

Take those patches, create a layer with a bbappend and add them like
any other patch to any package. They'll be applied to subsequent builds
of the kernel.

I'm skipping a lot of detail there, but it is all found in the various
manuals, and I don't want to repeat it here.

Cheers,

Bruce

> Please help me.
> Thanks a lot in advance.
>
> Best Regards,
> Om Prakash Pal
> ________________________________________
> From: Bruce Ashfield [bruce.ashfield@windriver.com]
> Sent: Wednesday, April 04, 2012 6:17 PM
> To: Om Prakash PAL
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Porting of specific Kernel/Driver into yocto.
>
> On 12-04-04 04:46 AM, Om Prakash PAL wrote:
>> Hi,
>> I want to build my local kernel/Driver code, not the default one.
>> please help how can i do it ?.
>> any wiki/docs on this?.
>
> The BSP developer guides show how to extend the yocto kernels, and
> also have sections on custom/different kernel versions. Have you
> seen that doc yet ? Or have you seen it, and have specific questions ?
>
> Bruce
>
>>
>> Best Regards,
>> Om Prakash Pal
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>


