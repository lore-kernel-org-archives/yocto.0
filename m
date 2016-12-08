Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 066F6E00DF1; Wed,  7 Dec 2016 20:31:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA46EE00DED
	for <yocto@yoctoproject.org>; Wed,  7 Dec 2016 20:31:09 -0800 (PST)
Received: from nbhjo (unknown [65.202.45.61])
	by msfrf2602.sfr.fr (SMTP Server) with ESMTP id 61B681C000425;
	Thu,  8 Dec 2016 05:31:07 +0100 (CET)
Received: from nbhjo (unknown [65.202.45.61])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2602.sfr.fr (SMTP Server) with ESMTPSA;
	Thu,  8 Dec 2016 05:31:06 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
	<001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
	<4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
	<20161206154801.GC1636@carbonA>
	<456946d1-6c5c-15cb-4c76-4c8484dacfda@mlbassoc.com>
	<00a001d24fed$a4e28dc0$eea7a940$@neuf.fr>
	<26a25e5f-b5ca-0a74-f14e-6ea2a4b2692d@mlbassoc.com>
In-Reply-To: <26a25e5f-b5ca-0a74-f14e-6ea2a4b2692d@mlbassoc.com>
Date: Thu, 8 Dec 2016 05:31:05 +0100
Message-ID: <009601d2510b$e55f64d0$b01e2e70$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJYGqWR7tPui6g/rwVhQQhrZs04TwGa2lT2Acj4bZIBj7zJ0wJ62Z2EAavWt7cBxzMGjZ+a1npw
X-sfr-mailing: LEGIT
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
X-List-Received-Date: Thu, 08 Dec 2016 04:31:14 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Gary,

That was a pretty crude way of doing something for testing purpose.
If it works, obviously we should consider changing that in .bbappend in =
the
meta-raspberrypi layer, and not outside.

Cheers,
Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org]
On Behalf Of Gary Thomas
Sent: mercredi 7 d=E9cembre 2016 11:25
To: yocto@yoctoproject.org
Subject: Re: [yocto] ***SPAM*** Re: [meta-raspberrypi][PATCH]
gstreamer1.0-plugins-bad: Don't hard wire use of userland

On 2016-12-06 19:22, Herve Jourdain wrote:
> Hi Gary,
>
> Could you try a local to your layer=20
> gstreamer1.0-plugins-bad_%.bbappend,
> that would contain:
> PACKAGECONFIG_remove_rpi =3D " dispmanx"
> And see if it solves your problem?

Yes, it does solve the problem, thanks.  Although written this way and
putting it in local.conf forced every package that uses PACKAGECONFIG to =
be
rebuilt :-(

Perhaps a softer approach might be:
   PACKAGECONFIG_remove_pn-gstreamer1.0-plugins-bad =3D "dispmax"

Too bad though that this needs to be disabled to get X11 to work as it =
would
seem to be very useful in a high-need graphic environment.

>
> I've never built for "vc-graphics-hardfp", as I'm not sure if there=20
> are benefits in using it over either using the userland or vc4, so I'm =

> not sure whether it can work without dispmanx, nor why it would not=20
> compile with dispmanx enabled.
> But if this works, then we might need to consider to add an additional =

> case for not enabling dispmanx.
>
> Cheers,
> Herve
>
> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: mardi 6 d=E9cembre 2016 16:58
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
>>>> But dispmanx is really only provided by userland, it does not exist =

>>>> in other flavors of egl/libgles.
>>>> Actually, dispmanx should not be selected in PACKAGECONFIG if=20
>>>> userland is not in use for EGL/GLES.
>>>
>>> Fine, but I'm looking for a solution where I can choose to use=20
>>> vc-graphics-hardfp so X11 works again and I can also have gst-player =

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
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


