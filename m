Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web10.1041.1580235143988589344
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jan 2020 10:12:24 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: mark.asselstine@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 00SIBRLc024893
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 28 Jan 2020 10:11:37 -0800
Received: from yow-masselst-lx1.localnet (128.224.22.102) by
 ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
 14.3.468.0; Tue, 28 Jan 2020 10:11:16 -0800
From: "Mark Asselstine" <mark.asselstine@windriver.com>
To: <yocto@lists.yoctoproject.org>
CC: Sheraz Ali <sheraz.ali@iwavesystems.com>, <yocto@yoctoproject.org>
Subject: Re: [yocto] Tools to debug kernel hang in yocto
Date: Tue, 28 Jan 2020 13:11:15 -0500
Message-ID: <316054918.XuX68eSyCx@yow-masselst-lx1>
Organization: Wind River
In-Reply-To: <3cf7a10c-4a3e-439e-8319-768d5e5523fb@email.android.com>
References: <3cf7a10c-4a3e-439e-8319-768d5e5523fb@email.android.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, January 28, 2020 12:58:35 P.M. EST Sheraz Ali wrote:
> Hi,
>      Can anyone suggest me dumping tools that can be used to figure the
> kernel hang. I have attached the log of kernel hang for your reference.

Is the kernel actually hung? ie. does it still respond to magic-sysrq, like 
'alt+sysrq l' or 'alt+sysrq b'. It makes things a lot easier if the kernel is 
still alive so best to determine if it is "appears to be hung" vs "is hung".

Mark Asselstine


> 
> 
> Thanks and Regards
> Sheraz Ali Shah




