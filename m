Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D28EE00A51; Thu,  9 Feb 2017 06:33:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD09E00A3B
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 06:33:29 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 57CCA68A01C; Thu,  9 Feb 2017 14:33:28 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id EF5D268A019;
	Thu,  9 Feb 2017 14:33:23 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id ACC1367400D4;
	Thu,  9 Feb 2017 15:33:23 +0100 (CET)
To: yocto@yoctoproject.org
References: <8dce4c37-30db-f5aa-69b7-7c9653769994@mlbassoc.com>
	<CAJTo0LY01P0Mvtj1kmYsrmugk0Sz1exk3JoiWwNGkuKQbi3FHA@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <1e710ec0-80d0-ecc5-dedd-1ea0b29e2a10@mlbassoc.com>
Date: Thu, 9 Feb 2017 15:33:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY01P0Mvtj1kmYsrmugk0Sz1exk3JoiWwNGkuKQbi3FHA@mail.gmail.com>
Subject: Re: Trimming images
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
X-List-Received-Date: Thu, 09 Feb 2017 14:33:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-09 15:21, Burton, Ross wrote:
>
> On 9 February 2017 at 13:53, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     This used to work - what am I doing wrong now?
>
>
> usbutils depends on hwdb as it's mostly useless without it.  Maybe this is the cause?

I'm sure it is (and it's a recent change, 2017-02-02, while I was on holiday)

Is there some way to disable this, certainly in a case where I
don't care about the device database?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

