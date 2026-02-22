Return-Path: <michael.opdenacker@rootcommit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84813C636A1
	for <webhook@archiver.kernel.org>; Sun, 22 Feb 2026 16:07:29 +0000 (UTC)
Received: from bee.birch.relay.mailchannels.net (bee.birch.relay.mailchannels.net [23.83.209.14])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.16199.1771776445419028936
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Feb 2026 08:07:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@rootcommit.com header.s=hostingermail-a header.b=lDaOxV5V;
 spf=pass (domain: rootcommit.com, ip: 23.83.209.14, mailfrom: michael.opdenacker@rootcommit.com)
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 808B58C1DDD;
	Sun, 22 Feb 2026 16:07:24 +0000 (UTC)
Received: from fr-int-smtpout29.hostinger.io (100-104-88-134.trex-nlb.outbound.svc.cluster.local [100.104.88.134])
	(Authenticated sender: hostingeremail)
	by relay.mailchannels.net (Postfix) with ESMTPA id A08858C1CC4;
	Sun, 22 Feb 2026 16:07:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; d=mailchannels.net; s=arc-2022; cv=none;
	t=1771776444;
	b=VM7Jrg4Wyz2NftvI9aEEqagcEd0XnD8S+NNBCU6UiqRBBouQtigwAh3Q0eTE+TCFW+l/mQ
	BdREYf8cJnT9bjHFSjhwNXWgVEblm3pqEp8H8pBRkgqMz7zcLkX6S2I2GRALadV4JuZ3ho
	ApzAldPpa9qDyywXd0kQDXJZ5Vv71uNrA7rNAqvHcE487e1JLGKRC5NdEkcrL6JwGF6Nt5
	L5GmVlToKBCC8bpgWIQVKxEFdPwVEkV6mNNGpJa9zH3X+neL+0hSR/gRo75qMBvjU/M1a+
	2g3Ke7fSzgEI6s4+xq+8cO0d6RZc881AdLCC/EZlf52rb3JaBBib4KcNake+9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net;
	s=arc-2022; t=1771776444;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=xJHv7AD4cz+cKSJQ8AdwwSwHjUxme6C5YYTR8sJpGBo=;
	b=xKJXX5OpqUopOb/ByJ0C/eS1uQWg+ftL1/EAnbIO3DTkOe+xr6/Omhxp1GzUKjGL1TXmVq
	axcU4/wqzSpNdLKuH+THkyYKFwOHLx/xyk82xF6N4bCmWw4LvURSXjXW/cJ3nkDrn25U7S
	wkkrKmx5Z1rq75y4M+sGPauWvBfCR+ySzO5ncWO6UQ/DI6yhm7ToRhAVhTtJzYStl9IChA
	yiUal9Fmbw+bN90LG+0qlxY4T98ifRT8+nqwadUuNunvwOXj4XQXr2W+ba4fhpyL8PZJHp
	QoIm2hBhZ9bbHoBewWpLga/V8JT6Rpw1HBmRl+heP2g9cOWgWl31lSBcH8mHvw==
ARC-Authentication-Results: i=1;
	rspamd-6fbd58c58b-w7v97;
	auth=pass smtp.auth=hostingeremail
 smtp.mailfrom=michael.opdenacker@rootcommit.com
X-Sender-Id: hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MC-Relay: Neutral
X-MailChannels-SenderId: 
 hostingeremail|x-authuser|michael.opdenacker@rootcommit.com
