Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC726E00AD0; Wed, 19 Apr 2017 10:49:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794ACE009A5
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 10:49:32 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id k87so5608265ioi.0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 10:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yY2SVvQMxYYxAqKv/UWCELjsCh+S511Zo7EMBXz9JNA=;
	b=T+JLoASMgqYfu8HonZwFCDKLjUayYRBy4VU8ARJ8qHjTi7cNU9DpmBlvlauoh+1XMT
	1ae0BFnydU7Qzd9y0TlL3173i4qceuj89xAPr3JzMyHDIeseHG0EqOgDTOjOCa3DWV14
	OroBE0xOIomUMw4C++RiuiB0CiuFr2bzIobI/j/KXsLtJuceIJzLpl3/fQdMWLYcy05I
	7mqxhEch6b/i7IuCWdpHrkJiOxGbwpcBYI5Ou0TsoCHf/tNLaP83ef4oId+CPFwfA0wr
	E7DMRZpSJEo6cQjz+kcuWcDwJ1F3tGdiXaTNO20LCydbKhIIUV3KDOuxMyJXaUPJv7Wz
	O2mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yY2SVvQMxYYxAqKv/UWCELjsCh+S511Zo7EMBXz9JNA=;
	b=lCIqXzuM05XruM4KdOnx7Y6Ckb+Yw0wRT4WnQwAIWgUeEQ7xIKgDmh/V87QvpibTuT
	3kGSU+fQzcKpEowJrqGeQFYU+NTNw3PuLM5Bx3ey6V+9LiOV8LUGaPhfcumwDSfTmZ+e
	JFWfC2SEZTj6a37HiGncBqZrgRjrLkRGCcKTXxZVq8Xmb7QhqDs6uPgUHIMD50PO7J7m
	1HfJS6JioCu/LVW1RRLEdN/iWhyRYBSgogks3CFoVZOjvuhP5n5fuTfyUU7tddrJ5+r5
	jOBYND5vnmricjzpD/1L0yGDRUjex/77PmKQFSaZeuxbiHpzp/+fxiNRpDlSwBUxXFZN
	ke1g==
X-Gm-Message-State: AN3rC/5OujP7jZ7gRrmOK2ZRpbqZQ8xQC2WBvP33ZcRKuSPrR7vbysA+
	cA01xoLiW1j3eSxxwU7y2+gIfiOEc/Qe
X-Received: by 10.36.178.83 with SMTP id h19mr4799617iti.95.1492624172340;
	Wed, 19 Apr 2017 10:49:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 19 Apr 2017 10:48:51 -0700 (PDT)
X-Originating-IP: [86.158.8.191]
In-Reply-To: <CAPyrkgw=jAv6g8p+787EbwoRAN6u5q7J_gXifNZOgoUuL8apsQ@mail.gmail.com>
References: <20170418205108.14629-1-pbarker@toganlabs.com>
	<20170419165321.GD19325@carbonA>
	<CAPyrkgw=jAv6g8p+787EbwoRAN6u5q7J_gXifNZOgoUuL8apsQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 19 Apr 2017 18:48:51 +0100
Message-ID: <CAK18fxGMxFq0d3-4DunTwf_RPySEo8xsif2KCpaokx5S53wZMw@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][morty][PATCH 0/8] Stable branch backports
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
X-List-Received-Date: Wed, 19 Apr 2017 17:49:34 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 19, 2017 at 5:54 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Wed, Apr 19, 2017 at 5:53 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> On Tue, Apr 18, 2017 at 09:51:00PM +0100, Paul Barker wrote:
>>> * Upgrade linux-raspberrypi 4.9 recipe
>>>
>>> * Add support for raspberrypi3-64 MACHINE
>>>
>>> Boot tested on raspberrypi, raspberrypi3 and raspberrypi3-64 using the 4.9
>>> series kernel.
>>>
>>> These patches were tested on top of Andrei's latest series of backports. The
>>> exact series tested can be found at:
>>>     https://gitlab.com/oryx/meta-raspberrypi/commits/pbarker/morty-next-2017-04-18
>>>
>>> Andrei Gherzan (1):
>>>   linux-raspberrypi_4.9: Bump to 4.9.21
>>>
>>> Herve Jourdain (1):
>>>   Add raspberrypi3-64.conf
>>>
>>> Khem Raj (5):
>>>   linux-raspberrypi: Add defconfig for raspberrypi3-64
>>>   raspberrypi3-64.conf: Use 4.9 as default kernel
>>>   raspberrypi3-64.conf: Specifiy rpi3-64bit dtbs
>>>   sdcard: Use kernel8.img for 64bit kernel image name
>>>   rpi-config: Specify bcm2710-rpi-3-b dtb for 64bit rpi3
>>>
>>> Paul Barker (1):
>>>   raspberrypi3-64: Override rpi-default-versions.inc
>>>
>>>  classes/sdcard_image-rpi.bbclass              |  1 +
>>>  conf/machine/raspberrypi3-64.conf             | 41 +++++++++++++++++++++++++++
>>>  recipes-bsp/bootfiles/rpi-config_git.bb       |  6 ++++
>>>  recipes-kernel/linux/linux-raspberrypi.inc    |  1 +
>>>  recipes-kernel/linux/linux-raspberrypi_4.9.bb |  4 +--
>>>  5 files changed, 51 insertions(+), 2 deletions(-)
>>>  create mode 100644 conf/machine/raspberrypi3-64.conf
>>>
>>> --
>>> 2.11.0
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> Paul, how is testing looking with these patches?
>>
>
> All boot tested, ran a few commands by hand at the console and
> everything looks good. I don't have a very complex software stack on
> morty at the minute though.

Sounds good Paul. Thanks.

