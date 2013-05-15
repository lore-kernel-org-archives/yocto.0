Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4DCDE0051D
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 08:51:39 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 15FB7B6A017
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 17:51:36 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.2 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from ashley.wagner-net (dhcp-138-246-70-158.dynamic.eduroam.mwn.de
	[138.246.70.158])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id F2D3FB6A007
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 17:51:35 +0200 (CEST)
Message-ID: <5193AF05.2000505@philipp-wagner.com>
Date: Wed, 15 May 2013 17:51:33 +0200
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130329 Thunderbird/17.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANyK_8fKmat+m09jAcxqKA89Z0Qxt3V5+hsBXAvqVstEbvKucQ@mail.gmail.com>
	<51935584.9030908@r-finger.com>
In-Reply-To: <51935584.9030908@r-finger.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [meta-raspberrypi] Thoughts on Raspberry Pi firmware
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
X-List-Received-Date: Wed, 15 May 2013 15:51:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 15.05.2013 11:29, schrieb Tomas Frydrych:
> On 14/05/13 13:09, Paul Barker wrote:
>> Secondly, is there any use case for building vc-graphics or 
>> vc-graphics-hardfp to provide virtual/egl and virtual/libgles2
>> (which rely on binary files from the raspberry pi firmware repo)
>> instead of compiling from source using the userland package?
> 
> It would be preferable if we could build these from source; last time I
> tried (which, admittedly, is a long while back), this was not possible
> because of some missing broadcom-specific header files that seemed not
> available anywhere, but I guess this is no longer the case.

The graphics libraries can now be compiled from source (userland is part
of meta-raspberrypi) and in my tests it's equivalent to the binary
drivers. I'm not sure if those should be removed from meta-raspberrypi
or left there for somebody who still needs them (why?).

Philipp