X-MailChannels-Auth-Id: hostingeremail
X-Trouble-Inform: 5e9ad06a64848eac_1771776444340_2237163764
X-MC-Loop-Signature: 1771776444340:7292417
X-MC-Ingress-Time: 1771776444339
Received: from fr-int-smtpout29.hostinger.io (fr-int-smtpout29.hostinger.io
 [148.222.54.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
	by 100.104.88.134 (trex/7.1.3);
	Sun, 22 Feb 2026 16:07:24 +0000
Received: from [IPV6:2001:861:4450:d360:1f05:cd74:14f8:38e2] (unknown [IPv6:2001:861:4450:d360:1f05:cd74:14f8:38e2])
	(Authenticated sender: michael.opdenacker@rootcommit.com)
	by smtp.hostinger.com (smtp.hostinger.com) with ESMTPSA id 4fJpls3QdPz2xhd;
	Sun, 22 Feb 2026 16:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rootcommit.com;
	s=hostingermail-a; t=1771776441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xJHv7AD4cz+cKSJQ8AdwwSwHjUxme6C5YYTR8sJpGBo=;
	b=lDaOxV5VgJ3HVkFcZU3o4FicXsvs9/sxXbSKBNlg0scK77TJyC+wrmNHl2OdZddndlNQiG
	i0pIZFh6ezDNETM3l4vftEKX+LvtdXE9iDbNc+u+Udm/0muQKqahWK4dSh4QACmNa+Om74
	1Gv8gKuB/5YTAurIoxt5RnmrWBfiGRtJbHgI0LGuFj0R2HG5Rxz7GnkW8IZzhV3HG9NoP3
	LTdwtzm4KEwSXTm3AWv8BSVwkMJYigKhfXH+bh7DB/3Z97tB7cllC5CgDXB8XO5nFT9pbC
	uEandPRFanKytyCE2W/zyZDJqz4aCrZB0TQ2zIlmioGYXb9hNnEpwK6JEFI+BQ==
Message-ID: <7779efc5-639f-4fc1-8b6e-ff167471b728@rootcommit.com>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: michael.opdenacker@rootcommit.com
Subject: Re: FIT image verification not working on imx8mm
To: Vyacheslav Yurkov <uvv.mail@gmail.com>, yocto@lists.yoctoproject.org
References: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
 <2c7cc712-18e6-4b8d-825c-35dec015166f@gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@rootcommit.com>
In-Reply-To: <2c7cc712-18e6-4b8d-825c-35dec015166f@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Date: Sun, 22 Feb 2026 16:07:21 +0000 (UTC)
X-CM-Envelope: MS4xfM2lCyhywfV9k14VadR7SYfdt4Mj7q7yUmDGgCB2tgLXf77ZUsJ/VAHgeYBmHiLKc0irE8EbsenYLFZk/nTkz0VTBc1T2QXDaW7EIXR9wd4K0Zj8G2fA BwUdGJD/vy8qtAn7amuq/GUtU2ShQoxYe8FMx7k8RRqIeeC9iFYOogNv6T2V9+n6ezyEPsxXdxWCyCSj84chI9DjDknuOEEfMIJEj9IOan2Y2gS42SFwlmoU XiP1SzZKuQ9LJY3Tnuxtviz1WbxyGLsN0ieWiBznp14TKLQKey5Wfnh/sobBjkDUgKSO8KvMz9dotF3XkNqWzJLqntYjxm4JRKuFFZHrgcFIpx3hj+ZRiZFi ISa+/6jSuQHxR/3NMw3Z3cH9AkPsnr2rY6RQwtJq5+ZHICzPKCA=
X-CM-Analysis: v=2.4 cv=Gq4Q+V1C c=1 sm=1 tr=0 ts=699b29b9 a=IsQCu8oSZ90J5m/LVDRc1g==:617 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=d70CFdQeAAAA:8 a=QyUUBuSaPsddgEwRdVIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=NcxpMcIZDGm-g932nG_k:22
X-AuthUser: michael.opdenacker@rootcommit.com
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Feb 2026 16:07:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66267

Hi Slava,

Thanks a lot for having a look at this issue!

On 2/22/26 2:50 PM, Vyacheslav Yurkov wrote:
> Hi Michael,
> I believe the message is correct:
>
> > Verifying Hash Integrity ... sha256+ OK
>
> The "+" sign means the signature verification succeeded. The "-" would=20
> mean otherwise.
>
> I've just tried again to boot a fit image built without=20
> UBOOT_SIGN_ENABLE and got:
>
> > No 'signature' subnode found for '<NULL>' hash node in 'conf-my-dtb'=20
> config node

I don't think that's the case, because if I replace my "fitImage" file=20
by an unsigned one, it is still gladly accepted by U-Boot:

Verdin iMX8MM # load mmc 0:2 40000000 boot/fitImage
8426099 bytes read in 50 ms (160.7 MiB/s)
Verdin iMX8MM # bootm 40000000
## Loading kernel from FIT Image at 40000000 ...
 =C2=A0 =C2=A0Using 'conf-imx8mm-syk-ccu.dtb' configuration
 =C2=A0 =C2=A0Verifying Hash Integrity ... OK
 =C2=A0 =C2=A0Trying 'kernel-1' kernel subimage
 =C2=A0 =C2=A0 =C2=A0Description:=C2=A0 Linux kernel
 =C2=A0 =C2=A0 =C2=A0Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Kernel Image
 =C2=A0 =C2=A0 =C2=A0Compression:=C2=A0 gzip compressed
 =C2=A0 =C2=A0 =C2=A0Data Start:=C2=A0 =C2=A00x400000e8
 =C2=A0 =C2=A0 =C2=A0Data Size:=C2=A0 =C2=A0 8347434 Bytes =3D 8 MiB
 =C2=A0 =C2=A0 =C2=A0Architecture: AArch64
 =C2=A0 =C2=A0 =C2=A0OS:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Linux
 =C2=A0 =C2=A0 =C2=A0Load Address: 0x48200000
 =C2=A0 =C2=A0 =C2=A0Entry Point:=C2=A0 0x48200000
 =C2=A0 =C2=A0 =C2=A0Hash algo:=C2=A0 =C2=A0 sha256
 =C2=A0 =C2=A0 =C2=A0Hash value:=20
 =C2=A02dc1e494faaefa209b46b1b7aed7dbbbdb61de81b2770705e6cb9ef36c886435
 =C2=A0 =C2=A0Verifying Hash Integrity ... sha256+ OK
## Loading fdt from FIT Image at 40000000 ...
 =C2=A0 =C2=A0Using 'conf-imx8mm-syk-ccu.dtb' configuration
 =C2=A0 =C2=A0Verifying Hash Integrity ... OK
 =C2=A0 =C2=A0Trying 'fdt-imx8mm-syk-ccu.dtb' fdt subimage
 =C2=A0 =C2=A0 =C2=A0Description:=C2=A0 Flattened Device Tree blob
 =C2=A0 =C2=A0 =C2=A0Type:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Flat Device T=
ree
 =C2=A0 =C2=A0 =C2=A0Compression:=C2=A0 uncompressed
 =C2=A0 =C2=A0 =C2=A0Data Start:=C2=A0 =C2=A00x407f6128
 =C2=A0 =C2=A0 =C2=A0Data Size:=C2=A0 =C2=A0 76717 Bytes =3D 74.9 KiB
 =C2=A0 =C2=A0 =C2=A0Architecture: AArch64
 =C2=A0 =C2=A0 =C2=A0Load Address: 0x50200000
 =C2=A0 =C2=A0 =C2=A0Hash algo:=C2=A0 =C2=A0 sha256
 =C2=A0 =C2=A0 =C2=A0Hash value:=20
 =C2=A03378b4f94a993a9bba8c60c50dd58acb57df6833926be34bfbcedd789687a436
 =C2=A0 =C2=A0Verifying Hash Integrity ... sha256+ OK
 =C2=A0 =C2=A0Loading fdt from 0x407f6128 to 0x50200000
 =C2=A0 =C2=A0Booting using the fdt blob at 0x50200000
Working FDT set to 50200000
 =C2=A0 =C2=A0Uncompressing Kernel Image to 48200000
 =C2=A0 =C2=A0Loading Device Tree to 00000000bced4000, end 00000000bcee9b=
ac ... OK
Working FDT set to bced4000

Starting kernel ...

>
> Do you use the u-boot as SPL by any chance?

Yes, U-Boot SPL runs right before U-Boot.
Cheers
Michael.

--=20
Root Commit
Embedded Linux Training and Consulting
https://rootcommit.com


