Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0434BE00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 06:44:57 -0800 (PST)
Received: from [192.168.0.2] (host86-137-74-187.range86-137.btcentralplus.com
	[86.137.74.187]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 4B9619BF8
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 14:44:56 +0000 (GMT)
Message-ID: <51126C68.3020107@r-finger.com>
Date: Wed, 06 Feb 2013 14:44:56 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5110FEC9.5070100@mlbassoc.com>
	<CAJTo0La9XGj6kvHG68orgj=sUz3xHfEbPBkzUxqSbAoBtstzKQ@mail.gmail.com>
	<51125FBC.2090905@mlbassoc.com>
In-Reply-To: <51125FBC.2090905@mlbassoc.com>
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
X-List-Received-Date: Wed, 06 Feb 2013 14:44:57 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/02/13 13:50, Gary Thomas wrote:
> On 2013-02-05 06:52, Burton, Ross wrote:
>> Hi Gary,
>>
>> On 5 February 2013 12:44, Gary Thomas <gary@mlbassoc.com> wrote:
>>> I have a multi-media application/system (built with Poky/Yocto of
>>> course)
>>> that is currently using ALSA for the sound.  This works great but now
>>> I'd like to be able to share some of the sound resources, in particular
>>> the audio output (speakers).  To satisfy this, I looked at pulseaudio,
>>> but I'm overwhelmed by the package choices (there are 120 packages),
>>> not to mention what to do about configuration.
>>>
>>> I don't see any examples (images, etc) that use pulseaudio.
>>>
>>> Does anyone have any recommendations on what I might need to install,
>>> how to configure it, etc, to take over from my simple ALSA setup?
>>
>> The top tip is the PulseAudio documentation on the web site, that
>> lists all the plugins and what they do.  The pulseaudio-server package
>> depends on all of the important plugins, so that gives you a working
>> PA setup once you've started it.
>>
>> You might want to have a look at Guacamayo's use of PA, that uses it
>> and will automatically switch output when new speakers are plugged in
>> too.    https://github.com/Guacamayo
> 
> Thanks, that helped.  I've built Guacamayo for my RaspberryPi and
> can see how it's set up.
> 
> One thing I'm missing is how the pulseaudio server gets started?

Depends on the image type, either from /eta/xdg/autostart, or for the
audiplayer image from the /etc/init.d/guacamayo-session-* script.

Tomas

