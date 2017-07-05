Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40837E00BE8; Tue,  4 Jul 2017 23:44:00 -0700 (PDT)
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
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C02AE00BE0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 23:43:58 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3x2WYT1863z1qsDY;
	Wed,  5 Jul 2017 08:43:57 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3x2WYT00yhz3hhtR;
	Wed,  5 Jul 2017 08:43:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id EuoaLJYLdQTU; Wed,  5 Jul 2017 08:43:55 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Wed,  5 Jul 2017 08:43:55 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id 217024540690;
	Wed,  5 Jul 2017 08:43:55 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id Iu-WcCJrgwq4; Wed,  5 Jul 2017 08:43:51 +0200 (CEST)
Received: from [192.168.178.89] (stefano-MacBookPro.fritz.box [192.168.178.89])
	by babic.homelinux.org (Postfix) with ESMTPS id A3BD54540474;
	Wed,  5 Jul 2017 08:43:51 +0200 (CEST)
To: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>,
	Stefano Babic <sbabic@denx.de>
References: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
	<ad7604a1-743e-89f3-b810-b80beeb3f5cc@denx.de>
	<CAGnCEbuAG01bPk0WR5HvTcPwAxqUPU_OA_JipRjmANwCyumAkQ@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <e9196c4d-7dc8-3ad4-b7cd-57aa7b3a4f4f@denx.de>
Date: Wed, 5 Jul 2017 08:43:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAGnCEbuAG01bPk0WR5HvTcPwAxqUPU_OA_JipRjmANwCyumAkQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Jul 2017 06:44:00 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Huynh,

On 05/07/2017 04:09, Ngọc Thi Huỳnh wrote:
> Hi,
> 
> I guess I'll remove build/tmp directory and rebuild everything from scratch.
> I'll post the result later then.
>

The recipe for beaglebone was dropped from meta-swupdate. I moved the
examples for bbb and raspi into a separate layer (meta-swupdate-boards,
-master).

> BTW, thank you so much for writing swupdate.

You're welcome.

> 
Best regards,
Stefano Babic

> Best Regards,
> Thi Huynh
> 
> Huỳnh Ngọc Thi
> -so61pi
> 
> On Wed, Jul 5, 2017 at 12:08 AM, Stefano Babic <sbabic@denx.de
> <mailto:sbabic@denx.de>> wrote:
> 
>     Hi,
> 
>     On 04/07/2017 18:13, Ngọc Thi Huỳnh wrote:
>     > Hi everyone,
>     >
>     > I'm using poky pyro to build a beaglebone image with swupdate.
>     >
>     > First time I built swupdate (by bitbake swupdate), it used the latest
>     > git version and I encountered an make error which related to swupdate only.
>     >
>     > Then I changed swupdate version to 2017.04 (by using
>     > PREFERRED_VERSION_swupdate = "2017.04") but the bitbake still used the
>     > latest git version and I had the make error again.
>     >
> 
>     I cannot confirm this. I have built a custom board and setting
>     PREFERRED_VERSION_swupdate works without issues.
> 
>     > But when I used devshell and changed the git revision to 2017.04 then
>     > do_configure and do_compile, everything went fine.
>     >
>     > My question is, is there a simple way to solve this problem?
>     >
>     > /Note:/
>     > The swupdate recipes for beaglebone that I'm using are from
>     > https://github.com/sbabic/meta-swupdate
>     <https://github.com/sbabic/meta-swupdate>
>     >
>     > Content of swupdate_2017.04.bb <http://swupdate_2017.04.bb>
>     <http://swupdate_2017.04.bb>:
>     >
>     >     require swupdate.inc
>     >
>     >     SRCREV = "d344ec10b71293d2aaf96816266d4e6ed1d3bf6a"
>     >
>     >
>     > Content of swupdate_git.bb <http://swupdate_git.bb>
>     <http://swupdate_git.bb>
>     >
>     >     require swupdate.inc
>     >
>     >     DEFAULT_PREFERENCE = "-1"
>     >
>     >
>     > A snippet of swupdate.inc
>     >
>     >     SRCREV = "${AUTOREV}"
>     >
>     >
> 
>     Best regards,
>     Stefano Babic
> 
> 
>     --
>     =====================================================================
>     DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
>     HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
>     Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email:
>     sbabic@denx.de <mailto:sbabic@denx.de>
>     =====================================================================
> 
> 

