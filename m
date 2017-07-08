Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4DE6E00B67; Sat,  8 Jul 2017 10:43:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A7E7E0070F
	for <yocto@yoctoproject.org>; Sat,  8 Jul 2017 10:43:31 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3x4f346QCFz1qrdd;
	Sat,  8 Jul 2017 19:43:28 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3x4f345B5Jz3jgY6;
	Sat,  8 Jul 2017 19:43:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id 2UnG-9jhjg95; Sat,  8 Jul 2017 19:43:27 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Sat,  8 Jul 2017 19:43:27 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id C40F34540653;
	Sat,  8 Jul 2017 19:43:26 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 9H6jkIUnZDwM; Sat,  8 Jul 2017 19:43:22 +0200 (CEST)
Received: from [192.168.178.89] (stefano-MacBookPro.fritz.box [192.168.178.89])
	by babic.homelinux.org (Postfix) with ESMTPS id 979D645402A7;
	Sat,  8 Jul 2017 19:43:22 +0200 (CEST)
To: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>,
	Stefano Babic <sbabic@denx.de>
References: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
	<ad7604a1-743e-89f3-b810-b80beeb3f5cc@denx.de>
	<CAGnCEbuAG01bPk0WR5HvTcPwAxqUPU_OA_JipRjmANwCyumAkQ@mail.gmail.com>
	<e9196c4d-7dc8-3ad4-b7cd-57aa7b3a4f4f@denx.de>
	<CAGnCEbuOBM8rxhHv_nFNjZwQf+TVjc2hBjA5vjZL2cBZNAc5KA@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <194b9bbf-f3bb-0937-0c42-f7e32e357daf@denx.de>
Date: Sat, 8 Jul 2017 19:43:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <CAGnCEbuOBM8rxhHv_nFNjZwQf+TVjc2hBjA5vjZL2cBZNAc5KA@mail.gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Update SRCREV doesn't work?
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
X-List-Received-Date: Sat, 08 Jul 2017 17:43:33 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Thi Huynh,

On 08/07/2017 17:12, Ngọc Thi Huỳnh wrote:
> Hi Babic,
> 
> I think the problem is from
> 
>     meta-swupdate-boards/recipes-support/swupdate/swupdate_%.bbappend
> 
> 
> The file contains
> 
>     SRCREV = "${AUTOREV}"
> 
> 
> which overwrites SRCREV in
> 
>     meta-swupdate/recipes-support/swupdate/swupdate_2017.04.bb
>     <http://swupdate_2017.04.bb>
> 
> 
> After removing that line, everything is fine now.

There is a commit 10 days ago that has already fix this. Check
met-swupdate-boards, -master.

Best regards,
Stefano Babic

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

