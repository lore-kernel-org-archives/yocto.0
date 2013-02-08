Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 898E7E0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 02:17:50 -0800 (PST)
Received: from [192.168.0.2] (host86-137-74-187.range86-137.btcentralplus.com
	[86.137.74.187]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 92E579BF8
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 10:17:48 +0000 (GMT)
Message-ID: <5114D0CB.7090604@r-finger.com>
Date: Fri, 08 Feb 2013 10:17:47 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<CAK18fxF3TaptkgRnJfH6HRJaCPFOtD+TiiN7opTVevQt6zW7ew@mail.gmail.com>
In-Reply-To: <CAK18fxF3TaptkgRnJfH6HRJaCPFOtD+TiiN7opTVevQt6zW7ew@mail.gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Binary graphics library fixes
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
X-List-Received-Date: Fri, 08 Feb 2013 10:17:50 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Andrei,

On 07/02/13 14:26, Andrei Gherzan wrote:
> We are moving to userland repo. So we will build our libraries

I tried to use the userland repo about a week ago and had to revert back
to using the binary firmware; the userland tree seem to miss some bcm
headers, so it was impossible to build apps against the libs whose
includes require those.

Tomas

