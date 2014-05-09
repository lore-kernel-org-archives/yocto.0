Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86D9AE0073A; Fri,  9 May 2014 09:57:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F6BE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 09:57:20 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wio6p-00027u-7w
	for yocto@yoctoproject.org; Fri, 09 May 2014 18:57:19 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 18:57:19 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Fri, 09 May 2014 18:57:19 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Fri, 09 May 2014 18:57:08 +0200
Message-ID: <lkj1d5$s27$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>	<lkevco$bl6$1@ger.gmane.org>	<CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>	<536CADD1.1040402@gmx.de>	<CAC+thW3_DhKGai3kRXo+HnHOJeWDYdC7_zEg4Z2-wRZhn6iTfw@mail.gmail.com>	<536CD642.70700@gmx.de>	<CAC+thW39rt=BEuo3SVa2mvFx0hHXGk=VW9rxUymR-i4jDNJpyw@mail.gmail.com>
	<lkj12c$mij$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <lkj12c$mij$1@ger.gmane.org>
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
X-List-Received-Date: Fri, 09 May 2014 16:57:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Seems, I am not the only one wondering why connman phones home:

https://bbs.archlinux.org/viewtopic.php?id=181038

The address is 87.106.208.187, which is the IP of
"senator.holtmann.net". The author of the connman package seems to be
Marcel Holtmann <marcel AT holtmann.org>.

Honestly, without a reasonable explanation why this package adds this
route, I wouldn't use this package on my systems.

