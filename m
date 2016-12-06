Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA992E007A2; Tue,  6 Dec 2016 10:22:06 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA70E006EA
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 10:22:05 -0800 (PST)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])
	by msfrf2601.sfr.fr (SMTP Server) with ESMTP id 50F281C00886E;
	Tue,  6 Dec 2016 19:22:04 +0100 (CET)
Received: from nbhjo (plum.beechwoods.com [70.88.250.17])	(using TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2601.sfr.fr (SMTP Server) with ESMTPSA;
	Tue,  6 Dec 2016 19:22:01 +0100 (CET)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Gary Thomas' <gary@mlbassoc.com>, 'Andrei Gherzan' <andrei@gherzan.ro>
References: <1481016818-27612-1-git-send-email-gary@mlbassoc.com>
	<001e01d24fbe$b293d8e0$17bb8aa0$@neuf.fr>
	<4618c4f6-81dc-18ca-dfc6-a823ee640bc3@mlbassoc.com>
	<20161206154801.GC1636@carbonA>
	<456946d1-6c5c-15cb-4c76-4c8484dacfda@mlbassoc.com>
In-Reply-To: <456946d1-6c5c-15cb-4c76-4c8484dacfda@mlbassoc.com>
Date: Tue, 6 Dec 2016 19:22:00 +0100
Message-ID: <00a001d24fed$a4e28dc0$eea7a940$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQJYGqWR7tPui6g/rwVhQQhrZs04TwGa2lT2Acj4bZIBj7zJ0wJ62Z2En7QxAKA=
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 06 Dec 2016 18:22:07 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Gary,

Could you try a local to your layer gstreamer1.0-plugins-bad_%.bbappend,
that would contain:
PACKAGECONFIG_remove_rpi =3D " dispmanx"
And see if it solves your problem?

I've never built for "vc-graphics-hardfp", as I'm not sure if there are
benefits in using it over either using the userland or vc4, so I'm not =
sure
whether it can work without dispmanx, nor why it would not compile with
dispmanx enabled.
But if this works, then we might need to consider to add an additional =
case
for not enabling dispmanx.

Cheers,
Herve

-----Original Message-----
From: Gary Thomas [mailto:gary@mlbassoc.com]=20
Sent: mardi 6 d=E9cembre 2016 16:58
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH]
gstreamer1.0-plugins-bad: Don't hard wire use of userland

On 2016-12-06 16:48, Andrei Gherzan wrote:
> On Tue, Dec 06, 2016 at 04:02:20PM +0100, Gary Thomas wrote:
>> On 2016-12-06 13:45, Herve Jourdain wrote:
>>> Hi Gary,
>>>
>>> But dispmanx is really only provided by userland, it does not exist=20
>>> in other flavors of egl/libgles.
>>> Actually, dispmanx should not be selected in PACKAGECONFIG if=20
>>> userland is not in use for EGL/GLES.
>>
>> Fine, but I'm looking for a solution where I can choose to use=20
>> vc-graphics-hardfp so X11 works again and I can also have gst-player=20
>> which depends on gstreamer-1.0-bad
>>
>> Any ideas?
>>
>
> Disabling dispamanx is not working?

How might I do that?  It's not clear from [at least] that recipe.

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


