Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53DF5E01363
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 04:28:50 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id 10so6615441ied.14
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 04:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=j9UvWHQMuiV2wOBB0xJi02fL/3a8uPr28Q9suTWHb3Y=;
	b=qpbcWHnd6K9XJ4B0ifHTSZQNMdOK0WYjTPD9XcREzG9rGnBNAe97rwWPgZ5h7g70E+
	TKTJ7KyjYLJ0GEyjolXbiQrcdeK6k1nirP8cJDlG+LSO90tNNytH+QTh5FUy4Drqrc1l
	IoTasrlSEmr6FN+00rLul32s2pFE/Q/q8V0PEmga54h/bXpdlcJ/5QSsLcxWWTrPCSac
	HMnB/UxHgcMiN/8+gAGIUfM9UMfGWrOgl4i1L5OQnyERAN25bVznZ8YPmNHd4o7QeIER
	pgUk2nNTtEft6CwkVFJ7U+cUz63pHfih7aLT61a5SEOcl0aou8LfYRsr4pLiR8JlhkJ+
	mbBw==
MIME-Version: 1.0
X-Received: by 10.43.14.74 with SMTP id pp10mr6321436icb.87.1374146930000;
	Thu, 18 Jul 2013 04:28:50 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Thu, 18 Jul 2013 04:28:49 -0700 (PDT)
In-Reply-To: <CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
	<CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
Date: Thu, 18 Jul 2013 12:28:49 +0100
Message-ID: <CAHLvMfbLE6=inX1HB7K5UuOPakB=od-2v_hk=Bz-cviuBixT2A@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 11:28:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 18 July 2013 12:07, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 18 July 2013 11:55, Rich Bayliss <richbayliss@gmail.com> wrote:
>>>>
>>>> Is this a known issue? Does anyone have any ideas?
>>>>
>
> Could you try running 'ip addr' and 'ip link' instead of 'ifconfig'?
> Just wondering whether they query information differently and might
> show something else. The other place to look is in the output of
> 'dmesg'.
>
> Does un-plugging and re-plugging the network cable (without running
> 'ifup' or 'ifdown') make any difference?
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk

I have tried unplugging/replugging and it stays down.

I have run the commands and there is a difference, however I also ran
"lsmod" and there is a big difference.

Working:
root@raspberrypi:~# lsmod
    Not tainted
ipv6 281069 12 - Live 0xbf02c000
spidev 5343 0 - Live 0xbf022000
joydev 9477 0 - Live 0xbf01c000
evdev 9486 0 - Live 0xbf015000
leds_gpio 2194 0 - Live 0xbf011000
led_class 3581 1 leds_gpio, Live 0xbf00d000
spi_bcm2708 4631 0 - Live 0xbf004000
i2c_bcm2708 3879 0 - Live 0xbf000000

Not working:
root@raspberrypi:~# lsmod
    Not tainted
ipv6 281069 12 - Live 0xbf00d000
joydev 9477 0 - Live 0xbf007000
evdev 9486 0 - Live 0xbf000000

At this point, if I then do the "ifdown"/"ifup" dance, my connection
works, but not more modules are loaded - does this help you guys?

--
Rich Bayliss

