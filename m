Return-Path: <autif.mlist@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EC32E013D9
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 06:28:38 -0700 (PDT)
Received: by pbbjt11 with SMTP id jt11so3374157pbb.35
	for <yocto@yoctoproject.org>; Fri, 06 Apr 2012 06:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/hKDmmqv+5aj4XJ+yMuh1G5t52GBiCUnvcRnUzSdCWk=;
	b=FObfTqEEyp52IkH8wnLGIPUDddkGfskzeON2WeM5qNL+sRej0VCLeK45+vXuPNsFn8
	VUVN7H0/E4q0qBO4zpoHiPvdBRk9ZliEftJoBwm7wIJyxV5RI0CYvmlkO3FgVu76U3t5
	aeAaScqE+hlae5lPBGXVKALAVXmvcXPzxcjXC1VLUomJn6Zk8WMsFaWynXLjOJqOcn/S
	3soV+ekfJtAPdB77kOMRth7fPsL5NMuuuRHFpeZp3Dq+mbv8rCJFp6uD0BPkrTThKy67
	xM6XyQ4jtgvPjJxvgNmyGgt2SwvakysGl+lkwyfVVxDqPGCy0qqwKapv+UQNElCl4Wbp
	WxGw==
MIME-Version: 1.0
Received: by 10.68.132.41 with SMTP id or9mr15960806pbb.8.1333718917799; Fri,
	06 Apr 2012 06:28:37 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Fri, 6 Apr 2012 06:28:37 -0700 (PDT)
In-Reply-To: <4F7EB894.3040308@r-finger.com>
References: <4F7EB894.3040308@r-finger.com>
Date: Fri, 6 Apr 2012 09:28:37 -0400
Message-ID: <CADzUK1JNq71fqEdMUiv1WfTiGb12+mixnZzDWeHw4+kwrR1a-A@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using and auditing kernel config fragments
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
X-List-Received-Date: Fri, 06 Apr 2012 13:28:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

> For some reason which I cannot work out, the rt2800usb options are
> removed (rather then disabled) from the yocto kernel config, i.e., if I
> run 'bitbake -c menuconfig linux-yocto', there is very little under
> Drivers->Net->WLAN. If I run menuconfig in the devshell, there are lots
> more WLAN drivers available, including the rt2800.

Under Device Drivers -> Network device support -> Wireless LAN, You
have to enable Ralink driver support to see the options for
CONFIG_RT2800USB

It is not under Device Drivers -> Network device support -> Wireless LAN

It is under Device Drivers -> Network device support -> Wireless LAN
-> Ralink driver support

