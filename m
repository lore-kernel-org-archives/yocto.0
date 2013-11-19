Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFFE3E002AC
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 00:56:36 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dP19Z2kJ1z3hj1C;
	Tue, 19 Nov 2013 09:56:34 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dP19Z2WC5zbbgf;
	Tue, 19 Nov 2013 09:56:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id l9fLD_A-SxDU; Tue, 19 Nov 2013 09:56:33 +0100 (CET)
X-Auth-Info: 2goKtUOufnZKNUko19OLZVjxeMZybP+1zOVTUHP2OOY=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 19 Nov 2013 09:56:32 +0100 (CET)
Message-ID: <528B27C0.5060901@denx.de>
Date: Tue, 19 Nov 2013 09:56:32 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Jack lemon <lemonjack05@gmail.com>, yocto@yoctoproject.org
References: <loom.20131116T135512-692@post.gmane.org>
In-Reply-To: <loom.20131116T135512-692@post.gmane.org>
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
X-List-Received-Date: Tue, 19 Nov 2013 08:56:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 16/11/2013 16:24, Jack lemon wrote:
> Hi everybody,
> 
> I worked with P1022DS-PB and then designed my custom board according to its
> documents. For sd card I adjust u-boot to 115200 baud rate and compile it
> with ELDK independently. However in Nor-flash we haven't u-boot.bin
> independently. For Nor-Flash I need to adjust baud rate in .ext2.gz.u-boot
> image, because for Nor-Flash only kernel,rootfs,dtb files are needed.
> How can I modify u-boot in fsl-image-minimal-p1022ds.ext2.gz.u-boot for
> adjusting baud rate to 115200?

Is it not enough to add SERIAL_CONSOLE = "115200 ttyS0" (or which serial
you use as console) to your machine conf ?

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

