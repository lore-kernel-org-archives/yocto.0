Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EFDFE0034C
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 02:41:22 -0800 (PST)
Received: from [192.168.0.2] (host86-137-74-187.range86-137.btcentralplus.com
	[86.137.74.187]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 0C1739BF8
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 10:41:20 +0000 (GMT)
Message-ID: <5114D64F.6060900@r-finger.com>
Date: Fri, 08 Feb 2013 10:41:19 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5110FEC9.5070100@mlbassoc.com>
	<CAJTo0La9XGj6kvHG68orgj=sUz3xHfEbPBkzUxqSbAoBtstzKQ@mail.gmail.com>
	<51125FBC.2090905@mlbassoc.com> <5112DC95.3040702@mlbassoc.com>
In-Reply-To: <5112DC95.3040702@mlbassoc.com>
Subject: Re: pulseaudio madness
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
X-List-Received-Date: Fri, 08 Feb 2013 10:41:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/13 22:43, Gary Thomas wrote:
>>> You might want to have a look at Guacamayo's use of PA, that uses it
>>> and will automatically switch output when new speakers are plugged in
>>> too.    https://github.com/Guacamayo
>>
>> Thanks, that helped.  I've built Guacamayo for my RaspberryPi and
>> can see how it's set up.
> 
> That said, I've not had much luck actually getting anything out of the
> audio :-(  I tried the guacamayo-image-mex-raspberrypi.rpi-sdimg which
> came up and gave me a nice display but it wasn't obvious how to import
> media and/or make it play.  I tried copying some files manually to the
> SD card, but they wouldn't play either.

Both the guacamayo mex and audioplayer images are for UPnP appliances,
i.e., they generally expect to find content on the network, provided by
UPnP media servers (i.e., a NAS).

The mex image is not really much use on the RPi, the HW is too
underpowered to run a non-trivial GL application. But you can put the
audio files into the xuser's Music directory (or with the demo files
into /usr/share/demos/audio) and they should appear in the Music column
of MEX.


> Then I tried guacamayo-image-audioplayer-raspberrypi.rpi-sdimg and it
> was even less intuitive.

You need a UPnP media controller to interact with the audioplayer.
BubbleUPnP for Android works very well.


> Can you give me some guidance?  All I'd like to do is play a simple
> (.wav) file on y RaspberryPi using pulseaudio.

gst-launch playbin2 uri=file:///... should do that for you.


Tomas

-- 
http://sleepfive.com

