Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C5AEE0073D; Thu,  8 May 2014 08:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B65E7E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 08:17:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s48FHOGh016634
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 8 May 2014 08:17:24 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 8 May 2014 08:17:23 -0700
Message-ID: <536BA000.9030608@windriver.com>
Date: Thu, 8 May 2014 11:17:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Andreas Galauner <andreas@galauner.de>, <yocto@yoctoproject.org>
References: <536A5249.9030907@galauner.de> <536A8B5E.2080409@windriver.com>
	<536B8B40.8060008@galauner.de>
In-Reply-To: <536B8B40.8060008@galauner.de>
Subject: Re: linux-yocto custom device tree in overlay
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
X-List-Received-Date: Thu, 08 May 2014 15:17:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-05-08 09:48 AM, Andreas Galauner wrote:
> On 07/05/14 21:37, Bruce Ashfield wrote:
>> So you can either patch it into the kernel, or do a bbappend with
>> that copies it into the source tree
>> (linux/arch/arm/boot/dts/mydevicetree.dts).
>
> Thx! That worked fine.

Glad to hear!

Bruce

>
> For reference, this is what I added:
>> do_install_prepend() {
>> 	cp ${WORKDIR}/*.dts ${WORKDIR}/linux/arch/${ARCH}/boot/dts/
>> }
>
> Cheers,
> - Andy
>