Am 09.05.2014 18:51, schrieb Neuer User:
> Hi Andrea
> 
> I'd like the idea of a somewhat smarter network daemon, but connman
> slowly becomes a bit suspicious to me.
> 
> First, it is very bad documented and difficult to understand what it
> does. Second, it needs iptables to work. Why? Third, it adds strange
> static routes to my routing table and deletes them later
> (87.106.208.187). What is it doing there? Sending pings to this server?
> 
> Hmm, anybody knows a reasonable alternative? Maybe I just start a
> dhclient on my LAN interface and see if it stays in the background, when
> disconnected.
> 
> Michael
> 
> Am 09.05.2014 17:27, schrieb Andrea Galbusera:
>> Michael,
>>
>> On Fri, May 9, 2014 at 3:21 PM, Auslands-KV <auslands-kv@gmx.de> wrote:
>>> Thanks a lot. I will look through these links and hope I will understand
>>> better then :-)
>>>
>>> I hope it works nicely with a read-only rootfs. It seems to write to its
>>> own config data (which is a strange behaviour).
>>
>> One of the reasons I started looking at connman was the hope to find a
>> solution to the hell that comes with runtime configuration of network
>> connections in embedded systems. What I had to address many and many
>> time in the past was designing the glue logic sitting between the
>> application specific way of saying "I want eth1 to have this address"
>> instead of "add this DNS server" and the backend required to "deploy"
>> such a new configuration. This usually involved poking with some
>> configuration file and restarting/signaling a service to pickup the
>> new configuration.
>>
>> If I understand it correctly, one of the main goals of connman's
>> design is to provide a backend functionality for handling
>> configurations and deploying them all in a standard and well defined
>> way. This is accomplished by implementing appropriate interfaces
>> exposed over d-bus. It turns out to allows client application, either
>> the provided connmanctl client or your application specific
>> configuration frontend, to interact with the low-level configuration
>> engine, connman daemon, which support plugins for different connection
>> technologies specific needs.
>>
>> So, yes, in my understanding, connman manages its own configuration
>> files. You're supposed to interact with it at an higher level, through
>> methods calls over d-bus: this allows, amongst other things, multiple
>> applications to interact with connman in a safe and controlled way. I
>> guess the design got highly inspired by network configuration tools
>> included in modern Linux distros and the way they work, GNOME's
>> networkmanager being probably one of them. Connman brings all this to
>> the embedded by making it a little bit more lightweight and modular.
>> Anyway, quite far from classic "write myriads of format-heterogeneous
>> config files and fire up some hacked script for reconfiguration".
>>
>> Read-only filesystem shouldn't be a problem itself. I guess you can
>> configure connman to have its own configuration files placed on a
>> tmpfs or similar. Of course, if you need to change configurations at
>> runtime and persistency is required, you probably still need some
>> writable filesystem. But this would be so, even without connman!
>>
>>> Do you by chance know, why it depends on the xuser-account package? I
>>> don't want any additional user accounts on my system. If it is not
>>> essential I would remove it.
>>
>> I'd guess depending on xuser-account grants providing the correct
>> d-bus permissions for interacting with connman to processes which run
>> under a GUI session (non-root). IMHO this RDEPEND should be somewhat
>> conditional to X being enabled on your distro/image. I couldn't find
>> any explicit reference to xuser in connman source code... Maybe
>> someone more expert than me on the list can give a better explanation.
>>
>>>
>>> Thanks
>>>
>>> Michael
>>>
>>> Am 09.05.2014 15:06, schrieb Andrea Galbusera:
>>>> Hi,
>>>>
>>>> On Fri, May 9, 2014 at 12:28 PM, Neuer User <auslands-kv@gmx.de> wrote:
>>>>> Connman is really a problem without documentation. :-(
>>>>>
>>>>> I tried it out and first I noticed that it depends on the creation of an
>>>>> xuser account. It also needs iptables, so probably can configure these, too.
>>>>>
>>>>> I also found that it does not correctly configure the dns entries:
>>>>>
>>>>> cat /etc/resolv.conf:
>>>>> # Generated by Connection Manager
>>>>> nameserver 127.0.0.1
>>>>> nameserver ::1
>>>> This is in fact a working configuration for the DNS proxy feature that
>>>> connman offers built-in. See [1].
>>>> I personally went through your same frustration when trying to
>>>> understand how connman is supposed to work in order to evaluate its
>>>> maturity. Not yet an expert at all, but [2] and [3] gave me a
>>>> reasonable bootstrap into connman's main logic. Beside this, "git
>>>> grepping" the source tree is your best friend.
>>>> Angstrom distribution, i.e. available on the beaglebone boards is also
>>>> a good example of a real connman based system.
>>>>
>>>>> I really would like to understand what it does with these and how I can
>>>>> change or modify it's behaviour.
>>>>>
>>>>> It's definitely not just "when ethernet cable inserted, bring up the
>>>>> interface using DHCP".
>>>>>
>>>>> I even can't find a config file for connman. Is there one?
>>>> Yes, there usually is one for each service handled by connman. See [4]
>>>> for details on configuration file format and their default location.
>>>> As you can see from previously suggested references, you'll usually
>>>> modify configurations by using the connmanctl client tool instead of
>>>> editing those files by hand.
>>>>
>>>> [1] http://git.kernel.org/cgit/network/connman/connman.git/tree/README
>>>> [2] http://derekmolloy.ie/set-ip-address-to-be-static-on-the-beaglebone-black/
>>>> [3] http://www.ptrackapp.com/apclassys-notes/embedded-linux-using-connma/
>>>> [4] http://git.kernel.org/cgit/network/connman/connman.git/tree/doc/config-format.txt
>>>>
>>>>> Thanks
>>>>>
>>>>> Michael
>>>>>
>>>>> Am 08.05.2014 12:27, schrieb Burton, Ross:
>>>>>> On 8 May 2014 04:58, Neuer User <auslands-kv@gmx.de> wrote:
>>>>>>> I had a brief look at connman half a year ago, but that time I was
>>>>>>> unable to find a good documentation about it. Do you have by chance a
>>>>>>> link to some tutorial or at least man entry for the configuration?
>>>>>> What do you need to configure?  For "when ethernet cable inserted,
>>>>>> bring up the interface using DHCP" this is default behaviour and won't
>>>>>> need any configuring.  connman is sadly under-documented but the IRC
>>>>>> channel is fairly responsive.
>>>>>>
>>>>>> Ross
>>>>>>
>>>>>
>>>>> --
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
> 
> 



