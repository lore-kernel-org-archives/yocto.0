Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB2EE006D9
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 02:09:30 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-69-176.range86-170.btcentralplus.com
	[86.170.69.176]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 4C46A9C07
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 10:09:30 +0100 (BST)
Message-ID: <4FDC4D49.9050807@r-finger.com>
Date: Sat, 16 Jun 2012 10:09:29 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BBB9AD1B-8D46-472C-AE84-5AC18F15B44E@keylevel.com>
	<3AD32D08-64C8-4F37-BF50-9D08560D0194@keylevel.com>
	<4FDACFD5.4020808@r-finger.com>
	<68AE55D0-CAC7-41DB-B40C-DB5383E7FC54@keylevel.com>
In-Reply-To: <68AE55D0-CAC7-41DB-B40C-DB5383E7FC54@keylevel.com>
Subject: Re: Help needed understanding do_rootfs error
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
X-List-Received-Date: Sat, 16 Jun 2012 09:09:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chris,

On 15/06/12 21:09, Chris Tapp wrote:
> On 15 Jun 2012, at 07:01, Tomas Frydrych wrote:
>> Incidentally, the GLES libs are not currently packaged by 
>> meta-raspberrypi, I submitted a pull request for this yesterday.
> 
> Thanks, that will be nice. I want to look at GLES for other things.
> May even update what I already have if it shows significant
> performance advantages (which it should). Looks like DirectFB has
> some sort of GLES support, so I also need to look at that.

I am aiming to get Clutter working on the RPI, but it looks like bits of
the graphics drivers needed by libEGL are missing :( I opened an issue
for this in github (https://github.com/raspberrypi/firmware/issues/43),
we will see.

Tomas



