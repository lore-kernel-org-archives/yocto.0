Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 460D6E00DA9; Thu, 11 Jan 2018 03:59:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A9D2E008FB
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 03:59:44 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3zHPZ725cfz1qvnW;
	Thu, 11 Jan 2018 12:59:43 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3zHPZ71mCyz1qsvB;
	Thu, 11 Jan 2018 12:59:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id aNztcLbV-C5n; Thu, 11 Jan 2018 12:59:42 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu, 11 Jan 2018 12:59:42 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 0E4494540448;
	Thu, 11 Jan 2018 12:59:42 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id LXWPDVxks6pN; Thu, 11 Jan 2018 12:59:39 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id B1D4045403C0;
	Thu, 11 Jan 2018 12:59:39 +0100 (CET)
To: Mircea Gliga <mircea.gliga@vitheia.com>,
	Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
References: <d0f37752-e921-9ed5-47cb-dadd737b5b0e@vitheia.com>
	<CAGAf8LxNUgWsCSTT6_oH+WaysN6nxvTR5Q=5qLhFCuVYgKfE=w@mail.gmail.com>
	<aa4ae0f3-f8b8-2ee9-29b4-5d4ab7cd3feb@denx.de>
	<1ac69a4c-188b-875d-8000-944cc6e04510@vitheia.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <a6cc2b39-0001-4922-68d9-bcd0e1406dd9@denx.de>
Date: Thu, 11 Jan 2018 12:59:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1ac69a4c-188b-875d-8000-944cc6e04510@vitheia.com>
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
X-List-Received-Date: Thu, 11 Jan 2018 11:59:45 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit

Hi Mircea,

On 11/01/2018 12:54, Mircea Gliga wrote:
> Hi guys
> 
>>libgcc.a is "out-f-the-box" in rocko 25MB, but why should it be
> integrated in rootfs ?
> 
> I asked myself the same question. Not clear for me yet how and why it
> gets in the rootfs.

It is not - I have not in my -rocko projects.

I guess you have some setup in your local.conf, like you added
"dev-pkgs" or "staticdev-pkgs" somewhere.

Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

