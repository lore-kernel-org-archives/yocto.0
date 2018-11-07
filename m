Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A969E00C19; Tue,  6 Nov 2018 23:34:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E89BEE00C10
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 23:34:00 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 42qdT22q3nz1qvnL;
	Wed,  7 Nov 2018 08:33:58 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 42qdT22QWXz1qr2J;
	Wed,  7 Nov 2018 08:33:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id YyYTJ6JtNc-5; Wed,  7 Nov 2018 08:33:57 +0100 (CET)
X-Auth-Info: 4xoFLZFNWtGxG8uI/gyrY4w3raBjNAM8mneO9lo7/gg=
Received: from [192.168.1.106] (87.97.98.33.pool.invitel.hu [87.97.98.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Wed,  7 Nov 2018 08:33:57 +0100 (CET)
To: Kevin Hao <kexin.hao@windriver.com>,
	Robert Berger <yocto.user.mailinglist@gmail.com>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
	<20181101021854.GT24227@pek-khao-d2>
	<13692616-30d3-1bae-71b7-1ed2373a9a61@denx.de>
	<20181102085916.GA31329@pek-khao-d2>
	<CAMKF1sov=e1z8wH0ckXozz3RK1Uz-7Ja+uzguqTTCxBPHiipyw@mail.gmail.com>
	<de1a10ff-5d08-191d-3452-e548929affee@gmail.com>
	<20181105052558.GB22875@pek-khao-d2>
	<27e9ae41-5873-a476-0293-e929825e81bc@denx.de>
From: Heiko Schocher <hs@denx.de>
Message-ID: <e4c77848-0c65-2660-2c73-65a843a60310@denx.de>
Date: Wed, 7 Nov 2018 08:33:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <27e9ae41-5873-a476-0293-e929825e81bc@denx.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
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
X-List-Received-Date: Wed, 07 Nov 2018 07:34:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello Kevin, Robert,

Am 06.11.2018 um 09:10 schrieb Heiko Schocher:
> Hello Kevin, Robert,
> 
> Am 05.11.2018 um 06:26 schrieb Kevin Hao:
>> On Sun, Nov 04, 2018 at 12:10:00PM +0200, Robert Berger wrote:
>>> Hi,
>>>
>>> On 02.11.18 16:27, Khem Raj wrote:
>>>>
>>>> omap serial is obsolete why does linux-yocto keeps using it.
>>>> seondly, machine config should enable both consoles ttyO0 and ttyS0 if
>>>> you know that at least one kernel is using ttyO0
>>>>
>>> How about picking whatever works for you in the kernel conf and in machine
>>> conf?
>>>
>>> SERIAL_CONSOLES = "115200;ttyS0 115200;ttyO0"
>>> SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
>>>
>>> Like this on the first boot either ttyO0 or ttyS0 should be picked
>>> automatically.
>>
>> Yes, this is doable. Would you mind send a patch?
> 
> Sorry for answering so late... good hint, I missed SERIAL_CONSOLES_CHECK
> 
> I try this change and report, give me some time...


diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf 
b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
index e911e75004..def3a2ae06 100644
--- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
+++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
@@ -20,7 +20,8 @@ WKS_FILE ?= "beaglebone-yocto.wks"
  IMAGE_INSTALL_append = " kernel-devicetree kernel-image-zimage"
  do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot"

-SERIAL_CONSOLES = "115200;ttyO0"
+SERIAL_CONSOLES = "115200;ttyS0 115200;ttyO0"
+SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"

  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
  PREFERRED_VERSION_linux-yocto ?= "4.18%"

and on my beagleboneblack linux kernels with 8250 serial driver enabled
(console ttyS0) and kernel omap_serial driver enabled (console ttyO0)
are booting.

Unfortunately it took me some time, until I realized that my settings
in auto.conf do not work, because in beaglebone-yocto.conf

SERIAL_CONSOLES = "115200;ttyO0"

is set ... May a

SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0"

is friendlier ?

Should I send a formal patch?

bye,
Heiko
-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

