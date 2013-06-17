Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D73CE013B8
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 22:04:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5H54rLa007652
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 16 Jun 2013 22:04:53 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Sun, 16 Jun 2013 22:04:53 -0700
Message-ID: <51BE98F8.3040903@windriver.com>
Date: Mon, 17 Jun 2013 13:04:56 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <loom.20130616T115549-619@post.gmane.org>
In-Reply-To: <loom.20130616T115549-619@post.gmane.org>
X-Originating-IP: [128.224.162.233]
Subject: Re: Modify udev
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
X-List-Received-Date: Mon, 17 Jun 2013 05:04:59 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 06/16/2013 07:45 PM, Jack wrote:
> Hi,
>
> In my imageو starting udev take a long time about 6 seconds whereas the time
If the performance is important, what about using udev-cache to speed up 
the boot process?

Cheers,
Chen Qi
> is so important for me. Therefore, I decide to remove udev from
> task-core-boot but I get a problem in mounting SATA drive. So, I add udev to
> task-core-boot. In addition to mount SATA drive by udev some other packages
> like libusb, pciutils,... will install. I want only to mount SATA drive by
> udev. How can I modify udev that it only install hdd drive ?
>
> Thanks.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


