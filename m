Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 930ADE006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:55:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q5DKtwDp009989
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Jun 2012 13:55:58 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 13 Jun 2012 13:55:57 -0700
Message-ID: <4FD8FE53.1030805@windriver.com>
Date: Wed, 13 Jun 2012 16:55:47 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
	<4FD8FC7A.6000209@linux.intel.com>
	<66686EEDFFCF448E9EA9D435AD58344B@intel.com>
In-Reply-To: <66686EEDFFCF448E9EA9D435AD58344B@intel.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: More useful generic-x86 machine
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
X-List-Received-Date: Wed, 13 Jun 2012 20:55:59 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 12-06-13 04:52 PM, Ross Burton wrote:
> On Wednesday, 13 June 2012 at 21:47, Darren Hart wrote:
>> Seems reasonable to me. We should probably have 32b and 64b of this
>> machine as well.
>
> And x32… :)

 From the kernel point of view, these are just configuration extensions
to a base, which is where this discussion started (the kernel, I'm
excluding userspace on purpose). So this should be one machine with
these as overlays, not three different machines.

Cheers,

Bruce

>
> Ross
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


