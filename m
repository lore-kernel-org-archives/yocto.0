Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2BF4E00519
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 02:10:25 -0800 (PST)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dP2pl6L7Tz4KK36;
	Tue, 19 Nov 2013 11:10:23 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dP2pl69QZzbbfG;
	Tue, 19 Nov 2013 11:10:23 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id jioJYTizuAuF; Tue, 19 Nov 2013 11:10:22 +0100 (CET)
X-Auth-Info: VFYwAyUcqjanl7NddWT/YXC2C4k8CiVQ4z1rJsUnpbE=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 19 Nov 2013 11:10:22 +0100 (CET)
Message-ID: <528B390E.4000401@denx.de>
Date: Tue, 19 Nov 2013 11:10:22 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Jack Lemon <lemonjack05@gmail.com>, yocto@yoctoproject.org
References: <loom.20131116T135512-692@post.gmane.org>	<528B27C0.5060901@denx.de>
	<loom.20131119T105032-516@post.gmane.org>
In-Reply-To: <loom.20131119T105032-516@post.gmane.org>
X-Enigmail-Version: 1.5.2
Subject: Re: How to modify u-boot in Root File System rootfs.ext2.gz.u-boot ?
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
X-List-Received-Date: Tue, 19 Nov 2013 10:10:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 19/11/2013 10:59, Jack Lemon wrote:
> Stefano Babic <sbabic@...> writes:
> 
> 
>> Is it not enough to add SERIAL_CONSOLE = "115200 ttyS0" (or which serial
>> you use as console) to your machine conf ?
>>
>> Best regards,
>> Stefano Babic
>>
> 
> Thank you Stefano for your reply.
> Does it not any need to edit u-boot source code? just adding SERIAL_CONSOLE
> = "115200 ttyS0" to local.conf?

You asked to change your rootfs (initrd, I presume)
fsl-image-minimal-p1022ds.ext2.gz.u-boot, and setting SERIAL_CONSOLE
adjusts the parameters for inittab.

If you want to change u-boot as well (but this is outside
fsl-image-minimal-*) and you do not want to compile it outside Yocto,
you have to put the patch you already have in your bsp directory and
adjust your u-boot receipe.

Best regards
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

