Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61063E01409
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 04:12:49 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e15so3274344vbg.31
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 04:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=td9J0ttNeNNki2Ut6LZ+I1E+Z8Li5FgMLlhW7vrQzcY=;
	b=kKF2bpTPy7mv2XRQl+BKMQyBIacjn8t9OTklXTaFMJuV9wmUKkHEvZTggd0MDvoafk
	qhw2m9gxLydsaRh2UQhX2euzDC3gI40yWqbP5p3Cbq5Xg56VI4j2Mua62pS8m24QUOyx
	DavXm7Va114go68P0zN3MJn61QuawJemIjoUKJe5fES9HDVvU8OAgjAybhTgKgG/qjw1
	RSyZ2gAsfgwCiOUWBEFSqvDJfPaRizeospPp6Ghi9a6s0EkqX+TG+6s4fZsDwBKeRU96
	xtzzTjdT3Tg6SoOTH7sJcuZrPu5xKxZHp7+D4ZAH0myPEmMhAywaFPY/hjeZp+lqID25
	0Qow==
X-Received: by 10.52.18.171 with SMTP id x11mr11280636vdd.92.1373281968735;
	Mon, 08 Jul 2013 04:12:48 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Mon, 8 Jul 2013 04:12:08 -0700 (PDT)
In-Reply-To: <51DA7FFA.2060900@r-finger.com>
References: <CANyK_8fZbLNj8zi3AUiUdGU-rVQEHYMPvyp5nMKndvV02LrFQg@mail.gmail.com>
	<51DA7FFA.2060900@r-finger.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 8 Jul 2013 12:12:08 +0100
X-Google-Sender-Auth: f9PX-F7PQcH0TfuT1nE36r2B-cU
Message-ID: <CANyK_8dd-2amNRAQoP9Wqqy5veSyUbWShm0pnien5DNu-yt3aQ@mail.gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Userland and vc-graphics
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
X-List-Received-Date: Mon, 08 Jul 2013 11:12:53 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 8 July 2013 10:01, Tomas Frydrych <tf+lists.yocto@r-finger.com> wrote:
> On 06/07/13 12:22, Paul Barker wrote:
>>
>> Does anyone else who's worked with meta-raspberrypi agree with this?
>> If so I'll throw together patches to achieve this.
>
> vc-graphics is the original package before the userland sources were
> made available; in principle the two should be equivalent, but the last
> time I tried to build userland, which admittedly is two or three months
> back, it was failing miserably due to some missing broadcom headers that
> were nowhere to be found among the released sources. I assume the
> userland packages now build OK?
>

It all builds and installs correctly for me (I'm using core-image-sato
for testing). It would probably be good to put together a simple test
plan to ensure that it does run correctly.

I must admit to being happier working on console applications rather
GUIs and especially OpenGL/EGL type things but there are probably a
few basic tests I can do. I could see if glxgears runs correctly. I
could also look at EGL/GLES output from gstreamer.

Any other suggestions?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

