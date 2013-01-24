Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0F4EE011C0
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 17:47:13 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r0O1lEAj024942
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 17:47:14 -0800 (PST)
Received: from Marks-MacBook-Pro.local (147.11.117.44) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Wed, 23 Jan 2013 17:47:13 -0800
Message-ID: <510092A1.6050009@windriver.com>
Date: Wed, 23 Jan 2013 19:47:13 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
In-Reply-To: <CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
Subject: Re: are separate -sdk image targets necessary Was: Build external module against Yocto kernel
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
X-List-Received-Date: Thu, 24 Jan 2013 01:47:14 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/23/13 10:56 AM, Burton, Ross wrote:
> On 23 January 2013 16:51, Trevor Woerner <twoerner@gmail.com> wrote:
>> On Tue, Jan 15, 2013 at 2:16 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
>>> According to bug 1614, the kernel dev packages should be
>>> included in sdk images. Please generate your toolchain using
>>> "bitbake core-image-sato-sdk -c populate_sdk" which will
>>> make the toolchain target sysroot matching your image's
>>> sysroot (this is a new feature of 1.3) as long as your image
>>> is a sdk image.
>>
>> I am a bit confused by the above email. To me it appears as if Jessica
>> is saying: "add '-c populate_sdk' to the build of an -sdk image".
>>
>> But if we look at this email from Mark Hatle:
>> http://www.mail-archive.com/yocto@yoctoproject.org/msg10636.html
>>
>> I get the impression that Mark is saying: "now that '-c populate_sdk'
>> is available, there no longer is any need for separate -sdk images".
>>
>> Am I confusing two different things with each other?
>
> My understanding was that populate_sdk will take the package set from
> an image, add compilers and all development packages, and produce a
> SDK.  So all you need is your production image, and then you can
> generate a SDK from that.

That is correct.  Just like everything else in OE, there are multiple ways to do 
things.

When it comes to the SDK there are two main ways, an SDK specific recipe, such 
as meta-toolchain, or use an existing image and produce an SDK for that image. 
The former is better for targeted SDKs that you want to allow something to 
produce software with a known set of limitations/capabilities.  The later is 
useful when your SDK has to match the image -exactly-.

The kernel components/headers is a separate issue.  The SDKs are currently 
configured to be focused on application development tasks.  Jessica and I were 
talking this morning, and it may be possible to enable kernel module compilation 
as well -- but this isn't the existing use-case.

--Mark

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


