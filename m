Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web12.27168.1628533129713899600
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Aug 2021 11:18:50 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 0969EFF803
	for <yocto@lists.yoctoproject.org>; Mon,  9 Aug 2021 18:18:37 +0000 (UTC)
To: yocto@lists.yoctoproject.org
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Subject: Audio playback issue with ogg123 (vorbis-tools)
Organization: Bootlin
Message-ID: <be5c8c49-bdab-2056-58a0-2115000bc724@bootlin.com>
Date: Mon, 9 Aug 2021 20:18:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Greetings,

I'm trying to play an Ogg/Vorbis sample from an image I generated with
Poky (master) and meta-oe (master), by adding "ogg123" and "alsa-utils"
(for testing purposes) to "core-image-minimal".

I built the image for qemux86-64 and tested it ran in a chroot on my x86
build machine. I mounted proc, sysfs and devtmpfs on /proc, /sys/ and
/dev in the chroot, respectively.

I could play a WAV file through "aplay" (from alsa-utils) from the
chroot, but I didn't manage to play an Ogg/Vorbis sample on the audio card:
# ogg123 /sample.ogg
=== Could not load default driver and no driver specified in config
file. Exiting.

However, I could "play" the sample file to a WAV file:
ogg123 -d wav -f output.wav /sample.ogg

Looking at the code, it seems there's a back-end issue (libao,
alsa-lib?), so I suspect ogg123 or libao were built with missing
features. I checked that libao was configured with Alsa support.

I'll go on investigating, but if you have ideas, I'm interested!

Cheers,
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

