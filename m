Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4A18E00407
	for <yocto@yoctoproject.org>; Sun, 15 Sep 2013 13:43:42 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 15 Sep 2013 13:43:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,910,1371106800"; d="scan'208";a="295150277"
Received: from unknown (HELO [10.255.14.132]) ([10.255.14.132])
	by AZSMGA002.ch.intel.com with ESMTP; 15 Sep 2013 13:43:41 -0700
Message-ID: <52361BFC.4000506@linux.intel.com>
Date: Sun, 15 Sep 2013 13:43:40 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130805 Thunderbird/17.0.8
MIME-Version: 1.0
To: Amit Kumar <Amit.Kumar@lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52278@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52278@BLRINMSMBX01.bglrodc.lntinfotech.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build all linux utility's without busybox
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
X-List-Received-Date: Sun, 15 Sep 2013 20:43:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/15/2013 08:14 AM, Amit Kumar wrote:
> Hi,
>          I wanted to build the poky image "core-image-minimal" without busybox support. Is that possible?
> If it's possible how can we do it. I wants to build the all busybox supported utility without busybox. I wants to build them separately.
> I don't want the busybox, if anyone has an idea please let me know how can we do it.
>
You can start with core-image-basic or core-image-lsb.  Busybox might 
still be included in the those but a much larger percentage of "core" 
command are available.

It's a better starting point then you can see what's remaining with 
links to the busybox

Sau!

>
>
> Thanks & Regards
> Amit K
>
> The contents of this e-mail and any attachment(s) may contain confidential or privileged information for the intended recipient(s). Unintended recipients are prohibited from taking action on the basis of information in this e-mail and  using or disseminating the information,  and must notify the sender and delete it from their system. L&T Infotech will not accept responsibility or liability for the accuracy or completeness of, or the presence of any virus or disabling code in this e-mail"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

