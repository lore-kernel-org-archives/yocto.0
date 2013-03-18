Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D238E0140A
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 07:53:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7B7E9F811EF; Mon, 18 Mar 2013 08:53:45 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AAA1BF811EE;
	Mon, 18 Mar 2013 08:53:43 -0600 (MDT)
Message-ID: <51472A7A.6020209@mlbassoc.com>
Date: Mon, 18 Mar 2013 08:53:46 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Help configuring pulseaudio
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
X-List-Received-Date: Mon, 18 Mar 2013 14:53:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I know this is a little off-topic.  I have a Poky/Yocto
based system running pulseaudio out of the box.  Output
(playback) works great,  but it is choosing the wrong
device for input.  I'm hoping someone can give me a pointer
on how to configure things to get the input correct.

Here are my devices (raw ALSA version):
   # aplay -l
   **** List of PLAYBACK Hardware Devices ****
   card 0: Cobra4430p82 [Cobra4430p82], device 0: Multimedia (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 2: Voice (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 3: Tone Playback (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 4: VIB-DL (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 5: MODEM (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 6: Multimedia (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 8: Headset Playback twl6040-legacy-8 []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 9: (HS Playback) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 11: (HF Playback) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 12: (Vibra) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 13: (BT Capture) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 14: (BT Playback) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 15: (FM Playback) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 16: (FM Capture) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   # arecord -l
   **** List of CAPTURE Hardware Devices ****
   card 0: Cobra4430p82 [Cobra4430p82], device 0: Multimedia (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 1: Multimedia Capture (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 2: Voice (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 5: MODEM (*) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 8: Headset Playback twl6040-legacy-8 []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 10: (Analog Capture) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 13: (BT Capture) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 14: (BT Playback) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 15: (FM Playback) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0
   card 0: Cobra4430p82 [Cobra4430p82], device 16: (FM Capture) []
     Subdevices: 1/1
     Subdevice #0:   Subdevice #0

Here's what pulse is choosing:
   # pactl stat
   Currently in use: 1 blocks containing 64.0 KiB bytes total.
   Allocated during whole lifetime: 59019 blocks containing 41.4 MiB bytes total.
   Sample cache size: 0 B
   Server String: /var/volatile/tmp/pulse-FUK8lo8eJhXc/native
   Library Protocol Version: 26
   Server Protocol Version: 26
   Is Local: yes
   Client Index: 53
   Tile Size: 65496
   User Name: root
   Host Name: cobra4430p82
   Server Name: pulseaudio
   Server Version: 2.1
   Default Sample Specification: s16le 2ch 44100Hz
   Default Channel Map: front-left,front-right
   Default Sink: alsa_output.platform-omap-abe-twl6040.analog-stereo
   Default Source: alsa_output.platform-omap-abe-twl6040.analog-stereo.monitor
   Cookie: 93f5:b437

What I want is for it to choose the ALSA device hw:0,1 for input (source).

Can someone help out?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

