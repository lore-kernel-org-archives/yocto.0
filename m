Return-Path: <hs@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF49E00A0C; Wed, 31 Oct 2018 06:33:04 -0700 (PDT)
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
X-Greylist: delayed 599 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Oct 2018 06:33:01 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25486E00950
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 06:33:01 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 42lTY16hhdz1r34k;
	Wed, 31 Oct 2018 14:23:01 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 42lTY168Nzz1qr28;
	Wed, 31 Oct 2018 14:23:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id ta2fZ6VFKZ-m; Wed, 31 Oct 2018 14:23:01 +0100 (CET)
X-Auth-Info: C5+hzED407FlFGeSOyQ6nCyN2g8ivFHI3mSnlj7Czec=
Received: from [192.168.1.106] (87.97.98.170.pool.invitel.hu [87.97.98.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Wed, 31 Oct 2018 14:23:01 +0100 (CET)
To: yocto@yoctoproject.org
From: Heiko Schocher <hs@denx.de>
Message-ID: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
Date: Wed, 31 Oct 2018 14:23:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
Subject: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
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
X-List-Received-Date: Wed, 31 Oct 2018 13:33:04 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello all,

just builded core-image-minimal with current head of thud branch for
the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 4.14.78",
installed the resulting sd card image and boot it, and get:

INIT: Id "O0" respawning too fast: disabled for
5 minutes

Reason seems to be:

meta-yocto-bsp/conf/machine/beaglebone-yocto.conf

SERIAL_CONSOLES = "115200;ttyO0"

shouldn't this be

SERIAL_CONSOLES = "115200;ttyS0"

With this fix, sd card image boot fine ... may I oversee seomthing
obvious ?

bye,
Heiko
-- 
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-52   Fax: +49-8142-66989-80   Email: hs@denx.de

