Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F0BEE00C7F; Mon, 10 Dec 2018 03:01:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.18.0.9 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6FD4E00C4D
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2018 03:01:07 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 43D0Vm6Lt4z1qvwY;
	Mon, 10 Dec 2018 12:01:04 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 43D0Vm4h3Yz1qvRj;
	Mon, 10 Dec 2018 12:01:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id wEIDTG9qqkQr; Mon, 10 Dec 2018 12:01:01 +0100 (CET)
X-Auth-Info: 1a5cFVNUY7xJYdL9PrTme8U0SgH+Gw4oZF6tf2E/fNw=
Received: from [192.168.1.106] (87.97.7.57.pool.invitel.hu [87.97.7.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 10 Dec 2018 12:01:01 +0100 (CET)
To: Yocto Project <yocto@yoctoproject.org>
References: <b2b6022a-3906-085a-07fd-ae11dc250d35@denx.de>
From: Heiko Schocher <hs@denx.de>
Message-ID: <ee7a87cc-3aad-b7af-d966-4c8512961081@denx.de>
Date: Mon, 10 Dec 2018 12:01:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <b2b6022a-3906-085a-07fd-ae11dc250d35@denx.de>
Cc: Robert Berger <yocto.user.mailinglist@gmail.com>
Subject: Re: [PATCH] meta-yocto-bsp: beaglebone-yocto.conf: support 8250 serial driver
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hs@denx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Dec 2018 11:01:10 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hello all,

Am 13.11.2018 um 08:06 schrieb Heiko Schocher:
> it is possible to use the beagleboneblack with the 8250 serial
> driver or with the deprecated omap serial driver.
> 
> Unfortunately serial console get different names (ttyS0 with
> 8250 driver and ttyO0 with omap driver)
> 
> So set SERIAL_CONSOLES to
> SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0"
> 
> (intentionally with "?=" so it is overwriteable)
> and activate
> 
> SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
> 
> with that on the first boot the correct value is picked up
> automatically.
> 
> Signed-off-by: Heiko Schocher <hs@denx.de>
> ---
> 
>   meta-yocto-bsp/conf/machine/beaglebone-yocto.conf | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)

gentle ping. Any issues with this patch?

Thanks!

bye,
Heiko
-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

