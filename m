Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B785FE00D19; Wed,  7 Dec 2016 02:25:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 852B3E00D0A
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 02:25:16 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 7428568A01C; Wed,  7 Dec 2016 10:25:14 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 111BD68A019;
	Wed,  7 Dec 2016 10:25:10 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B8D1667400AA;
	Wed,  7 Dec 2016 11:25:09 +0100 (CET)
To: yocto@yoctoproject.org
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
	<001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
	<4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
	<20161206154801.GC1636@carbonA>
	<456946d1-6c5c-15cb-4c76-4c8484dacfda@mlbassoc.com>
	<00a001d24fed$a4e28dc0$eea7a940$@neuf.fr>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <26a25e5f-b5ca-0a74-f14e-6ea2a4b2692d@mlbassoc.com>
Date: Wed, 7 Dec 2016 11:25:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <00a001d24fed$a4e28dc0$eea7a940$@neuf.fr>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad: Don't hard wire use of userland
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
X-List-Received-Date: Wed, 07 Dec 2016 10:25:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2016-12-06 19:22, Herve Jourdain wrote:
> Hi Gary,
>
> Could you try a local to your layer gstreamer1.0-plugins-bad_%.bbappend,
> that would contain:
> PACKAGECONFIG_remove_rpi = " dispmanx"
> And see if it solves your problem?

Yes, it does solve the problem, thanks.  Although written this way and
putting it in local.conf forced every package that uses PACKAGECONFIG to
be rebuilt :-(

Perhaps a softer approach might be:
   PACKAGECONFIG_remove_pn-gstreamer1.0-plugins-bad = "dispmax"

Too bad though that this needs to be disabled to get X11 to work as it would
seem to be very useful in a high-need graphic environment.

>
> I've never built for "vc-graphics-hardfp", as I'm not sure if there are
> benefits in using it over either using the userland or vc4, so I'm not sure
> whether it can work without dispmanx, nor why it would not compile with
> dispmanx enabled.
> But if this works, then we might need to consider to add an additional case
> for not enabling dispmanx.
>
> Cheers,
> Herve
>
> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: mardi 6 décembre 2016 16:58
> To: Andrei Gherzan <andrei@gherzan.ro>
> Cc: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
> Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH]
> gstreamer1.0-plugins-bad: Don't hard wire use of userland
>
> On 2016-12-06 16:48, Andrei Gherzan wrote:
>> On Tue, Dec 06, 2016 at 04:02:20PM +0100, Gary Thomas wrote:
>>> On 2016-12-06 13:45, Herve Jourdain wrote:
>>>> Hi Gary,
>>>>
>>>> But dispmanx is really only provided by userland, it does not exist
>>>> in other flavors of egl/libgles.
>>>> Actually, dispmanx should not be selected in PACKAGECONFIG if
>>>> userland is not in use for EGL/GLES.
>>>
>>> Fine, but I'm looking for a solution where I can choose to use
>>> vc-graphics-hardfp so X11 works again and I can also have gst-player
>>> which depends on gstreamer-1.0-bad
>>>
>>> Any ideas?
>>>
>>
>> Disabling dispamanx is not working?
>
> How might I do that?  It's not clear from [at least] that recipe.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

