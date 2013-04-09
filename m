Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB55E01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 03:07:05 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id ha11so5631229vcb.16
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 03:07:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=0tb6S33dvtCe6AsWr/ej5cpcUtA90mLkAVDyLkBqolg=;
	b=hFHCx9r7D9dqWAF1UZ02B5AhRsQWgXmiA6O2xNCxBXRmv8snZgXFLGC+mHdBORPpMJ
	zvBDWLfQLjYmdSiIyCEhvpG9FNTjaRjR2yBNEb64XNF2zVsTm1cmm5lWgVpZQ+KZcjQz
	B8GW2MImRxKYjqpMXaRX3kOe3qPn8Ziph+9CHyU+2GP9Md3TQwrOlci2wO6dbvyRaHEm
	XFbt2y66Jw4MlQggbVUeymvFmISkPCKDynyNDLgdi943+LC3lapRtsGAyeJp2yb4/Oey
	KHWpbSp6xVM24MI/+JpEKnlNSdg+my2c3WZsGQcRUDBP+yKFWk8je5s59SP4I3pb0CZR
	cdxg==
X-Received: by 10.52.23.115 with SMTP id l19mr16000863vdf.55.1365502025058;
	Tue, 09 Apr 2013 03:07:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Tue, 9 Apr 2013 03:06:44 -0700 (PDT)
In-Reply-To: <001b01ce3480$ac63e850$052bb8f0$@gmail.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
	<001b01ce3480$ac63e850$052bb8f0$@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Apr 2013 11:06:44 +0100
Message-ID: <CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
To: Andreas Enbacka <aenbacka@gmail.com>
X-Gm-Message-State: ALoCoQkHlUJcpkVb1cjVn6ZJN0CokcRa3tDe6EbvbGuWGvBs8C8BG2e5B6J+PsIfIZKhH8DvK9Lq
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Tue, 09 Apr 2013 10:07:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Andreas,

On 8 April 2013 18:44, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I tried to rebuild the xf86-input-evdev; however the core-image-sato stil=
l insists on using the default mouse / keyboard drivers instead of evdev. A=
lso no /dev/input/event* entries exist (only /dev/input/mice and /dev/input=
/mouse0).

So in that case evdev won't help anyway.  I wonder why that is.  I
guess you'll need to try evtest and look at dmesg.

> Concerning removing xf86-input-mouse / xf86-input-keyboard from the image=
, what is the easiest way to achieve this using yocto? I have created a cus=
tom bitbake recipe already, inheriting from core-image-sato, which adds a f=
ew packages. Can removal of packages be easily specified in the custom reci=
pe as well?

They're pulled in through the machine configuration, eventually
reaching XSERVER_IA32_BASE.  The packages are tiny and the choice of
what ones to use can be made by xorg.conf anyway.

Ross

