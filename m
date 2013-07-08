Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95F65E01409
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 02:01:49 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-86-109.range86-137.btcentralplus.com
	[86.137.86.109]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id B311B9530
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 10:01:47 +0100 (BST)
Message-ID: <51DA7FFA.2060900@r-finger.com>
Date: Mon, 08 Jul 2013 10:01:46 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130630 Icedove/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANyK_8fZbLNj8zi3AUiUdGU-rVQEHYMPvyp5nMKndvV02LrFQg@mail.gmail.com>
In-Reply-To: <CANyK_8fZbLNj8zi3AUiUdGU-rVQEHYMPvyp5nMKndvV02LrFQg@mail.gmail.com>
Subject: Re: [meta-raspberrypi] Userland and vc-graphics
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
X-List-Received-Date: Mon, 08 Jul 2013 09:01:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/07/13 12:22, Paul Barker wrote:
> So if there recipes are fulfilling the exact same purpose, I think we
> should strip out vc-graphics completely and always build from source.
> I've never seen a use case for the pre-compiled vc-graphics recipes
> within OpenEmbedded/Yocto.
> 
> Does anyone else who's worked with meta-raspberrypi agree with this?
> If so I'll throw together patches to achieve this.

vc-graphics is the original package before the userland sources were
made available; in principle the two should be equivalent, but the last
time I tried to build userland, which admittedly is two or three months
back, it was failing miserably due to some missing broadcom headers that
were nowhere to be found among the released sources. I assume the
userland packages now build OK?

Tomas


-- 
http://sleepfive.com

