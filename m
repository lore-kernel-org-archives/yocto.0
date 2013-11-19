Return-Path: <sbabic@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82185E00510
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 04:10:23 -0800 (PST)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3dP5T928J0z3hj8q;
	Tue, 19 Nov 2013 13:10:21 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3dP5T91wqLzbbfr;
	Tue, 19 Nov 2013 13:10:21 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id ZYznhwoy_DTU; Tue, 19 Nov 2013 13:10:17 +0100 (CET)
X-Auth-Info: r/9IY8CdzaiimlAR+1NhY3STkHuE5VIfgTA8WwztDwI=
Received: from [192.168.2.247] (88-149-182-160.v4.ngi.it [88.149.182.160])
	by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Tue, 19 Nov 2013 13:10:17 +0100 (CET)
Message-ID: <528B5529.5090807@denx.de>
Date: Tue, 19 Nov 2013 13:10:17 +0100
From: Stefano Babic <sbabic@denx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: Jack <lemonjack05@gmail.com>, yocto@yoctoproject.org
References: <loom.20131116T135512-692@post.gmane.org>	<528B27C0.5060901@denx.de>	<loom.20131119T105032-516@post.gmane.org>	<528B390E.4000401@denx.de>
	<loom.20131119T121506-919@post.gmane.org>
In-Reply-To: <loom.20131119T121506-919@post.gmane.org>
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
X-List-Received-Date: Tue, 19 Nov 2013 12:10:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Jack,

On 19/11/2013 12:25, Jack wrote:

> For Nor-Flash we have only three files(kernel,rootfs,dtb). Where is u-boot?
> I think it is inside the fsl-image-minimal-p1022ds.ext2.gz.u-boot rootfs
> file. Is it true? 

I do not think so, but you are the best to answer this question: unzip
the file and check inside.

However, even if it contains a u-boot.bin or whatever is your u-boot
file, you have to extract it to write the bootloader at the right address.

In most cases, you will see a separate image for u-boot in
tmp/deploy/images diurectory.

> 
> So, for modifying u-boot to adujst serial boaudrate,

No. To modify the serial console under linux.

> I understand that I can
> add SERIAL_CONSOLE = "115200 ttyS0" to my local.conf according to your reply

See Robert reply. SERIAL_CONSOLE is deprecated, uses SERIAL_CONSOLES
instead.

> and it doesnt need to modify u-boot source code.
> 
> Am I in the right place?

Mmmhh..there is something missing. Usually you have a separate file for
u-boot. Of course, if u-boot is part of the filesystem, you cannot use
for a first installation because u-boot must be copied at a specific
address.

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

