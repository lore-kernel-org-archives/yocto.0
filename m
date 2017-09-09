Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26B2BE00CE4; Sat,  9 Sep 2017 01:54:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A779DE00CDF
	for <yocto@yoctoproject.org>; Sat,  9 Sep 2017 01:54:38 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id 137so10735788wmj.1
	for <yocto@yoctoproject.org>; Sat, 09 Sep 2017 01:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gBsUXPq9cGgbatkJg7oIQ2S402ehV8R/aWsLX9zKjYk=;
	b=AO+f+vLrKWV5NRVbcQupC7ubEEBadP24fWsg4vzWAFTGi+ZGyqG41UA9M8beJAxbJY
	GOPmwBbDARal8k/n2STk8WcNLhzLAo5v3B9VxRwxgPzXLlP7E2N4Ed4W2C2ZDZJqlEFJ
	SdK6zOhnSW64KgdB1A+EWVLDt5mJPYLJHoOfhj8RgqVaOfXUZc+8fIUltlT5X1sUeXQA
	uwNZezReae4R6oduum29/3FrDKbbbzV2kRJfJ2ebd356qsOj0J4n+7IUGox9jv0p0UfH
	TT5CILUa6SiJ1OSgUzJJjwdM+zlE4qiYuOwZv9xbLjJtSDcNT66EyBNbHnvNI3k/sggz
	iVOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gBsUXPq9cGgbatkJg7oIQ2S402ehV8R/aWsLX9zKjYk=;
	b=CIFtBmO2NVxnwG5FpzIuGrDpxeZngHVsOkiWMFuQei3BGzWLinaDGPRIa/9HWgiHW8
	x0C3LGgOToQMPJImX+j1nF9DsFxy9G7lYgfIv3bSu85K48GMc1PmT4s1HLAHPtkfRTeS
	Y7l5LcAIS3PuVeCL8hBkeN+fqS7m3MzQREgtYIwaE4sN/b/sNvf5vYObkuthNZlmcmvY
	kCug/5FBCmto5VVrE/8t1r2bQH2z+PY0Hnl6mnZeA+xiCrFdHXfBRmLvbKDt7clrZEAo
	8Fz3hnhOkNwha1qJjhvBb6hOW24wIUP58BC1OaPMZHRLCXFUATDtkKFCaD9OdBC2L1YZ
	kGtQ==
X-Gm-Message-State: AHPjjUj5RzumcAq5gaJgFR7+DSm475P2Lfh7DzNC2AGoyVsKcw+P7FAM
	CAcQm2lVS1pa96ommx8LmfdT88qv43J1
X-Google-Smtp-Source: AOwi7QC0F27AkjiSAoeXadHL+Kj1n7fkQb15PqJMOCEE+k4y+3yrloYn3Ch/y+McmXGnJXLmv1rdI1F4l2HHy9ob6+I=
X-Received: by 10.28.236.212 with SMTP id h81mr3342612wmi.42.1504947277474;
	Sat, 09 Sep 2017 01:54:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.155.157 with HTTP; Sat, 9 Sep 2017 01:54:36 -0700 (PDT)
In-Reply-To: <CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
References: <BD59C156-6B9B-442C-B8B8-92D2194902C0@korgrd.com>
	<CAMKF1soJ2=jwPnfefEvDppJGBxPutA_usc0E--XbWY9txredpg@mail.gmail.com>
	<6668FC5E-F4CC-4E92-8857-3B3BC71C7045@korgrd.com>
	<CAMKF1sreAs1W_TA9yFSKLhVvjNOcXJMTLjLU=cjZ+EJYQuxVqQ@mail.gmail.com>
	<CAPyrkgziawJVn2cDbwAziEF78LZDNq1=e1jhHrM6rL41GtK0NQ@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Sat, 9 Sep 2017 09:54:36 +0100
Message-ID: <CAPyrkgxj_O4YJ78wOY2EV3CUMGc0uoN+7+TzYheO3H0E7ksxOw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberrypi3-64 target not booting
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
X-List-Received-Date: Sat, 09 Sep 2017 08:54:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 4, 2017 at 9:31 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Fri, Aug 25, 2017 at 6:27 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Fri, Aug 25, 2017 at 10:14 AM, Bill Jenkins <bill@korgrd.com> wrote:
>>>
>>> On Aug 25, 2017, at 9:42 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>
>>> On Fri, Aug 25, 2017 at 9:39 AM Bill Jenkins <bill@korgrd.com> wrote:
>>>>
>>>> I am trying to just get the simple 64-bit rpi-basic-image to work, but=
 the
>>>> Raspberry Pi 3 seems to hang with the rainbow screen at startup.
>>>
>>>
>>> Can you plugin a serial cable and see if that worked or try to add ssh
>>> daemon on target and try to ssh into pi
>>>>
>>>>
>>>
>>> That was a good call. I can login with the ssh daemon, so it does
>>> successfully boot. I just
>>> cannot access it from the HDMI port. (I do not have the hardware for a
>>> serial connection
>>> at the moment)
>>>
>>> Any ideas on how to get the HDMI port to function the same way as it do=
es
>>> for the
>>> 32-bit case?
>>>
>>
>> Readding the mailing list.
>>
>> what you have is exactly what I had when I submitted the port to
>> meta-raspberrypi. Haven;t had a chance to revisit it. but this could
>> be related to device tree files we are using here. I have had reports
>> from other devs of having been able to boot into graphics using older
>> kernels but I never got
>> that far myself.
>
> I'm seeing the same issue on builds from both pyro and master
> branches. I've confirmed this isn't a HW issue by trying out an
> OpenSUSE Leap 42.2 64-bit build for Raspberry Pi 3.
>
> Khem, are you saying this is the current expected state of Raspberry
> Pi 3 64-bit support? If so I'd really like us to document this in the
> readme and open a bug so we don't lose track of it.
>

So, here's where I'm up to:

I've proposed a bunch of clean-ups and improvements here:
https://github.com/agherzan/meta-raspberrypi/pull/120. The main thing
for this discussion is that I have u-boot working on raspberrypi3-64
and it can boot Linux.

When not using u-boot, I get the colour palette on the screen but I
can ssh into the card after a short delay and confirm that everything
except graphical output seems to be working.

When using u-boot, I get u-boot output on my screen. It gets stuck at
"Starting kernel ..." which I thought was related to another issue but
it's not. Linux does come up and I can ssh in as before, it just
doesn't have any graphical output. The u-boot output is left on the
screen.

So I did a clean checkout of rpi-4.9.y from
https://github.com/raspberrypi/linux and built using the exact
settings in bcmrpi3_defconfig (no config changes) and the
gcc-aarch64-linux-gnu package in Ubuntu 16.04:

    export ARCH=3Darm64
    export CROSS_COMPILE=3Daarch64-linux-gnu-
    make mrproper
    make bcmrpi3_defconfig
    make -j8

I then took arch/arm64/boot/Image and copied it over the top of
kernel8.img in the boot partition of my rpi3-64 image. I now have
working graphical output :)

So I think this is due to either the kernel config changes we make,
the commit hash we use having a bug which is now fixed or a toolchain
issue. Userspace is not involved here.

I'm not going to have much time this weekend to look into this but I
can get back to it next week. If anyone else wants to pick up where
I'm leaving off feel free to!

Thanks,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

