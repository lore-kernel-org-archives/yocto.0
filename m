Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90619E011AD
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 07:55:04 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q7GEt3wl026551
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Aug 2012 07:55:03 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 16 Aug 2012 07:55:03 -0700
Message-ID: <502D09C2.6050007@windriver.com>
Date: Thu, 16 Aug 2012 10:54:58 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A5DAAD@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A5DAAD@ORSMSX101.amr.corp.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Terminology Question for Kernels
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
X-List-Received-Date: Thu, 16 Aug 2012 14:55:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-15 04:29 PM, Rifenbark, Scott M wrote:
> Hi,
>
> Need some opinions here.... What is the best way to generically refer to
> one of our kernels in the source repository area. Right now, they are
> all grouped under the heading "Yocto Linux Kernel." They are
> individually named linux-yocto-xxxx. In the kernel manual, we refer to
> them collectively as a "Yocto Project Kernel." I would like to have a
> single way to reference these kernels we deliver.

I don't have a strong opinion. So either Yocto Linux Kernel or Yocto
Project Kernel seem fine to me, we could be more precise, but I'd rather
keep it simple.

Cheers,

Bruce

>
> Thanks,
>
> Scott
>
> *Scott Rifenbark***
>
> Intel Corporation
>
> Yocto Project Documentation
>
> 503.712.2702
>
> 503.341.0418 (cell)
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


