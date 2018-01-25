Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A4C5E00E02; Thu, 25 Jan 2018 12:22:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70F58E00CF5
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 12:22:29 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id x4so32601706wmc.0
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 12:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/D/nt6uuSli60VniGGk4Ir5vrWIjaShlg5X61dnuzVI=;
	b=twv4ALizC+irOBq/8uOEnvG6P426RoJGWy1QfbcKhVJwa047Mle7RIrVhZ4oPRYQ4n
	1T61tLqueIXb1xbo3foAaVMrWcJBhdC1ApDOimFqkKsgUhwtLz/zAVIFwmRStH7xl7t8
	NS9AMthboSMKjib5SDIGEIxEWDijRv2AFfKyb7LWp0JCVMhg9VmarikT3g0YMmznDZIa
	LFLIv6c5hL38Bph3P6gozrhlOAOqktCIHfVnmPeI1+CwVElQutLhz8n+a+d/PX/yxNXS
	gQAnLiPUMvvEkVcFV4N6w+SKLRGUl6+pL/n88hO8myL9OPaVYCjQAXSMXASV1ycs+X9X
	3eyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/D/nt6uuSli60VniGGk4Ir5vrWIjaShlg5X61dnuzVI=;
	b=JU9LG4JWDW6SXIWAfRiHj2/kdVEkys8DMT7H/4I0spWmpePx2YfBJk7antc0HQyAd/
	GISNWru5J2l/lJB7PL1Z1BDI4UBOptr1pmpF9Cxgt4UAR/dXVXby30KDO4Fdgp+VGjvv
	qZsc/rUyWuOGqkyauwRfVYhWqJXybizPFPCjjTGLl2DJYfqaA2WxdgeGXsaUhPxKw+Qw
	PDAEhIXFlLfTlXY6xVry35eO/pHVeYBWghYfC5CHG6ZSUaTTpMpxpFhdzMN123ao5wAM
	zVhD14lYuGOxgCAKr+/S/HZGZj8vrsr+A0vKAstQceZdkCUCWh9OJnWOsZa4RJCLP8nL
	PF0g==
X-Gm-Message-State: AKwxyteRFoSiCqycQ/yuQf4+BiWaox3lusJoDld4XYuQs3PHqFOapbF6
	k9pyqu08I080xW1zVW0PpHUcioHAnP1qOG5PL77AKQ==
X-Google-Smtp-Source: AH8x227aB50I1mwcYniwUl50mGNErl5mJ9WOs3yJLLxv6RJouGRxH+pCnCU/aKtjfV//NYJOMFHefnY18RRszJTmCK0=
X-Received: by 10.28.45.74 with SMTP id t71mr8390504wmt.90.1516911748408; Thu,
	25 Jan 2018 12:22:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.130.146 with HTTP; Thu, 25 Jan 2018 12:21:57 -0800 (PST)
In-Reply-To: <435939ad-64f1-a6cb-f55b-1dc1a5c83c69@gmail.com>
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
	<CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
	<CAPyrkgxm5DAU+2X7nwSpENv7534e1gDzS3uA4BHq2SX2po8Z9Q@mail.gmail.com>
	<CAPyrkgwLJGpY3_WioGifiisa0VEvTGjdBV-Jc6nRw+bJ1cGn8Q@mail.gmail.com>
	<CALw8SCVty32Ob50S8qrdxUUmm+jyG-KibHq7GV26K+yScPdLEg@mail.gmail.com>
	<CAK18fxF_mU3e9-aBEWbAW_ewce3kvOLCFXtExDK6rMJH=C2KWw@mail.gmail.com>
	<435939ad-64f1-a6cb-f55b-1dc1a5c83c69@gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 25 Jan 2018 20:21:57 +0000
Message-ID: <CAPyrkgyfUtotSdA-_YiHtrGpeLyzn2t9uvtg5z==K5YAtKxzwQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Thu, 25 Jan 2018 20:22:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 25, 2018 at 6:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On 12/21/17 7:15 AM, Andrei Gherzan wrote:
> > Nice. Good job.
> >
> > --
> > Andrei Gherzan
> >
> > On Mon, Dec 18, 2017 at 9:57 PM, Mirza Krak <mirza.krak@gmail.com
> > <mailto:mirza.krak@gmail.com>> wrote:
> >
> >     On Dec 18, 2017 20:50, "Paul Barker" <pbarker@toganlabs.com
> >     <mailto:pbarker@toganlabs.com>> wrote:
> >
> >         On Mon, Dec 11, 2017 at 12:20 PM, Paul Barker
> >         <pbarker@toganlabs.com <mailto:pbarker@toganlabs.com>> wrote:
> >         > On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak <mirza.krak@gmai=
l.com <mailto:mirza.krak@gmail.com>> wrote:
> >         >> 2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.co=
m <mailto:pbarker@toganlabs.com>>:
> >         >>> Hi all,
> >         >>>
> >         >>> As a quick announcement, the layer documentation for meta-r=
aspberrypi
> >         >>> is now available on Read the Docs:
> >         >>> http://meta-raspberrypi.readthedocs.io/en/latest/
> >         <http://meta-raspberrypi.readthedocs.io/en/latest/>
> >         >>>
> >
> >         >>
> >         >> One little thing though, the current "theme" used which I as=
sume is
> >         >> the default Sphinx theme is not optimal IMO.
> >         >>
> >
> >         >
> >         > Thanks for the feedback. The conf.py file we're using is just=
 what was
> >         > generated by sphinx-quickstart with minimal tweaks. It sets h=
tml_theme
> >         > which is obviously overriding the default for read the docs.
> >         >
> >         > I think I should be able to get the right behaviour by commen=
ting out
> >         > the html_theme setting completely. I'll give that a go and se=
e what
> >         > happens.
> >         >
> >
> >         That worked. Looks much better!
> >         http://meta-raspberrypi.readthedocs.io/en/latest/index.html
> >         <http://meta-raspberrypi.readthedocs.io/en/latest/index.html>
> >
> >
> >     Great job. Agree that it looks much better.
>
>
> what is that triplebyte thing? Can this be kept off
>

I think that's the ads on readthedocs. We can disable them if we pay
for a subscription, I'm going to look at funding options after FOSDEM.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

