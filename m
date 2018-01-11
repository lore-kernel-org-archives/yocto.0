Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C156E00E16; Thu, 11 Jan 2018 03:58:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 402 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Jan 2018 03:58:20 PST
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F219E00DA9
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 03:58:20 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zHPNn29Crz1qskT;
	Thu, 11 Jan 2018 12:51:37 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zHPNn1tkjz1qsvC;
	Thu, 11 Jan 2018 12:51:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id CLQEntrPmKse; Thu, 11 Jan 2018 12:51:36 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu, 11 Jan 2018 12:51:36 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 3142C4540448;
	Thu, 11 Jan 2018 12:51:36 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XnrCKxb9MMG9; Thu, 11 Jan 2018 12:51:34 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id BABDB45403C0;
	Thu, 11 Jan 2018 12:51:33 +0100 (CET)
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Mircea Gliga <mircea.gliga@vitheia.com>
References: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
	<CAGAf8LxNUgWsCSTT6_oH+WaysN6nxvTR5Q=5qLhFCuVYgKfE=w@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <aa4ae0f3-f8b8-2ee9-29b4-5d4ab7cd3feb@denx.de>
Date: Thu, 11 Jan 2018 12:51:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LxNUgWsCSTT6_oH+WaysN6nxvTR5Q=5qLhFCuVYgKfE=w@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: libgcc.a size
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
X-List-Received-Date: Thu, 11 Jan 2018 11:58:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit

Hi Zoran, Mircea,

On 11/01/2018 11:16, Zoran Stojsavljevic wrote:
>> What stands out is a big bump in size for /usr/lib/arm-poky-linux-gnueabi/7.2.0/libgcc.a from 5 MB in krogoth(gcc 5.3.0) to 25 MB in rocko.
> 
> Static library, probably compiled with -g (debug info included). You
> need to recompile libgcc excluding -g option... My best guess.
> 

libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be
integrated in rootfs ? The libc-2.26.so is still 1.2MB (ARM) and
footprint is comparable to the past.

Stefano


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

