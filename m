Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30168E0070F
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 06:55:16 -0800 (PST)
Received: from [192.168.0.2] (host86-137-74-187.range86-137.btcentralplus.com
	[86.137.74.187]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 786329BF8
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 14:55:15 +0000 (GMT)
Message-ID: <51126ED3.8040503@r-finger.com>
Date: Wed, 06 Feb 2013 14:55:15 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <51126B76.1060108@mlbassoc.com>
In-Reply-To: <51126B76.1060108@mlbassoc.com>
Subject: Re: Running Sato/X11 as non-root
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
X-List-Received-Date: Wed, 06 Feb 2013 14:55:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/13 14:40, Gary Thomas wrote:
> In my attempt to get pulseaudio running, I need to bring up
> my X11 session with a user that is not root.  The default
> (core-image-sato) always starts X11 as root.  This yields
> these errors when starting (with pulseaudio installed):
>   W: [pulseaudio] main.c: This program is not intended to be run as root
> (unless --system is specified).
>   E: [autospawn] core-util.c: Home directory /home/root not ours.
>   W: [autospawn] lock-autospawn.c: Cannot access autospawn lock.
>   E: [pulseaudio] main.c: Failed to acquire autospawn lock
>   W: [pulseaudio] main.c: This program is not intended to be run as root
> (unless --system is specified).
>   E: [autospawn] core-util.c: Home directory /home/root not ours.
>   W: [autospawn] lock-autospawn.c: Cannot access autospawn lock.
>   E: [pulseaudio] main.c: Failed to acquire autospawn lock
> 
> So, I tried to make X run as user 'demo', which I created, by
> putting 'demo' in /etc/X11/Xusername.  Now it seems to try
> and run as 'demo', but falls over quite quickly:
>   Fatal server error:
>   [2951371.651] xf86OpenConsole: Cannot open /dev/tty0 (No such file or
> directory)
>   [2951371.651]
>   [2951371.651] (EE)
>   Please consult the The X.Org Foundation support
>          at http://wiki.x.org for help.
>   [2951371.651] (EE) Please also check the log file at
> "/var/log/Xorg.0.log" for additional information.
>   [2951371.651] (EE)
>   [2951371.652] (WW) xf86CloseConsole: KDSETMODE failed: Bad file
> descriptor
>   [2951371.652] (WW) xf86CloseConsole: VT_GETMODE failed: Bad file
> descriptor
>   [2951371.652] Server terminated with error (1). Closing log file.
> 
> Any ideas how I get this going?
> 
> n.b. not only do I want to get this going for myself, but I think
> the discussion (and maybe subsequent documentation) is useful since
> this functionality is in OE-core (or is it only Poky/Yocto - hard
> to tell)...

The user that the rootless X in Poky is expecting is called xuser; if
you use your own, you need to make sure that it's in all the appropriate
groups the server needs it to be in, etc.; see the xserver-nodm-init recipe.

Tomas

-- 
http://sleepfive.com

