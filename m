Return-Path: <Qi.Chen@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 067EDE00863; Sun, 30 Nov 2014 00:06:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DC2E007C1
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 00:06:29 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id sAU86SkW004560
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 30 Nov 2014 00:06:28 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Sun, 30 Nov 2014 00:06:28 -0800
Message-ID: <547AD016.4040204@windriver.com>
Date: Sun, 30 Nov 2014 16:06:46 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <98D134EE-9E05-4289-BA83-F0369DA15620@keylevel.com>
In-Reply-To: <98D134EE-9E05-4289-BA83-F0369DA15620@keylevel.com>
X-Originating-IP: [128.224.162.226]
Subject: Re: Adding firmware to initramfs
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
X-List-Received-Date: Sun, 30 Nov 2014 08:06:33 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Create a bbappend file for core-image-minimal-initramfs, and add the 
following line to the bbappend file.

PACKAGE_INSTALL += "linux-firmware"

Best Regards,
Chen Qi


On 11/28/2014 08:37 PM, Chris Tapp wrote:
> I'm network booting a system using iPXE. The process uses a core-image-minimal-initramfs image to select the final rootfs that gets loaded.
>
> This generally works fine, but I need to be able to install linux-firmware in the initramfs image (specifically for the NIC that gets used to load the final rootfs).
>
> How do I get linux-firmware to install in core-image-minimal-initramfs? I've tried adding the following into local.conf, but with no luck:
>
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "linux-firmware"
> IMAGE_INSTALL_append = " linux-firmware"
> CORE_IMAGE_EXTRA_INSTALL += " linux-firmware"
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>

