Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E8FEE00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 05:50:48 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 13B51F811E8; Wed,  6 Feb 2013 06:50:48 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0A603F811E2;
	Wed,  6 Feb 2013 06:50:47 -0700 (MST)
Message-ID: <51125FBC.2090905@mlbassoc.com>
Date: Wed, 06 Feb 2013 06:50:52 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5110FEC9.5070100@mlbassoc.com>
	<CAJTo0La9XGj6kvHG68orgj=sUz3xHfEbPBkzUxqSbAoBtstzKQ@mail.gmail.com>
In-Reply-To: <CAJTo0La9XGj6kvHG68orgj=sUz3xHfEbPBkzUxqSbAoBtstzKQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 06 Feb 2013 13:50:48 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-05 06:52, Burton, Ross wrote:
> Hi Gary,
>
> On 5 February 2013 12:44, Gary Thomas <gary@mlbassoc.com> wrote:
>> I have a multi-media application/system (built with Poky/Yocto of course)
>> that is currently using ALSA for the sound.  This works great but now
>> I'd like to be able to share some of the sound resources, in particular
>> the audio output (speakers).  To satisfy this, I looked at pulseaudio,
>> but I'm overwhelmed by the package choices (there are 120 packages),
>> not to mention what to do about configuration.
>>
>> I don't see any examples (images, etc) that use pulseaudio.
>>
>> Does anyone have any recommendations on what I might need to install,
>> how to configure it, etc, to take over from my simple ALSA setup?
>
> The top tip is the PulseAudio documentation on the web site, that
> lists all the plugins and what they do.  The pulseaudio-server package
> depends on all of the important plugins, so that gives you a working
> PA setup once you've started it.
>
> You might want to have a look at Guacamayo's use of PA, that uses it
> and will automatically switch output when new speakers are plugged in
> too.    https://github.com/Guacamayo

Thanks, that helped.  I've built Guacamayo for my RaspberryPi and
can see how it's set up.

One thing I'm missing is how the pulseaudio server gets started?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

