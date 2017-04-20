Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EF01E00AE6; Wed, 19 Apr 2017 20:51:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 584 seconds by postgrey-1.32 at yocto-www;
	Wed, 19 Apr 2017 20:51:35 PDT
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 378B0E00AE0
	for <yocto@yoctoproject.org>; Wed, 19 Apr 2017 20:51:35 -0700 (PDT)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])
	by msfrf2616.sfr.fr (SMTP Server) with ESMTP id 4BEFE1C000416;
	Thu, 20 Apr 2017 05:41:50 +0200 (CEST)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2616.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 20 Apr 2017 05:41:48 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Andreas =?iso-8859-1?q?M=FCller=27?= <schnitzeltony@googlemail.com>,
	'Trevor Woerner' <twoerner@gmail.com>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
In-Reply-To: <CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
Date: Thu, 20 Apr 2017 05:41:44 +0200
Message-ID: <005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQI7YjmaY5b73bo5adVPjN/uNfcVfwJYbQZ/AUYAPzUCNRP7baDNro7w
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Thu, 20 Apr 2017 03:51:38 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Andreas,

Yes, VC4 indeed works for both 32bits and 64bits. It was first =
introduced for 32bits, actually.
Regarding why still using userland: at this point in time, we have =
accelerated HW codec (H.264, MPEG2, some audio) only if using userland.
If one doesn't need that, then VC4 is, in my opinion, the way to go. =
Otherwise, userland still needs to be used.

Cheers,
Herve

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Andreas M=C3=BCller
Sent: samedi 15 avril 2017 20:09
To: Trevor Woerner <twoerner@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi] gles2 on raspi3

On Sat, Apr 15, 2017 at 6:35 PM, Trevor Woerner <twoerner@gmail.com> =
wrote:
> On Sat 2017-04-15 @ 04:46:14 PM, Andreas M=C3=BCller wrote:
>> > Does anyone have any of these (or something else?) working?
>> >
>> Ehm userland gles2 on X11? I would not expect that to work. Experts=20
>> correct me but userland acceleration works for fullscreen apps only.
>
> I have made this work before (which, as you'll see later in this=20
> email, doesn't imply that's how it's supposed to work!):
> https://twoerner.blogspot.ca/2015/09/oe-build-of-glmark2-running-on.ht
> ml
>
> Oh, and I did try both with and without "--fullscreen".
>
>> Why not using FOSS VC4+mesa?
>
> Now's probably a good time to point out I only have a vague idea of=20
> what I'm doing ;-)
>
> I didn't try vc4 because the raspi recipes implied (to me) it was for=20
> aarch64 only. The "vc4graphics" MACHINE_FEATURES is only added for =
raspberrypi3-64.
> I'll give this a try though.
Oh yes you are right - it is long time ago - maybe this was one of the =
reasons for my vc4-only fork. I thought it is an option set in =
local.conf.
>
> Here's another question that only shows my inexperience in this=20
> area... does using mesa always imply software-only rendering? mali=20
> (for example) would be hardware rendering (though through a binary=20
> blob) and mesa is the software fallback?
I am also no expert here but Mesa is the open source userspace part for =
accelerated graphics. Mesa-SW rendering driver is a fallback in case no =
driver is supported/implemented. This is what you have seen for glmark2. =
Since the VC4-Mesa was implemented, for me RaspberryPi turned into the =
reference hardware regarding graphics. You can have accelerated X11 + =
wayland in one image without any trouble with proper working modesetting =
(and HDMI sound is on it's way). I've never had this before on other =
machines where closed source blobs do graphics acceleration. Either you =
have fb only (no X11/wayland) or you have to decide either X11 or =
wayland - and worst: With every new version of xserver you have to =
expect trouble.
>
> By the way, with my current setup I have been able to run openGL apps =
(e.g.
> glmark2 by itself) albeit most definitely non-accelerated!
mesa-gl builds swrast - mentioned above
>
> A lot of google searches talk about setting environment variables. Are =

> there any that might apply?
>
For the first shot I would add vc4graphics to MACHINE_FEATURES in =
raspberrypi3.conf. The required settings should happen (see recipe =
rpi-config).

In the long run I would start a discussion:

* Mesa/VC4 is not a machine feature only available on 64Bit Pi3 only:
It is common to all version of RaspberryPi. Using mesa should be a =
decision easily selected by a setting somewhere. The only reason 64Bit
Pi3 gets VC4 by default is that userland is not working for 64Bit - see =
commit 9d418db5ed2962821987ac90c07c3a61e40c0814)
* Why still use userland? Dropping it would make things MUCH easier:
All the decisions based vc4graphics in MACHINE_FEATURES could be removed =
(that's what my fork does)

Andreas
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


