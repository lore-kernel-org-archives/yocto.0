Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B213E00AC8; Wed, 19 Apr 2017 09:32:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD2FE00995
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:32:14 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id w64so84797339wma.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 09:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=svrAGb3H13iyGPJ9x7+mUIM+QTZoUIzYer4Pmkc6jak=;
	b=VafXbURkpJIkHV3T73OE2V6DTh9s0UkasAeCAqCvHiftWcRCTpdbNHnCmptiOx2+oy
	46b5n+yonS/Zzll8nBX5zqoc1umJ17XsjkQsIGX1nQ1xO+CKhg8OzBL/keroaQoRe2oM
	iQcQ8g6E+TsZ42NmgNMBxGobztnmxEWmYWqXos/SGiIMPcrdPZ61rDpYupxvEOnRrL7m
	+cY2BZgmk/JJmDcryvAnnRZp64uswIvKJ6p6MBSnNVeolmCDa7s3gVjf6iOoRuEcQhhy
	aQlOeIeFGA2N/Av1/kbghg+tgsRHiHuRxhMWM68e5XasyEWxoTEC1w37m+uMxfe3vu77
	4axg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=svrAGb3H13iyGPJ9x7+mUIM+QTZoUIzYer4Pmkc6jak=;
	b=C42oVoqD+8+uXOAeuVlg4nYU1/+nCKfKoVDoX5YBO9YmdGh5glo2ZFHc92lRjWtCdz
	JkO0y5toH8/6f/lurXfhesG/ZVaoy0Vetp9KN0V49BgU9uxXmfF+l/Cbnh6hh3tOzFBA
	m+rzQGsvXuup9K/q/+6appjONU8+Hm5qWXi1oJArhFxpOZY155vVPazXvAdUcJNFECJF
	DKh+GjaktT/CvRGWMCr6+rzsAw71b6/Ch1kzwuovzsiREEuuCkNngUECPLe/ulEycBGf
	ilNgaNFW6AwHhgbYi2ltSXdiqoPeXrZiUiMlsttTS/IkKrtsV7/nO//YdRnmH9Ha47+T
	Ba1w==
X-Gm-Message-State: AN3rC/4aNbJHc4nfNQJbogx1A6qVuM4lIm7juKPvIyXyXxehd+t/ULYr
	ACKoirVFm1vGPqO50nyVTs9zmgDMQg==
X-Received: by 10.28.221.212 with SMTP id u203mr3737295wmg.101.1492619533817; 
	Wed, 19 Apr 2017 09:32:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Wed, 19 Apr 2017 09:31:43 -0700 (PDT)
In-Reply-To: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
References: <CAK18fxEy4Gnns4q+MrXJj==hr0CRSJK3xB=sh-yCFRUsaG7PeQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 19 Apr 2017 09:31:43 -0700
Message-ID: <CAMKF1sqo1XY_OX-m46JxU4foym3tg2SgW-SfU0_Yj62ehHiHQg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Unified serial console device option
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
X-List-Received-Date: Wed, 19 Apr 2017 16:32:17 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 4:00 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Hello all,
>
> I'm trying to have the ability for user to use serial0 as serial port
> on the header and serial1 (when available) for Bluetooth. In this way
> rpi2 and rpi3 (32b) will have the same configuration. The story goes
> identical for rpi0 and rpi0-wifi.
>
> Now, what I was planning to do is:
> 1. create udev rules to generate the the symlinks accordingly to dt aliases.
> 2. add the above package (with the rules) as a machine recommends
> (MACHINE_ESSENTIAL_*).
> 3. and then change all the SERIAL_CONSOLE = 'serial0 115200'
>
> This works great with one exception: system parses the console
> argument in cmdline and spawns through a generator a new getty
> instance on that device. Adding systemd-serialgetty package will make
> system have two getty services on the same device (serial0 and for
> example AMA0) which is obviously unusable and wrong. Sysvinit works
> ok.
>
> Then I thought to make this completely optional:
> 1. create udev rules to generate the the symlinks accordingly to dt aliases.
> 2. make SERIAL_CONSOLE configurable (default assignments)
> 3. a user wanting to take advantage of the udev rules will have to add
> the rpi udev rules to the image and modify in his/her local.conf
> SERIAL_CONSOLE
>
> Currently we have a cascade setup for our machine configuration: ex
> rpi3 includes rpi2 and tweaks some things. We do this to avoid some
> duplication (even though the gain is really minimal - 2-3 lines).
> Anyway it is something after all.
>
> This again looks fine but because we have machine which include other
> machine conf, I endded up having a problem when I want to overwrite
> both definitions: see rpi3 which includes rpi2 (defines a
> SERIAL_CONSOLE) than overwrites SERIAL_CONSOLE.
>
> What do you guys think as a way forward? One way would be to make the
> boards definitions be stand alone and use default assignments which I
> think it would fix everything and make the mechanism completely
> optional.
>
> BTW: This would unlock the ability to create a raspberrypi-all machine
> that would work on any raspberry board (armv6 + wifi firmware + etc).
>

I think as a BSP layer, we only need it to expose knobs for serial
consoles such that all consoles are accounted for on a given machine.
Then I am fine if you want to treat the machine configs as references
meaning that someone can inherit the machine conf and override serial
console. Beyond that its
a distribution option to unify machine or consoles etc. I would leave it to that
and ensure that if some distros wanted such a set up and anything was
missing from machine perspective that should be added.

> --
> Andrei Gherzan

