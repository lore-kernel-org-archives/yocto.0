Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 062B4E01342
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 05:38:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r2ICcDRJ003322
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 18 Mar 2013 05:38:13 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 18 Mar 2013 05:38:12 -0700
Message-ID: <51470AA5.80400@windriver.com>
Date: Mon, 18 Mar 2013 08:37:57 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Florin Cristian Dan <dan.florincristian@gmail.com>
References: <CABzOdpTr4xsWPZtYxwnXOq3XpezVMHULu5Vx9qgxOtKbHt-Gxg@mail.gmail.com>
In-Reply-To: <CABzOdpTr4xsWPZtYxwnXOq3XpezVMHULu5Vx9qgxOtKbHt-Gxg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Timeout elimination
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
X-List-Received-Date: Mon, 18 Mar 2013 12:38:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-03-18 04:34 AM, Florin Cristian Dan wrote:
> Hello, i've managed to burn the BSP image (emenlow) on a usb stick, on
> booted on my target machin, apparently it works fine, but i would like
> to know how can i eliminate that 10 day timeout, i've tried to enter the

To answer this part of the question. Simply rebuild the kernel yourself
and the timeout will be removed. All of the configuration and layers
used to build the kernel you downloaded are available with the meta-intel
releases, minus the layer that adds the timeout configuration.

Cheers,

Bruce

> address that is given in the splash http://yoctoproject.org/tlk but is
> not working ("page not found"), this is one question, and another
> question is: currently i'm booting the image from a USB stick, but i
> want to make it defintive and run it from the targets CF memory, the
> principple of writing the image to the CF memory is the same as writing
> the image for the USB stick?
> Thank you very much
> Best regards
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


