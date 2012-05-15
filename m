Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2279E006DA
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 08:44:18 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q4FFiFFt025040
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 15 May 2012 08:44:15 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 15 May 2012 08:44:15 -0700
Message-ID: <4FB279CC.1080503@windriver.com>
Date: Tue, 15 May 2012 11:44:12 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <EE688041-FB89-4D1A-AE38-8DFF617C244D@keylevel.com>
	<4FB21EBC.1000106@r-finger.com>
In-Reply-To: <4FB21EBC.1000106@r-finger.com>
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi [was Re: Kernel modules fail to compile for ARM]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 May 2012 15:44:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-05-15 05:15 AM, Tomas Frydrych wrote:
> On 14/05/12 19:52, Chris Tapp wrote:
>> I'm trying to put a BSP together for an ARM system (Raspberry Pi, ARM1176JZF-S CPU).
>
> I got the feeling that there might be multiple OE/RPI efforts going on
> at the same time unaware of each other, e.g., I noticed this
> meta-raspberrypi layer on github that seems to be well on the way,
> https://github.com/djwillis/meta-raspberrypi ... perhaps getting various
> folk interested in this together would be beneficial.

I'll jump in and ask my obvious question, if we want to pull in some
extra BSP/kernel developers, is there a fundamental reason why a
different kernel/kernel version than one of the linux-yocto ones is
being used ?

If you line up with one of those, there's a chance to pickup fixes,
features and have someone like me help maintain things where it
makes sense.

Collecting kernels and BSPs in trees all over the place is one of the
things that I'd like to try and help with going forward in 2012.

Cheers,

Bruce

>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


