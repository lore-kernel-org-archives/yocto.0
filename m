Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91976E01749
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2013 11:52:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id rA1IqmXr018332
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Nov 2013 11:52:48 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Fri, 1 Nov 2013 11:52:48 -0700
Message-ID: <5273F871.9090206@windriver.com>
Date: Fri, 1 Nov 2013 14:52:33 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Amit Tomer <amittomer25@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <CABHD4K9q7=RK_3B2HUPR9J0RoLZPBQ5-qwY3qjYeRLajs-gnhQ@mail.gmail.com>
In-Reply-To: <CABHD4K9q7=RK_3B2HUPR9J0RoLZPBQ5-qwY3qjYeRLajs-gnhQ@mail.gmail.com>
Subject: Re: How to Set up Perf tool
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
X-List-Received-Date: Fri, 01 Nov 2013 18:52:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-11-01 12:40 PM, Amit Tomer wrote:
> We have a requirement here to set up the perf tool through our Yocto
> frame work.
>
> As Perf source comes with linux kernel under tools/perf ,so it should be
> compiled with kernel recipe itself.
>
> But after bitbake of our kernel recipe,we couldn't find any binary
> related to perf.
> we made sure that below variable should be set in kernel config file
>
> CONFIG_HAVE_PERF_EVENTS=y
> CONFIG_PERF_EVENTS=y
>
> Do we need to make any change to our kernel recipe file as well??
>
> Can anyone let us know how we should set Perf tool.

It depends on the version of the the project and the kernel you are
using, but there's a separate perf recipe, and has been for quite a
while.

That perf builds out of the staged kernel source, which is put
in place as part of the kernel build.

Try an old fashioned: bitbake perf

And see what you get. If you want it to be built and installed into
your rootfs, you'll need to arrange to get it into your image's
installed package list.

Bruce


>
> Thanks
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


