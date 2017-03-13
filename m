Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A151E00A4F; Sun, 12 Mar 2017 21:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98F93E00A3B
	for <yocto@yoctoproject.org>; Sun, 12 Mar 2017 21:53:35 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id AD38E68A019; Mon, 13 Mar 2017 04:53:33 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 20E9868A019;
	Mon, 13 Mar 2017 04:53:33 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C2A296740215;
	Mon, 13 Mar 2017 05:53:32 +0100 (CET)
To: yocto@yoctoproject.org
References: <mailman.63189.1489153806.15860.yocto@yoctoproject.org>
	<HK2PR0401MB149200CF1FFB30976C65F1C0C6200@HK2PR0401MB1492.apcprd04.prod.outlook.com>
	<CAMKF1sqfy8Rq5fQ5aDRK8T5AefffdEYahN2JHxkibF7hPK7_0g@mail.gmail.com>
	<HK2PR0401MB14928E9621541096BB5AB1BEC6250@HK2PR0401MB1492.apcprd04.prod.outlook.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <66bd51fe-197a-66d4-fca6-afe149ac338b@mlbassoc.com>
Date: Mon, 13 Mar 2017 05:53:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <HK2PR0401MB14928E9621541096BB5AB1BEC6250@HK2PR0401MB1492.apcprd04.prod.outlook.com>
Subject: Re: kernel build failed
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
X-List-Received-Date: Mon, 13 Mar 2017 04:53:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-03-13 05:39, Suneetha Lakshmi G wrote:
>
> Hi Khem,
>
>
> Sorry for late response .Kernel (4.1.17) build failed  with gcc 4.9.4 we are using gcc as a External toolchain
> (asdk-4.9.4-a7-EL-3.10-g2.19-a32nt-160219)

You need to provide a lot more details for anyone to be of much help:
   * Version of OE-core (or Poky) - exact branch/revision
   * Target machine details
   * Any changes to local.conf, etc, e.g. how did you configure to use gcc-4.9.x (since that has been long replaced)?

> ------------------------------------------------------------------------------------------------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Friday, March 10, 2017 11:45 PM
> *To:* Suneetha Lakshmi G
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] help
>
>
>
> On Fri, Mar 10, 2017 at 6:25 AM, Suneetha Lakshmi G <suneetha.g@tataelxsi.co.in <mailto:suneetha.g@tataelxsi.co.in>> wrote:
>
>     Hi All,
>
>
>     Im new to yocto and trying to build for my customer device im facing this issue.
>
>
>     | arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mgeneral-regs-only'
>     | arm-linux-gnueabi-xgcc: error: unrecognized command line option '-mcmodel=large'
>     | make: *** [opkg-compare-versions] Error 1
>     | ERROR: oe_runmake failed
>
>     Please guide how to progress further.
>
>
> xgcc is internal name during building/testing gcc itself, which package it failing like this for you ?
>
>


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

