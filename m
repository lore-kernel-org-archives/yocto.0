Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E140E0141C
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 05:24:16 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 8CF69F81234; Thu, 14 Feb 2013 06:24:15 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3BFD5F81231;
	Thu, 14 Feb 2013 06:24:14 -0700 (MST)
Message-ID: <511CE592.7000402@mlbassoc.com>
Date: Thu, 14 Feb 2013 06:24:34 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <511ACDE5.9090704@mlbassoc.com>
	<CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
In-Reply-To: <CAJTo0Lby7D+M2WiVmWMB1Sm9HAO+6SAw17hWp2cjuy=FBb_2pg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Control over Sato theme
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
X-List-Received-Date: Thu, 14 Feb 2013 13:24:16 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-13 09:00, Burton, Ross wrote:
> Hi Gary,
>
> On 12 February 2013 23:19, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'd like to be able to control the Sato theme on my system,
>> with a softer approach than editing the "gtk-sato-engine" package.
>>
>> I tried putting updated settings in /home/root/.gtkrc-2.0 but
>> they don't seem to have any affect.  I can see that this file
>> is being read (and presumably processed) as I bring up the
>> desktop, but why don't the settings stick?
>>
>> Any ideas how I can make this work?
>
> What settings in particular?  The xsettings-daemon will be overriding
> gtkrc with values from GConf, so if you're trying to tweak some
> settings then that will take priority.
>
> Other values are likely hard-coded - the Sato engine wasn't designed
> to be massively customisable and as far as I know its not really been
> tested like this.

My system has a single GUI program and I'd like to change the "feel"
(aka theme).  For example, I'd like to change the colors around (black
backgrounds, light foregrounds, etc), as well as things like the size
and color of sliders, etc (it's a very restricted environment and I want
the feel to reflect that).

I think I still need the Sato basics as I need some minimal window manager
services like popup keyboards, etc.

What's the best way to manage this?

>
>> Also, when I tried editing the "data/gtkrc-vga" in the gtk-sato-engine
>> package I was able to change some settings in the theme, but I couldn't
>> get consistent coverage.  For example, I tried to make the predominant
>> background color something other than the light gray used by Sato, but
>> the unselected version of buttons still have the Sato colors and I don't
>> see how to change that, even in the gtk-sato-engine.
>
> GTK+ theming has two different background colours for different
> contexts (base or bg), so it's possible that you were only changing
> one of them.
>
> Ross
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

