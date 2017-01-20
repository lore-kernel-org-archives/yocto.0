Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C5A3E00BDA; Fri, 20 Jan 2017 03:52:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38F76E00A38
	for <yocto@yoctoproject.org>; Fri, 20 Jan 2017 03:52:48 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id EC59068A01C; Fri, 20 Jan 2017 11:52:46 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id A5E8068A019;
	Fri, 20 Jan 2017 11:52:46 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 4D1AC6740287;
	Fri, 20 Jan 2017 12:52:46 +0100 (CET)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <d75a5d99-f1c8-f106-8264-50d03a5f5e2a@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <7b993ea1-ffde-c3a7-b125-63c857808013@mlbassoc.com>
Date: Fri, 20 Jan 2017 12:52:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <d75a5d99-f1c8-f106-8264-50d03a5f5e2a@mlbassoc.com>
Subject: Re: [meta-raspberrypi] WiFi on rpi3?
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
X-List-Received-Date: Fri, 20 Jan 2017 11:52:49 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-20 12:30, Gary Thomas wrote:
> Can someone give me pointers to get the onboard WiFi on the
> RaspberryPi3 going?  What kernel settings/hoops I need to do,
> what packages I might need, etc?
>
> Thanks
>

Actually, I've found that with an older kernel (4.1.21) the WiFi
device is discovered, but with the newer kernels (4.4.x and 4.9.x)
it's not.

Any clues?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

