Return-Path: <yocto@mindchasers.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 777EFE0085A; Sat,  1 Nov 2014 06:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1376 seconds by postgrey-1.32 at yocto-www;
	Sat, 01 Nov 2014 06:31:13 PDT
Received: from smtp.webfaction.com (mail6.webfaction.com [74.55.86.74])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 468E5E00777
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 06:31:13 -0700 (PDT)
Received: from [192.168.1.10] (c-68-38-40-177.hsd1.nj.comcast.net
	[68.38.40.177])
	by smtp.webfaction.com (Postfix) with ESMTP id AE96966E8AFF
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 13:08:16 +0000 (UTC)
Message-ID: <5454DB3F.9080209@mindchasers.com>
Date: Sat, 01 Nov 2014 09:08:15 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <30C2D590D16A5C46ADFE6521910377984114ED96@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE6521910377984114ED96@AZ-US1EXMB03.global.avaya.com>
Subject: Re: How to debug dependency/setscene/sstate issues
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
X-List-Received-Date: Sat, 01 Nov 2014 13:31:21 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Won't Toaster give you the insight you seek?

I still need to ramp up on mastering it, but I was hoping it would help 
with this sort of thing.



On 11/01/2014 08:08 AM, Vuille, Martin (Martin) wrote:
> I am using Poky daisy / Yocto 1.6.1
>
> Occasionally, when building a custom image or SDK after changing
>
> a package recipe or package content, I find that the do_rootfs task is not
>
> executed for the image or the do_populate_sdk task is not executed
>
> for the sdk.
>
> There are custom classes, packages, packagegroups involved, so it is
>
> possible, nay likely, that the problem is something I did or should’ve
>
> done but didn’t.
>
> How to approach this problem?
>
> Because the problem is intermittent, I usually won’t realize there was
>
> a problem until after bitbake is done and didn’t build what I expected.
>
> Is there a way to retrospectively review bitbake’s decision-making?
>
> Or do I need to run with –DDD all the time?
>
> MV
>
>
>


