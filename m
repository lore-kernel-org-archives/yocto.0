Return-Path: <psanchez@fosstel.com>
Received: from a2s40.a2hosting.com (a2s40.a2hosting.com [216.119.135.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24F3E0147F
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 06:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fosstel.com;
	s=default; 
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Subject:CC:To:MIME-Version:From:Date:Message-ID;
	bh=ya+hYjTwiPRLj8YQgLopIM9tR+4zPK5e1QuvfM5TvIc=; 
	b=SYjF6v5WeRwN3LULZFMiyBLuTsk3Yxq4FwcRgrKbIY03pxnPCuILU6hIDtHeOti9FtBF9gAI7qy6tq0cjuS5t/TvgGlrEIY5g98T9bFL7jMJjPxdAqzMS3eiJLkRLobe;
Received: from [128.224.252.2] (port=48829 helo=[128.224.140.91])
	by a2s40.a2hosting.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <psanchez@fosstel.com>)
	id 1T8t5X-000qLa-RP; Tue, 04 Sep 2012 09:22:43 -0400
Message-ID: <504600A3.4050200@fosstel.com>
Date: Tue, 04 Sep 2012 09:22:43 -0400
From: "Pedro I. Sanchez" <psanchez@fosstel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Markus Hubig <mhubig@imko.de>
References: <5040FA23.9070103@fosstel.com>
	<CAGws1Ts9pfmCiLb1u-OXvv=MX6g-y_nArvL8+Ng_uX3XaYEr1w@mail.gmail.com>
In-Reply-To: <CAGws1Ts9pfmCiLb1u-OXvv=MX6g-y_nArvL8+Ng_uX3XaYEr1w@mail.gmail.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2s40.a2hosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fosstel.com
Cc: yocto@yoctoproject.org
Subject: Re: U-Boot and missing tftp command
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
X-List-Received-Date: Tue, 04 Sep 2012 13:22:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12-09-01 04:54 PM, Markus Hubig wrote:
> The 2011.06 version of u-boot as it is used from poky denzil
> does not support networking at all for the omap3_beagle.
>
> See here line 157:
>
> http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/omap3_beagle.h;h=9fd80ed50b7135d1365799f76333f988f0bce554;hb=b1af6f532e0d348b153d5c148369229d24af361a
>
> But in version 2012.07 of u-boot it seems to be supported. See here, line 167:
>
> http://git.denx.de/?p=u-boot.git;a=blob;f=include/configs/omap3_beagle.h;h=657780edcffcf74bc6960fdb48bd7fd92fbf1f7f;hb=190649fb4309d1bc0fe7732fd0f951cb6440f935
>
> So you have to use a newer version of u-boot.
>
> Cheers, Markus
>
> On Fri, Aug 31, 2012 at 7:53 PM, Pedro I. Sanchez <psanchez@fosstel.com> wrote:
>> Hello,
>>
>> I just successfully built a Yocto image for a beagleboard-xm card and
>> noticed that the U-Boot image is missing support for the tftp command.
>>
>> How do I go about recompiling U-Boot to include this command?
>>
>> Thanks,
>>
>> --
>> Pedro
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
Thank you for the update.

I could take the new version and manually do the build for the board. 
But I wonder, what would be the Yocto way to request this version of 
U-Boot in my build? I mean, what exactly would I need to include in, 
say, my local.conf file, to get the new version automatically downloaded 
and compiled?

Thanks,


-- 
Pedro

