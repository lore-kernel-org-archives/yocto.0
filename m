Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FA92E0145C
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 10:17:28 -0800 (PST)
Received: from [192.168.0.2] (host86-137-82-70.range86-137.btcentralplus.com
	[86.137.82.70]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 6BCFD9BF8
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 18:17:27 +0000 (GMT)
Message-ID: <50D4A7B6.6040603@r-finger.com>
Date: Fri, 21 Dec 2012 18:17:26 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
In-Reply-To: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
Subject: Re: I think my kernel image just went back in time...
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
X-List-Received-Date: Fri, 21 Dec 2012 18:17:28 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/12/12 23:17, Chris Tapp wrote:
> In tmp/deploy/images:
> 
> 1) bzImage had a timestamp of 2012-12-09 21:49 and the file ended
> -20121209214459.bin
> 
> 2) Cleaned the image and the task it contained (to pick up some
> changes on rebuild) and deleted the image files (.hddimg, etc.) in
> tmp/deploy/images making sure to leave the kernel files intact.

Did you cleansstate it? I find that without cleaning the state kernel
image gets always pulled out of sstate rather than properly rebuilt.

Tomas



-- 
http://sleepfive.com

