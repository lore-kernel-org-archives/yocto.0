Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A0E4E0027C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 10:50:07 -0800 (PST)
Received: from [192.168.0.2] (host86-137-74-187.range86-137.btcentralplus.com
	[86.137.74.187]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E56EB9BF8
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 18:50:05 +0000 (GMT)
Message-ID: <5111545D.40906@r-finger.com>
Date: Tue, 05 Feb 2013 18:50:05 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1359582698-24226-1-git-send-email-lists@philipp-wagner.com>
	<1359582698-24226-3-git-send-email-lists@philipp-wagner.com>
In-Reply-To: <1359582698-24226-3-git-send-email-lists@philipp-wagner.com>
Subject: Re: [meta-raspberrypi][PATCH 2/2] Add RPROVIDES for OpenGL libraries
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
X-List-Received-Date: Tue, 05 Feb 2013 18:50:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/01/13 21:51, Philipp Wagner wrote:
> https://github.com/djwillis/meta-raspberrypi/issues/55
>
>  PROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"
> +RPROVIDES = "virtual/libgl virtual/libgles2 virtual/egl"

As I noted in the above issue, this really is wrong; there is *no* libgl
provided by the RPi firmware.

Tomas


-- 
http://sleepfive.com

