Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E746E00CED
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 07:55:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s3BEt70v013222
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 11 Apr 2014 07:55:07 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 11 Apr 2014 07:55:07 -0700
Message-ID: <53480244.5060004@windriver.com>
Date: Fri, 11 Apr 2014 10:55:00 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Darcy Watkins <darcy.watkins@inmotiontechnology.com>, yocto
	<yocto@yoctoproject.org>
References: <1397227936.27169.19.camel@kihei.inmotion.gotdns.com>
In-Reply-To: <1397227936.27169.19.camel@kihei.inmotion.gotdns.com>
Subject: Re: Yocto 1.6 Kernel Choices
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
X-List-Received-Date: Fri, 11 Apr 2014 14:55:12 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-11 10:52 AM, Darcy Watkins wrote:
> Hi,
>
> The current yocto 1.5 has kernel recipes for kernel 3.4, 3.8 and 3.10
> plus various BSP layers add their own variants (e.g. 3.0 for i.MX6 from
> Freescale).  I saw notes mentioning kernel 3.14 for the next release.
>
> When I downloaded the M4 tarball for poky, I saw the recipes for 3.4,
> 3.8 and 3.10 but didn't notice any others added.
>
> What are plans for supported kernels in yocto 1.6?  In particular the
> ones known as linux-yocto?

3.4, 3.10 and 3.14.

3.14 has now been merged and made the default in master, and hence
the 1.6 release.

Bruce

>
> Thanks in advance.
>
> Regards,
>
> Darcy
>


