Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2E74E0049E
	for <yocto@yoctoproject.org>; Sun, 16 Sep 2012 20:18:40 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q8H3IcwT020603
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 16 Sep 2012 20:18:39 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.153) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Sun, 16 Sep 2012 20:18:38 -0700
Message-ID: <5056968D.4090206@windriver.com>
Date: Sun, 16 Sep 2012 23:18:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <B9672221-8331-49D3-B853-E284CBCCA0B5@gmail.com>
	<A158BAD0-6C2D-4724-B13A-AAB54992904C@gmail.com>
In-Reply-To: <A158BAD0-6C2D-4724-B13A-AAB54992904C@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: All kernel modules being built and shipped in images/modules-*.tgz
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
X-List-Received-Date: Mon, 17 Sep 2012 03:18:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-16 12:49 PM, Elvis Dowson wrote:
> Hi,
>
> On Sep 15, 2012, at 7:29 AM, Elvis Dowson wrote:
>
>> I just noticed that with the recent poky master updates, my images/modules-3.3.1-r00-virtex5.tgz file has grown from 33.1 MB to 668.5MB. When I looked in the package, I saw that the kernel/drivers folder inside that package was nearly 1.5GB uncompressed!!
>>
>> My kenel defconfig was tuned so that I only used a bare minimum of kernel modules, and nearly all except for 2 groups (one related to filesystem and the other for networking) was built as a module. The rest were all built into the kernel.
>>
>> Isn't this a regression or an error?
>>
>> Also my build time has gone up from 40 minutes to 67 minutes, probably as a result of the increased number of kernel modules being built and shipped.
>
> Is there any way to prevent all the kernel modules from being built, when 99% of my kernel defconfig settings are set to 'y' and not to build any modules?

You'll have to confirm in your kernel build directory and .config
that you really don't have these modules enabled.

Since there's no kernel recipe that I've seen that builds all modules,
they just the modules specified in your .config are built and packaged
by the kernel classes.

But maybe I've misunderstood the question, or what you are seeing.

Bruce



>
> Elvis
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


