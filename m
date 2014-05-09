Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73814E0073A; Fri,  9 May 2014 08:32:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 310 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 08:32:27 PDT
Received: from mail-vc0-f176.google.com (unknown [209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84E5AE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 08:32:27 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id lg15so5432169vcb.35
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 08:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3+/nlfw+kl5j4hd0oyO3MTG6EjQteRqXaTyj1DaTYqk=;
	b=NPDbhrF0TDztsEZ0AHFXXtjiKS0IrVIb9WU+fWEZmxrK1bMJs3C3Fv4D8LoWwDBy4I
	S2Y+yKanKS6W/FyWxTMuPHTBNw+v8c4ifvxZEk9Szj/FdWKRBsuWN+J1Tu8Jy8kNgo3w
	ZEqIs9xI7bqCdlpew6Z0EQFbPXmVsdqPHeLbLdBKSqVzpqUYsUZfBGrW4miCXFhj0GSm
	HEqtGntA/qZMg6GL+UcV/zxcvqTYiCHysCWgma1j9KaZP/rHgtAioFRTBZtFAD+45Pw7
	RgybfxtA/d3c6uQb8gS0yz5tsGlKHXwg200OplBHeHc7Yf88jzbnzOai7BS7WHlw8jgU
	Bj2w==
MIME-Version: 1.0
X-Received: by 10.58.66.195 with SMTP id h3mr1076079vet.57.1399649237378; Fri,
	09 May 2014 08:27:17 -0700 (PDT)
Received: by 10.220.0.67 with HTTP; Fri, 9 May 2014 08:27:17 -0700 (PDT)
In-Reply-To: <536CD642.70700@gmx.de>
References: <lkcshi$dep$1@ger.gmane.org>
	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>
	<lkevco$bl6$1@ger.gmane.org>
	<CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>
	<536CADD1.1040402@gmx.de>
	<CAC+thW3_DhKGai3kRXo+HnHOJeWDYdC7_zEg4Z2-wRZhn6iTfw@mail.gmail.com>
	<536CD642.70700@gmx.de>
Date: Fri, 9 May 2014 17:27:17 +0200
Message-ID: <CAC+thW39rt=BEuo3SVa2mvFx0hHXGk=VW9rxUymR-i4jDNJpyw@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Auslands-KV <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: replace udhcpc
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
X-List-Received-Date: Fri, 09 May 2014 15:32:29 -0000
Content-Type: text/plain; charset=UTF-8

Michael,

On Fri, May 9, 2014 at 3:21 PM, Auslands-KV <auslands-kv@gmx.de> wrote:
> Thanks a lot. I will look through these links and hope I will understand
> better then :-)
>
> I hope it works nicely with a read-only rootfs. It seems to write to its
> own config data (which is a strange behaviour).

One of the reasons I started looking at connman was the hope to find a
solution to the hell that comes with runtime configuration of network
connections in embedded systems. What I had to address many and many
time in the past was designing the glue logic sitting between the
application specific way of saying "I want eth1 to have this address"
instead of "add this DNS server" and the backend required to "deploy"
such a new configuration. This usually involved poking with some
configuration file and restarting/signaling a service to pickup the
new configuration.

If I understand it correctly, one of the main goals of connman's
design is to provide a backend functionality for handling
configurations and deploying them all in a standard and well defined
way. This is accomplished by implementing appropriate interfaces
exposed over d-bus. It turns out to allows client application, either
the provided connmanctl client or your application specific
configuration frontend, to interact with the low-level configuration
engine, connman daemon, which support plugins for different connection
technologies specific needs.

So, yes, in my understanding, connman manages its own configuration
files. You're supposed to interact with it at an higher level, through
methods calls over d-bus: this allows, amongst other things, multiple
applications to interact with connman in a safe and controlled way. I
guess the design got highly inspired by network configuration tools
included in modern Linux distros and the way they work, GNOME's
networkmanager being probably one of them. Connman brings all this to
the embedded by making it a little bit more lightweight and modular.
Anyway, quite far from classic "write myriads of format-heterogeneous
config files and fire up some hacked script for reconfiguration".

Read-only filesystem shouldn't be a problem itself. I guess you can
configure connman to have its own configuration files placed on a
tmpfs or similar. Of course, if you need to change configurations at
runtime and persistency is required, you probably still need some
writable filesystem. But this would be so, even without connman!

> Do you by chance know, why it depends on the xuser-account package? I
> don't want any additional user accounts on my system. If it is not
> essential I would remove it.

I'd guess depending on xuser-account grants providing the correct
d-bus permissions for interacting with connman to processes which run
under a GUI session (non-root). IMHO this RDEPEND should be somewhat
conditional to X being enabled on your distro/image. I couldn't find
any explicit reference to xuser in connman source code... Maybe
someone more expert than me on the list can give a better explanation.

>
> Thanks
>
> Michael
>
> Am 09.05.2014 15:06, schrieb Andrea Galbusera:
>> Hi,
>>
>> On Fri, May 9, 2014 at 12:28 PM, Neuer User <auslands-kv@gmx.de> wrote:
>>> Connman is really a problem without documentation. :-(
>>>
>>> I tried it out and first I noticed that it depends on the creation of an
>>> xuser account. It also needs iptables, so probably can configure these, too.
>>>
>>> I also found that it does not correctly configure the dns entries:
>>>
>>> cat /etc/resolv.conf:
>>> # Generated by Connection Manager
>>> nameserver 127.0.0.1
>>> nameserver ::1
>> This is in fact a working configuration for the DNS proxy feature that
>> connman offers built-in. See [1].
>> I personally went through your same frustration when trying to
>> understand how connman is supposed to work in order to evaluate its
>> maturity. Not yet an expert at all, but [2] and [3] gave me a
>> reasonable bootstrap into connman's main logic. Beside this, "git
>> grepping" the source tree is your best friend.
>> Angstrom distribution, i.e. available on the beaglebone boards is also
>> a good example of a real connman based system.
>>
>>> I really would like to understand what it does with these and how I can
>>> change or modify it's behaviour.
>>>
>>> It's definitely not just "when ethernet cable inserted, bring up the
>>> interface using DHCP".
>>>
>>> I even can't find a config file for connman. Is there one?
>> Yes, there usually is one for each service handled by connman. See [4]
>> for details on configuration file format and their default location.
>> As you can see from previously suggested references, you'll usually
>> modify configurations by using the connmanctl client tool instead of
>> editing those files by hand.
>>
>> [1] http://git.kernel.org/cgit/network/connman/connman.git/tree/README
>> [2] http://derekmolloy.ie/set-ip-address-to-be-static-on-the-beaglebone-black/
>> [3] http://www.ptrackapp.com/apclassys-notes/embedded-linux-using-connma/
>> [4] http://git.kernel.org/cgit/network/connman/connman.git/tree/doc/config-format.txt
>>
>>> Thanks
>>>
>>> Michael
>>>
>>> Am 08.05.2014 12:27, schrieb Burton, Ross:
>>>> On 8 May 2014 04:58, Neuer User <auslands-kv@gmx.de> wrote:
>>>>> I had a brief look at connman half a year ago, but that time I was
>>>>> unable to find a good documentation about it. Do you have by chance a
>>>>> link to some tutorial or at least man entry for the configuration?
>>>> What do you need to configure?  For "when ethernet cable inserted,
>>>> bring up the interface using DHCP" this is default behaviour and won't
>>>> need any configuring.  connman is sadly under-documented but the IRC
>>>> channel is fairly responsive.
>>>>
>>>> Ross
>>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>
>

